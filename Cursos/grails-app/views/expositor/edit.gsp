<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'expositor.label', default: 'Expositor')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#edit-expositor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a <g:link class="home" controller="usuario" action="indexAdmin">Principal</g:link></a></li>
                <li><g:link class="list" action="index">Lista de Expositor</g:link></li>
                <li><g:link class="create" action="create">Nuevo Expositor</g:link></li>
           
            </ul>
        </div>
        <div id="edit-expositor" class="content scaffold-edit" role="main">
            <h1>${this.expositor.nombre} ${this.expositor.apellido}</h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.expositor}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.expositor}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.expositor}" method="PUT" enctype="multipart/form-data">
                <g:hiddenField name="version" value="${this.expositor?.version}" />
                <fieldset class="form">
                    <f:all bean="expositor"/>
                </fieldset>
                <fieldset class="buttons">
                    <button type="submit" class="save btn btn-success">Editar Expositor</button>
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
