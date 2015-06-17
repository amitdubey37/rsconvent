package rsconvent

import com.rsconvent.User
import com.rsconvent.enums.Group
import grails.transaction.Transactional

@Transactional
class UsermailService {

    def approvalRequest(User user) {
        sendMail {
            to "${User.findByUserGroup(Group.ADMIN).email}"
            subject "Request pending"
            html "<a href=\"http://localhost:8080/rsconvent/admin/approval\">${user.firstName} ${user.lastName}\nGroup: ${user.userGroup}</a>"

        }

    }
    def userApprovalConfirm(User user) {
        sendMail {
            to "${user.email}"
            subject "Request approved"
            body "Your request has been approved"
        }
    }
    def announcement(User user, String bo)
    {
        sendMail {
            to "${user.email}"
            subject "Announcement from RS Convent"
            body "${bo}"
        }
    }
}