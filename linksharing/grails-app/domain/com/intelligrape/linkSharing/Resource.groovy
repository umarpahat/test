package com.intelligrape.linkSharing

class Resource {
  static belongsTo = [topic:Topic]
  User owner
  String name
  String summary
  static constraints = {
      owner(blank: false,)
      name(blank: false)
      summary(blank:false)

    }
}
