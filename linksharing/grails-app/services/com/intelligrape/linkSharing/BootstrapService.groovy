package com.intelligrape.linkSharing

class BootstrapService {

  static transactional = true

  def createDummyData() {

    if(!User.findByEmail("admin@intelligrape.com")){
      User admin = new User(name:'admin',password:'igdefault',confirm:'igdefault',email:'admin@intelligrape.com').save()
    }
    if(!User.findByEmail("umar@intelligrape.com")){
      User umar = new User(name:'umar',password:'igdefault',confirm:'igdefault',email:'umar@intelligrape.com').save()
    }
    if(!User.findByEmail("imroz@gmail.com")){
      User imroz = new User(name:'imroz',password:'igdefault',confirm:'igdefault',email:'imroz@gmail.com').save()
    }
    Topic topic = new Topic(topicName:'topic test1',creator:User.findByName("umar"),topicType:TopicType.PUBLIC).save(failOnError:true)
    Topic topic1 = new Topic(topicName:'topic test2',creator:User.findByName("imroz"),topicType:TopicType.PRIVATE).save(failOnError:true)
    LinkResource linkResource = new LinkResource(owner:User.findById(1),topic:Topic.findById(1),name:'topic 1', summary:' testing ', url :'http://www.google.co.in').save(failOnError:true)
    DocumentResource documentResource = new DocumentResource(owner:User.findById(1),topic:Topic.findById(1),name:'topic 1', summary:' testing ', filePath:'http://www.localhost.com').save(failOnError:true)
    Subscription subscriptions = new Subscription(user:User.findById(1),topic:Topic.findById(1),seriousness:Seriousness.VERYSERIOUS).save(failOnError:true)
    println "--------------------"+Resource.findByName('topic 1')
    ReadableItem readableItem = new ReadableItem(user:User.findById(1),resource:Resource.findByName('topic 1')).save(failOnError:true)


  }

}
