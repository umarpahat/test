package com.intelligrape.linkSharing

class ReadableItem {

    boolean isRead = false
    Resource resource
    static belongsTo = [user: User]

    static constraints = {
    }
}
