

<%@ page import="com.intelligrape.linkSharing.Topic" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'topic.label', default: 'Topic')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${topicInstance}">
            <div class="errors">
                <g:renderErrors bean="${topicInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${topicInstance?.id}" />
                <g:hiddenField name="version" value="${topicInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="creator"><g:message code="topic.creator.label" default="Creator" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: topicInstance, field: 'creator', 'errors')}">
                                    <g:select name="creator.id" from="${com.intelligrape.linkSharing.User.list()}" optionKey="id" value="${topicInstance?.creator?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="topicName"><g:message code="topic.topicName.label" default="Topic Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: topicInstance, field: 'topicName', 'errors')}">
                                    <g:textField name="topicName" value="${topicInstance?.topicName}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="topicType"><g:message code="topic.topicType.label" default="Topic Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: topicInstance, field: 'topicType', 'errors')}">
                                    <g:select name="topicType" from="${com.intelligrape.linkSharing.TopicType?.values()}" keys="${com.intelligrape.linkSharing.TopicType?.values()*.name()}" value="${topicInstance?.topicType?.name()}"  />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
