package com.intelligrape.linkSharing

class LinkResource extends Resource{
     String  url
    static constraints = {
         url(url: true)
    }
}
