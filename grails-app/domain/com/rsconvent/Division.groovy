package com.rsconvent

class Division {
    static hasMany = [students : Student, teachers : Teacher]
    int maxStudents
    int currentStudents
    String name
    String section
    Teacher classTeacher
    Student topPerformer
    static constraints = {
        classTeacher(nullable: true)
        topPerformer(nullable: true)
    }
}