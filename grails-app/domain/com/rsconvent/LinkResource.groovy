package com.rsconvent

class LinkResource extends Resource{

    String linkUrl
    static constraints = {
        linkUrl(url: true, blank: false)
    }
}
