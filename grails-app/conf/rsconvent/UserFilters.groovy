package rsconvent

class UserFilters {

    def filters = {
        userhome(controller: 'home', action: 'userHome') {
            before = {
                if(!session.user)
                    redirect(controller: 'user',action: 'index')
                return 0
            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}
