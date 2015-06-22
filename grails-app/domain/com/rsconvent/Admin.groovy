package com.rsconvent

class Admin extends User{
    static hasMany = [resources : Resource]
    static constraints = {
    }
}
