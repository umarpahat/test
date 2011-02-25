
<%@ page import="com.intelligrape.linkSharing.Subscription" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'subscription.label', default: 'Subscription')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'subscription.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="seriousness" title="${message(code: 'subscription.seriousness.label', default: 'Seriousness')}" />
                        
                            <th><g:message code="subscription.topic.label" default="Topic" /></th>
                        
                            <th><g:message code="subscription.user.label" default="User" /></th>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${subscriptionInstanceList}" status="i" var="subscriptionInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${subscriptionInstance.id}">${fieldValue(bean: subscriptionInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: subscriptionInstance, field: "seriousness")}</td>
                        
                            <td>${fieldValue(bean: subscriptionInstance, field: "topic")}</td>
                        
                            <td>${fieldValue(bean: subscriptionInstance, field: "user.name")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${subscriptionInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
