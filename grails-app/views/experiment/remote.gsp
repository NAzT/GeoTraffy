
<%@ page import="com.nazt.LexToDict" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'lexToDict.label', default: 'LexToDict')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir: '')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${lexToDictInstance}">
            <div class="errors">
                <g:renderErrors bean="${lexToDictInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="getRemoteFile" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="url"><g:message code="lexToDict.url.label" default="Experiment Name	" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: lexToDictInstance, field: 'name', 'errors')}">
                                    <g:textField name="experimentName" value="${lexToDictInstance?.experimentName}" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="url"><g:message code="lexToDict.url.label" default="Url" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: lexToDictInstance, field: 'vocaburary', 'errors')}">
                                    <g:textField name="url" value="${lexToDictInstance?.url}" />
                                </td>
                            </tr>
                            <tr>
                            	
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
