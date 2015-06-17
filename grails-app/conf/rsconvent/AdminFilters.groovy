package rsconvent

import com.rsconvent.enums.Group

class AdminFilters {

    def filters = {
        admin(controller:'admin', action:'*') {
            before = {
                if(!session.user||session.user.userGroup!=Group.ADMIN)
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
