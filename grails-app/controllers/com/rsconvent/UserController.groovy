package com.rsconvent

class UserController {

    def index() {}
    def profile() {
        def id=params.long('id')
        if(id)
        {
            User user=User.get(id)
            redirect(action: 'displayprofile')
        }
        else{

        }
    }
}
