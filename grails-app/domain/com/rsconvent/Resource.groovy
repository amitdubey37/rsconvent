package com.rsconvent

abstract class Resource {

    Date dateCreated
    User uploadedBy
    String name
    String description
    static constraints = {
        description(nullable: true)
        name(blank: false)
    }
}
