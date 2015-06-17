package com.rsconvent
import com.rsconvent.comob.UserCO
import com.rsconvent.enums.Group

class UserController {
    def usermailService
    def index() {}
    def auth(){
        User user=User.findByUsernameAndPassword(params.username,params.password)
        if(user!=null)
        {
            if(user.approval!=null)
            {
                session.user=user
                redirect(controller: 'home',action: 'index')
            }
            else
            {
                render("Waiting for approval")
            }
        }
        else
        {
            redirect(action: 'register')
        }
    }
    def register(){

    }
    def submission(UserCO userCO){
        if(userCO.hasErrors())
        {
            flash.message="Registration Failed"
            redirect(action: 'register')
        }
        else
        {
            String path = System.getProperty('user.home')+File.separator+'profile_pics'+File.separator+params.username
            userCO.pic.transferTo(new File(path))
            Group group
            if(params.userGroup=="Student")
                group=Group.STUDENT
            else if(params.userGroup=="Teacher")
                group=Group.TEACHER
            else if(params.userGroup=="Guardian")
                group=Group.GAURDIAN
            User user =new User()
            bindData(user,userCO.properties,[exclude:['cnf_password','pic','userGroup']])
            user.userGroup=group
            user.pic=path
            user.save(flush: true,failOnError: true)
            usermailService.approvalRequest(user)
            render("Waiting for approval")
        }
    }

}
