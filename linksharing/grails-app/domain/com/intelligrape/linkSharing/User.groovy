package com.intelligrape.linkSharing

class User {
  String name
  String password
  String confirm
  static transients = ['confirm']
  String email
  static hasMany = [subscriptions: Subscription,readableItems:ReadableItem]

  static constraints = {
          name(blank: false, unique: true)
          password(blank: false)
          email(email:true,blank:false,unique: true)

        confirm(validator:{var,obj->
         if(var != obj.password){
           return false
         }
        })
    }
}
