<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'certificadoAsistencia.label', default: 'CertificadoAsistencia')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-certificadoAsistencia" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                 <li><a <g:link class="home" controller="usuario" action="indexAdmin">Principal</g:link></a></li>
                
                <li><g:link action="index"><button type="button" class="list btn btn-secondary">Lista de Certificados </button></g:link></li>
                <li><g:link action="create"><button type="button" class="create  btn btn-success">Nuevo Certificado</button></g:link></li>
            </ul>
        </div>
        <div id="show-certificadoAsistencia" class="content scaffold-show" role="main">
            <h1></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:display bean="certificadoAsistencia" />
            <g:form resource="${this.certificadoAsistencia}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.certificadoAsistencia}"><button type="button" class="edit btn btn-warning">Editar Certificado</button></g:link>
                    <g:link class="list btn btn-success" action="certificadoPDF">Comprobante</g:link>
                    <button class="delete btn btn-danger" type="submit" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Esta seguro que desea eliminar Certificado?')}');">Eliminar Autoridad</button>
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
