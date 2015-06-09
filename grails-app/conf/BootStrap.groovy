import com.rsconvent.User
import com.rsconvent.enums.Group

class BootStrap {

    def init = { servletContext ->
       /* if(User.list().size()<1){
            new User(firstName: 'amit',lastName: 'dubey',address: 'New Delhi', group: Group.ADMIN,email: 'dubeyamitdubey@gmail.com',phone: '9654385171', username: '123456',password: '12345678').save(flush: true,failOnError: true)
        }*/
    }
    def destroy = {
    }
}
