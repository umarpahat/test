package com.products.store

import org.hibernate.validator.Valid

class User {
  String firstName
  String lastName
  String email
  String password
  String confirm
  static transients = ['confirm']
  String  phone
  String address
  String city
  String country
  String state
  static constraints = {
          firstName(blank: false, unique: true)
          lastName(blank: false)
          password(blank: false)
          phone(blank: false,)
          address(blank: false)
          city(blank: false)
          country(blank: false)
          state(blank: false)
          email(email:true,blank:false,unique: true)


        confirm(validator:{var,obj->
          if(var !=obj.password){
            return false
          }
        })

    }
}
