package com.intelligrape.linkSharing

class Subscription {
    static belongsTo = [topic:Topic]
    User user
    Topic topic
    Seriousness seriousness
    static constraints = {
    }
}
