<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'certificadoAsistencia.label', default: 'CertificadoAsistencia')}" />
        <title>JOGAF - Gestionar Certificados </title>
    </head>
    <body>
        <a href="#list-certificadoAsistencia" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a <g:link class="home" controller="usuario" action="indexAdmin">Principal</g:link></a></li>
                <li><g:link  action="create"><button type="button" name="create" class="create btn btn-success">Nuevo Certificado</button></g:link></li>
            </ul>
        </div>
        <div id="list-certificadoAsistencia" class="content scaffold-list" role="main">
            <h1>LISTA DE CERTIFICADOS</h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${certificadoAsistenciaList}" />

            <div class="pagination">
                <g:paginate total="${certificadoAsistenciaCount ?: 0}" />
            </div>
        </div>
    </body>
</html>