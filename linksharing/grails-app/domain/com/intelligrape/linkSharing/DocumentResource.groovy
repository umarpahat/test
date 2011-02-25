package com.intelligrape.linkSharing

class DocumentResource extends Resource{

       String filePath
       String absoluteFilePath
       static transients = ['absoluteFilePath']

    static constraints = {
    }
}
