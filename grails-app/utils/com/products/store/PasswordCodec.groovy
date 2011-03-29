package com.products.store

import java.security.MessageDigest
import sun.misc.BASE64Encoder

/**
 * Created by IntelliJ IDEA.
 * User: umar
 * Date: 25/2/11
 * Time: 6:34 PM
 * To change this template use File | Settings | File Templates.
 */
class PasswordCodec {
  static encode = { str ->
    MessageDigest md = MessageDigest.getInstance('SHA')
    md.update(str.getBytes('UTF-8'))
    return (new BASE64Encoder()).encode(md.digest())
  }
}
