package com.rsconvent

import com.rsconvent.comobjs.divisionCO
import com.rsconvent.comobjs.picCO

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
    def viewClasses(){
        List<Division> classlist=Division.list()
        [divisions : classlist]
    }
    def classDetails(){
        Division division = Division.load(params.long('id'))
        [division : division]
    }
    def changePic(picCO co){
        co.validate()
        if(co.hasErrors())
        {
            flash.message = "Upload correct file"
            redirect(action: 'index')
        }
        else
        {
            User user = session.user
            String path = getServletContext().getRealPath("images${File.separator}userPics")+File.separator+user.username
            co.pic.transferTo(new File(path))
            flash.message = "Pic changed"
            redirect(action: 'index')
        }
    }
//    def editClass(){
//        Division division=Division.get(params.long("id"))
//        [divi : division]
//    }
}