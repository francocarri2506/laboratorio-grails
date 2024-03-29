<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'certificadoAsistencia.label', default: 'CertificadoAsistencia')}" />
        <title>Editar Certificado</title>
    </head>
    <body>
        <a href="#edit-certificadoAsistencia" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a><g:link class="home" controller="usuario" action="indexAdmin">Principal</g:link></a></li>
                <li><g:link class="list" action="index">Lista de Certificados</g:link></li>
                <li><g:link class="create" action="create">Nuevo Certificado</g:link></li>
            </ul>
        </div>
        <div id="edit-certificadoAsistencia" class="content scaffold-edit" role="main">
             <h1>Editar Certificado</h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.certificadoAsistencia}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.certificadoAsistencia}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.certificadoAsistencia}" method="PUT">
                <g:hiddenField name="version" value="${this.certificadoAsistencia?.version}" />
                <fieldset class="form">
                    <f:all bean="certificadoAsistencia"/>
                </fieldset>
                <fieldset class="buttons">
                    <button type="submit" class="save btn btn-success">Editar Certificado</button>                
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
