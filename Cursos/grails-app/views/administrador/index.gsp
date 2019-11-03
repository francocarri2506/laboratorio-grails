<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'administrador.label', default: 'Administrador')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-administrador" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a <g:link class="home" controller="usuario" action="indexAdmin">Principal</g:link></a></li>
                <li><g:link  action="create"><button type="button" name="create" class="create btn btn-success">Nuevo Administrador</button></g:link></li>

            </ul>
        </div>
        <div id="list-administrador" class="content scaffold-list" role="main">
            <h1>Lista de Administradores</h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${administradorList}" />

            <div class="pagination">
                <g:paginate total="${administradorCount ?: 0}" />
            </div>
        </div>
    </body>
</html>