package com.rsconvent

class Student extends User{
    static belongsTo = [guardian : Guardian]
    static hasOne = [division : Division]
    float percentage
    String motherName
    String fatherName
    static constraints = {
        fatherName(nullable: true)
        motherName(nullable: true)

    }
}
