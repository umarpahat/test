

<%@ page import="com.intelligrape.linkSharing.DocumentResource" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'documentResource.label', default: 'DocumentResource')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${documentResourceInstance}">
            <div class="errors">
                <g:renderErrors bean="${documentResourceInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="owner"><g:message code="documentResource.owner.label" default="Owner" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: documentResourceInstance, field: 'owner', 'errors')}">
                                    <g:select name="owner.id" from="${com.intelligrape.linkSharing.User.list()}" optionKey="id" value="${documentResourceInstance?.owner?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="documentResource.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: documentResourceInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${documentResourceInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="summary"><g:message code="documentResource.summary.label" default="Summary" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: documentResourceInstance, field: 'summary', 'errors')}">
                                    <g:textField name="summary" value="${documentResourceInstance?.summary}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="filePath"><g:message code="documentResource.filePath.label" default="File Path" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: documentResourceInstance, field: 'filePath', 'errors')}">
                                    <g:textField name="filePath" value="${documentResourceInstance?.filePath}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="topic"><g:message code="documentResource.topic.label" default="Topic" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: documentResourceInstance, field: 'topic', 'errors')}">
                                    <g:select name="topic.id" from="${com.intelligrape.linkSharing.Topic.list()}" optionKey="id" value="${documentResourceInstance?.topic?.id}"  />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
