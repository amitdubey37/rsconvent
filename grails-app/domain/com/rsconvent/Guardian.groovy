package com.rsconvent

class Guardian extends User{
    static hasMany = [students : Student]
    static constraints = {
    }
}
