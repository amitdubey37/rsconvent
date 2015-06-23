package rsconvent

import com.rsconvent.enums.Group

class AdminFilters {

    def filters = {
        all(controller:'admin', action:'*') {
            before = {
                if(!session.user || session.user.userGroup!=Group.ADMIN){
                    redirect(controller: 'home',action: 'login')
                }
                return 0;

            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}
