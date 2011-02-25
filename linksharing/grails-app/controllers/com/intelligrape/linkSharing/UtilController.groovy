package com.intelligrape.linkSharing

class UtilController {
    def index = { }
  def createUserAddTopicAndSubscribe={
    User umar = new User(name:'umar',password:'igdefault',confirm:'igdefault',email:'umar@intelligrape.com').save()
    User imroz = new User(name:'imroz',password:'igdefault',confirm:'igdefault',email:'imroz@gmail.com').save()
//    println " What is user name : ${umar.validate()}.  ${umar}, ${imroz}"

    Topic topic = new Topic(topicName:'topic test1',creator:User.findByName("umar"),topicType:TopicType.PUBLIC).save(failOnError:true)
    Topic topic1 = new Topic(topicName:'topic test2',creator:User.findByName("imroz"),topicType:TopicType.PRIVATE).save(failOnError:true)
  }
  def linkResource={
  LinkResource linkResource = new LinkResource(owner:User.findById(1),topic:Topic.findById(1),name:'topic 1', summary:' testing ', url :'http://www.google.co.in').save(failOnError:true)
    }

   def documentResource={

    DocumentResource documentResource = new DocumentResource(owner:User.findById(1),topic:Topic.findById(1),name:'topic 1', summary:' testing ', filePath:'http://www.localhost.com').save(failOnError:true)
  }
 def subscription={
   Subscription subscriptions = new Subscription(user:User.findById(1),topic:Topic.findById(1),seriousness:Seriousness.VERYSERIOUS).save(failOnError:true)
 }
  def readableItem={
    println "--------------------"+Resource.findByName('topic 1')
    ReadableItem readableItem = new ReadableItem(user:User.findById(1),resource:Resource.findByName('topic 1')).save(failOnError:true)

  }
}
