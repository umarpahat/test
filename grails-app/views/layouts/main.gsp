<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'common.css')}" />
        %{--<link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />--}%
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />
        <g:javascript lib="jquery"/>
        <script type='text/javascript' src='${resource(dir:'js',file:'jquery-1.4.3.min.js')}'></script>
        <script type='text/javascript' src='${resource(dir:'js',file:'common.js')}'></script>
        <script type='text/javascript' src='${resource(dir:'js',file:'jquery.validate.js')}'></script>
        <script type='text/javascript' src='${resource(dir:'js',file:'jquery.validate.pack.js')}'></script>
        <script type='text/javascript' src='${resource(dir:'js',file:'additional-methods.js')}'></script>
    </head>
    <body>
    <div id="container">
      <g:render template="/layouts/header" />
   <div id="mess"></div>
      <g:layoutBody />
      <g:render template="/layouts/footer"/>
      </div>
    </body>
</html>