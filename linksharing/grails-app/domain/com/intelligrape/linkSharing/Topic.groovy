package com.intelligrape.linkSharing

class Topic {
   static belongsTo = [creator: User]
   String topicName
   User creator
   TopicType topicType
  static constraints = {
    }
}
