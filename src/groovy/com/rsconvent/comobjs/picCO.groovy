package com.rsconvent.comobjs

import grails.validation.Validateable
import org.springframework.web.multipart.MultipartFile

/**
 * Created by varun on 24/6/15.
 */
@Validateable
class picCO {
    MultipartFile pic
    static constraints={
        pic (nullable: false,blank: false)
    }
}
