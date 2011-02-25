

<%@ page import="com.intelligrape.linkSharing.Subscription" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'subscription.label', default: 'Subscription')}" />
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
            <g:hasErrors bean="${subscriptionInstance}">
            <div class="errors">
                <g:renderErrors bean="${subscriptionInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="seriousness"><g:message code="subscription.seriousness.label" default="Seriousness" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: subscriptionInstance, field: 'seriousness', 'errors')}">
                                    <g:select name="seriousness" from="${com.intelligrape.linkSharing.Seriousness?.values()}" keys="${com.intelligrape.linkSharing.Seriousness?.values()*.name()}" value="${subscriptionInstance?.seriousness?.name()}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="topic"><g:message code="subscription.topic.label" default="Topic" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: subscriptionInstance, field: 'topic', 'errors')}">
                                    <g:select name="topic.id" from="${com.intelligrape.linkSharing.Topic.list()}" optionKey="id" value="${subscriptionInstance?.topic?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="user"><g:message code="subscription.user.label" default="User" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: subscriptionInstance, field: 'user', 'errors')}">
                                    <g:select name="user.id" from="${com.intelligrape.linkSharing.User.list()}" optionKey="id" value="${subscriptionInstance?.user?.id}"  />
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
