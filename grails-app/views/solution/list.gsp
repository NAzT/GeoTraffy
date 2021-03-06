
<%@ page import="com.nazt.Solution" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'solution.label', default: 'Solution')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir: '')}">Home</a></span>
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'solution.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="word" title="${message(code: 'solution.word.label', default: 'Word')}" />
                        
                            <g:sortableColumn property="found" title="${message(code: 'solution.found.label', default: 'Found')}" />
                        
                            <th><g:message code="solution.experiment.label" default="Experiment" /></th>
                   	    
                            <th><g:message code="solution.data.label" default="Data" /></th>
                   	    
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${solutionInstanceList}" status="i" var="solutionInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${solutionInstance.id}">${fieldValue(bean: solutionInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: solutionInstance, field: "word")}</td>
                        
                            <td><g:formatBoolean boolean="${solutionInstance.found}" /></td>
                        
                            <td>${fieldValue(bean: solutionInstance, field: "experiment")}</td>
                        
                            <td>${fieldValue(bean: solutionInstance, field: "data")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${solutionInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
