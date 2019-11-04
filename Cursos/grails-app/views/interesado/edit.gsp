<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'interesado.label', default: 'Interesado')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#edit-interesado" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index">Lista de Interesados</g:link></li>
                <li><g:link class="create" action="create">Nuevo Interesado</g:link></li>
            </ul>
        </div>
        <div id="edit-interesado" class="content scaffold-edit" role="main">
            <h1>${this.interesado.nombre} ${this.interesado.apellido}</h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.interesado}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.interesado}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.interesado}" method="PUT">
                <g:hiddenField name="version" value="${this.interesado?.version}" />
                <fieldset class="form">
                    <f:all bean="interesado"/>
                </fieldset>
                <fieldset class="buttons">
                    <button type="submit" class="save btn btn-success">Editar Interesado</button>
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
