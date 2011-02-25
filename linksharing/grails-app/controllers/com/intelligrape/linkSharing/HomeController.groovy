package com.intelligrape.linkSharing

class HomeController {
  def inviteMailService

    def index = { }
    def login = {
        User user =User.findByEmailAndPassword(params.email,params.password)
        if(user){
          session.user=user
          redirect(controller: 'user', action:'show')
        }
        else{
          flash.message="User not found"
          redirect(action:'index')
        }
    }

  def test = {
     inviteMailService.serviceMethod();
  }
   def logout ={
     session.user= ''
      redirect(action:'index')

   }
}
