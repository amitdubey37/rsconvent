package com.rsconvent.comob

import com.rsconvent.User
import com.rsconvent.enums.Group
import grails.validation.Validateable
import org.apache.tomcat.jni.Multicast
import org.springframework.web.multipart.MultipartFile

/**
 * Created by varun on 15/6/15.
 */
@Validateable
class UserCO {
    String firstName
    String lastName
    String username
    String password
    String cnf_password
    String email
    String phone
    String address
    String userGroup
    MultipartFile pic
    String approval

    static constraints = {
        importFrom User
        pic nullable: true
        cnf_password validator: {val,obj->
            if(val==obj.password) return true
            else return false
        }
    }
}
