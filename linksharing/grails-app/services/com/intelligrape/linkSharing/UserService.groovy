package com.intelligrape.linkSharing

class UserService {

    static transactional = true

    def myMethod() {
      User umar1 = new User(name:'umar1',password:'igdefault',confirm:'igdefault',email:'umar1@intelligrape.com')
      umar1.save()


    }

  User findUser(String email){
    User user = User.findByEmail(email)
    return user
  }
}
