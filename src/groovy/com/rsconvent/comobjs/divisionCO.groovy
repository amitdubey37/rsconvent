package com.rsconvent.comobjs

import com.rsconvent.Division
import com.rsconvent.Student
import com.rsconvent.Teacher
import grails.validation.Validateable

/**
 * Created by varun on 23/6/15.
 */
@Validateable
class divisionCO {
    int maxStudents
    String name
    String section
    static constraints={
        importFrom Division
    }

}
