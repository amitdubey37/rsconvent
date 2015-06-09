package com.rsconvent.enums

/**
 * Created by amit on 5/6/15.
 */
enum Group {
    ADMIN('Admin'), STUDENT("Student"), GAURDIAN("Garudian"), TEACHER("Teacher")
    String displayName
    Group(String displayName){
        this.displayName = displayName
    }
}