import com.rsconvent.Admin
import com.rsconvent.enums.Group

class BootStrap {

    def init = { servletContext ->
        if(Admin.list().size()<1){
            new Admin(firstName: 'amit',lastName: 'dubey',address: 'New Delhi', group: Group.ADMIN,email: 'digitron064@gmail.com',phone: 9654385171, username: '123456',password: '12345678', pic_path: "home/varun/rsconvent/web-app/images/index.jpg",isActive: 'Active',gender: 'male').save(flush: true,failOnError: true)
        }
    }
    def destroy = {
    }
}
