package com.rsconvent

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
                redirect(action: 'index')
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
}
