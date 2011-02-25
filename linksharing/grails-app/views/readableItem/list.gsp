
<%@ page import="com.intelligrape.linkSharing.ReadableItem" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'readableItem.label', default: 'ReadableItem')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'readableItem.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="isRead" title="${message(code: 'readableItem.isRead.label', default: 'Is Read')}" />
                        
                            <th><g:message code="readableItem.resource.label" default="Resource" /></th>
                        
                            <th><g:message code="readableItem.user.label" default="User" /></th>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${readableItemInstanceList}" status="i" var="readableItemInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${readableItemInstance.id}">${fieldValue(bean: readableItemInstance, field: "id")}</g:link></td>
                        
                            <td><g:formatBoolean boolean="${readableItemInstance.isRead}" /></td>
                        
                            <td>${fieldValue(bean: readableItemInstance, field: "resource")}</td>
                        
                            <td>${fieldValue(bean: readableItemInstance, field: "user")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${readableItemInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
