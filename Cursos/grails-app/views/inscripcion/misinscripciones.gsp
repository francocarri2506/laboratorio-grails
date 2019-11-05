<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'inscripcion.label', default: 'Inscripcion')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-inscripcion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        
        <div id="list-inscripcion" class="content scaffold-list" role="main">
            <h1>Mis cupones</h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${inscripcionList}" />

            <div class="pagination">
                <g:paginate total="${inscripcionCount ?: 0}" />
            </div>
        </div>
        
    </body>
</html>