package com.rsconvent

import com.rsconvent.enums.Group

class User {
    String firstName
    String lastName
    String username
    String password
    String email
    String phone
    String address
    Group userGroup

    Date dateCreated
    Date lastUpdated

    static constraints = {
        email(blank: false, email: true)
        firstName(blank: false)
        lastName(blank: false)
        username(blank: false, size: 5..20)
        password(blank: false)
        address(blank: false)
    }
}