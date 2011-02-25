package com.intelligrape

class TagTagLib {
  static namespace = "myimg"
      def myimg ={ attrs ->
        String name = attrs['name']
        out << "<img src='${resource(dir:'images', file:name)} />"
      }
}
