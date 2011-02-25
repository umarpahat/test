<html>
<head>
  <title><g:layoutTitle default="Grails" /></title>
  <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
  <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
  <g:layoutHead />
  <g:javascript library="application" />
</head>
<body>
<div id="spinner" class="spinner" style="display:none;">
  <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
</div>
<div id="grailsLogo"><a href="${resource('/')}"><img src="${resource(dir:'images',file:'grails_logo.png')}" alt="Grails" border="0" /></a> <g:if test="${session?.user}">
  <div style="text-align:right ; float:right;">Welcome :  ${session.user.name}  | <g:link controller="home" action="logout"  >Logout</g:link></div>
</g:if>
</div><div class="nav">
  <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
  <span class="menuButton"><g:link class="list" controller="user" action="list"><g:message code="engine.type.label"  default="User" /></g:link></span>
  <span class="menuButton"><g:link class="list" controller="topic" action="list"><g:message code="engine.type.label" default="Topic" /></g:link></span>
  <span class="menuButton"><g:link class="list" controller="resource" action="list"><g:message code="engine.type.label" default="Resource" /></g:link></span>
  <span class="menuButton"><g:link class="list" controller="subscription" action="list"><g:message code="engine.type.label" default="Subscription" /></g:link></span>
  <span class="menuButton"><g:link class="list" controller="readableItem" action="list"><g:message code="engine.type.label" default="Readable Item" /></g:link></span>
</div>
<g:layoutBody />
</body>
</html>