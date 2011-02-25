package com.intelligrape.linkSharing

import grails.test.*

class UserServiceTests extends GrailsUnitTestCase {
    protected void setUp() {
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testSomething() {
      mockDomain(User)
      UserService userService = new UserService()
      userService.myMethod()
      assertEquals 1, User.count()


    }

  void testFindUser(){
    mockDomain(User)
    String email = 'umar4@intelligrape.com'
    def user = new User(name:'umar4',password:'igdefault',confirm:'igdefault',email:email)
     user.save()
    def userService = new UserService()
    User userFromService= userService.findUser(email)
    assertEquals email, userFromService.email



  }
}
