package com.rsconvent

class Teacher extends User{
    static hasMany = [resources : Resource,division : Division]
    static belongsTo = Division
    static constraints = {
    }
}
