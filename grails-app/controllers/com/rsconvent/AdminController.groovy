package com.rsconvent

import com.rsconvent.comobjs.divisionCO

class AdminController {

    def index() {}
    def addClass(){

    }
    def updateClass(divisionCO divCO ){
        if(divCO.hasErrors())
        {
            println(divCO.errors)
            flash.message="Please check the entries again"
            redirect(action: 'addClass')
        }
        else{
            Division division=new Division()
            bindData(division,divCO.properties)
            division.save(flush: true,failOnError: true)
            flash.message="Class ${division.name} ${division.section} successfully added"
            redirect(action: 'addClass')
        }

    }
}