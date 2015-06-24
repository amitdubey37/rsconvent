package com.rsconvent

import com.rsconvent.enums.Group

abstract class User {
    static hasMany = [receivedMessages : Message]
    String firstName
    String lastName
    String username
    String password
    String email
    long phone
    String address
    Group userGroup
    String pic_path
    String isActive
    String gender
    Date dob
    Date dateCreated
    Date lastUpdated


    static constraints = {
        dob(nullable: true)
        email(blank: false, email: true)
        firstName(blank: false )
        lastName(blank: false , nullable: true)
        username(unique: true,blank: false, size: 5..20)
        password(blank: false)
        address(blank: false)
        isActive(nullable: true)
        phone(size: 10)
    }

}