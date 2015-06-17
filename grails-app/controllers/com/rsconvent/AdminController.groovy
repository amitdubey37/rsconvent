package com.rsconvent

import com.rsconvent.enums.Group

class AdminController {
    def usermailService
    def index() {}
    def approval(){
        List<User> userList = User.list()
        [users : userList ]
    }
    def userVer(){
        User user=User.load(params.long("id"))
        user.approval="${user.lastUpdated}"
        user.save(flush: true,failOnError: true)
        usermailService.userApprovalConfirm(user)
        redirect(action:'approval')
    }
    def userDel(){
        User user=User.load(params.long("id"))
        user.delete()
        redirect(action:'approval')

    }
    def announce(){

    }
    def sender(){
        String bo = params.Message
        String userGroup= params.userGroup
        List<User> userList = User.list()
        if(userGroup!= "All")
        {
            userList.each {
                if(it.userGroup.getDisplayName()==userGroup)
                {
                    usermailService.announcement(it,bo)
                }
            }
        }
        else
        {
            userList.each {
                if(it.userGroup!= Group.ADMIN)
                {
                    usermailService.announcement(it,bo)
                }
            }
        }
        redirect(action: 'index')
    }
}
