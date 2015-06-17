package com.rsconvent

class HomeController {

    def index() {

    }
    def showContactPage(){
        render( view: 'contact')
    }
    def userHome() {

    }
    def logout(){
        session.invalidate()
        redirect(action: 'index')
    }
    def dispPic(){
        User user = User.get(params.long('id'))
        def img = new File(user.pic).bytes
        response.contentLength = img.length
        response.contentType = "image/png"
        response.outputStream<<img
        response.outputStream.flush()
    }
}
