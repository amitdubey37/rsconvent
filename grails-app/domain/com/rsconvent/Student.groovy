package com.rsconvent

class Student extends User{
    static belongsTo = [guardian : Guardian]
    static hasOne = [division : Division]
    float percentage
    static constraints = {

    }
}
