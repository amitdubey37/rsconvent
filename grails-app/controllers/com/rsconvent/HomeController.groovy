package com.rsconvent

import com.rsconvent.enums.Group

class HomeController {

    def index() { }
    def showContactPage(){
        render( view: 'contact')
    }
    def login() {}
    def auth() {
        User user=User.findByUsernameAndPassword(params.username,params.password)
        if(user!=null)
        {
            if(user.isActive)
            {
                session.user=user
                if(user.userGroup==Group.ADMIN)
                    redirect(controller: 'admin',action: 'index')
                else
                    redirect(controller: 'user',action: 'index')
            }
            else
            {
                flash.message="No longer an Active User"
                redirect(action: 'login')
            }
        }
        else
        {
            flash.message = "Not a registered User"
            redirect(action: 'login')
        }
    }
    def logout()
    {
        session.invalidate()
        flash.message="Succesfully Logged Out"
        redirect(action: 'login')
    }
}
