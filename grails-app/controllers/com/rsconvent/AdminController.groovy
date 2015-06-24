package com.rsconvent

import com.rsconvent.comobjs.divisionCO
import com.rsconvent.comobjs.picCO
import org.apache.commons.lang.ObjectUtils

import javax.validation.constraints.Null

class AdminController {

    def index() {}
    def addClass(){

    }
    def addTeacher(){


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

    def viewTeachers(){
        List<Teacher> teacherlist =Teacher.list()
        [teachers : teacherlist]
    }
    def teacherDetails(){
        Teacher teacher =Teacher.load(params.long('id'))

    }

    def  profile() {

        if (user.userGroup == com.rsconvent.enums.Group.TEACHER){
            Teacher teacher = Teacher.get(params.long('id'))
            [user:teacher]
        }else if (user.userGroup == com.rsconvent.enums.Group.STUDENT){
                Student student = Student.get(params.long('id'))
                [user:student]
        }
        else{
            User user=User.get(params.long('id'))
            [user:user]
        }

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

           //session.user.clear()
            String path = getServletContext().getRealPath("images${File.separator}userPics")+File.separator+user.username
            co.pic.transferTo(new File(path))
            user.pic_path=path
            user.save(flush: true,failOnError: true)
           // session.user=user
            flash.message = "Pic changed"
            redirect(action: 'index')
        }
    }
//    def editClass(){
//        Division division=Division.get(params.long("id"))
//        [divi : division]
//    }
}