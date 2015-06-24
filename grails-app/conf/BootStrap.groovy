import com.rsconvent.Admin
import com.rsconvent.Division
import com.rsconvent.enums.Group

class BootStrap {

    def init = { servletContext ->
        if(Admin.list().size()<1){
            new Admin(firstName: 'amit',lastName: 'dubey',address: 'New Delhi', userGroup: Group.ADMIN,email: 'digitron064@gmail.com',phone: 9654385171, username: '123456',password: '12345678', pic_path: "${System.getProperty("user.home")}/rsconvent/web-app/images/userPics/123456",isActive: 'Active',gender: 'male').save(flush: true,failOnError: true)
        }
//        if(Division.list().size()<1){
//            new Division(name: 'unassigned' ,section: 'A',maxStudents: 10000).save(flush: true,failOnError: true)
//        }
    }
    def destroy = {
    }
}
