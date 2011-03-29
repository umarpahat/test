package com.products.store

class HomeController {

    def index = {
       String uuid = UUID.randomUUID().toString();
              println("uuid = " + uuid);
//    redirect(action:'index')

    }
}
