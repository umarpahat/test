package com.intelligrape.linkSharing

class InviteMailService {

    static transactional = true

  def serviceMethod() {
    sendMail {
      to "umar_pahat@yahoo.co.in"
      subject "Hello umar LinkSharing"
      body 'How are you?'
    }
  }
}
