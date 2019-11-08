<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'autoridadCertificante.label', default: 'AutoridadCertificante')}" />
        <title> JOGAF - GESTIONAR AUTORIDAD CERTIFICANTE</title>
    </head>
    <body>
        <a href="#list-autoridadCertificante" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
           <ul>
                <li><a <g:link class="home" controller="usuario" action="indexAdmin">Principal</g:link></a></li>
                <li><g:link  action="create"><button type="button" name="create" class="create btn btn-success">Nueva Autoridad Certificante</button></g:link></li>

            </ul>
        </div>
        <div id="list-autoridadCertificante" class="content scaffold-list" role="main">
            <h1>LISTA DE AUTORIDADES CERTIFICANTES</h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${autoridadCertificanteList}" />

            <div class="pagination">
                <g:paginate total="${autoridadCertificanteCount ?: 0}" />
            </div>
        </div>
    </body>
</html>