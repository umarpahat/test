package com.products.store
class LoginController {
  def signIn = {
    if (session.user) {
      redirect(controller: 'home', action: 'index')
    } else {
      if (request.get) {
      }
      else {
        User user = User.findByEmailAndPassword(params.email, params.password.encodeAsPassword())
        println params
        println user
        if (user) {
          session.user = user
          redirect(controller: 'home', action: 'index')
          flash.message = "You are Succesfully Login"
        }
        else {
          flash.message = "Invalid User Name and Password"
          redirect(action: 'signIn')
        }
      }
    }
  }
  def logout = {
    session.user = ''
    flash.message = "Succefully Log out"
    redirect(action: 'signIn')
  }
  def forgotPassword = {
    if (session.user) {
      redirect(controller: 'home', action: 'index')
    } else {
      if (params.email) {
        User user = User.findByEmail(params.email)
        println params
        if (user) {
          sendMail {
            to user.email
            subject message(code: "LoginController.mail.forgot.subject")
            body "check Your email"
          }
          flash.message = "Your password reset email was sent  - check Your email "
        }
        else {
          flash.message = "User Not found"

        }
      }
    }
  }
}
