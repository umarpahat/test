
<%@ page import="com.intelligrape.linkSharing.DocumentResource" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'documentResource.label', default: 'DocumentResource')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'documentResource.id.label', default: 'Id')}" />
                        
                            <th><g:message code="documentResource.owner.label" default="Owner" /></th>
                        
                            <g:sortableColumn property="name" title="${message(code: 'documentResource.name.label', default: 'Name')}" />
                        
                            <g:sortableColumn property="summary" title="${message(code: 'documentResource.summary.label', default: 'Summary')}" />
                        
                            <g:sortableColumn property="filePath" title="${message(code: 'documentResource.filePath.label', default: 'File Path')}" />
                        
                            <th><g:message code="documentResource.topic.label" default="Topic" /></th>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${documentResourceInstanceList}" status="i" var="documentResourceInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${documentResourceInstance.id}">${fieldValue(bean: documentResourceInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: documentResourceInstance, field: "owner")}</td>
                        
                            <td>${fieldValue(bean: documentResourceInstance, field: "name")}</td>
                        
                            <td>${fieldValue(bean: documentResourceInstance, field: "summary")}</td>
                        
                            <td>${fieldValue(bean: documentResourceInstance, field: "filePath")}</td>
                        
                            <td>${fieldValue(bean: documentResourceInstance, field: "topic")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${documentResourceInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
