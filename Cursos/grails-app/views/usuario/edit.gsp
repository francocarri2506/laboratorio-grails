<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#edit-usuario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                    <li><g:link class="list" action="index">Lista de Usuarios</g:link></li>
                    <li><g:link class="create" action="create">Nuevo Usuario</g:link></li>
            </ul>
        </div>
        <div id="edit-usuario" class="content scaffold-edit" role="main">
            <h1>${this.usuario.nombre} ${this.usuario.apellido}</h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.usuario}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.usuario}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.usuario}" method="PUT">
                <g:hiddenField name="version" value="${this.usuario?.version}" />
                <fieldset class="form">
                    <f:all bean="usuario"/>
                </fieldset>
                <fieldset class="buttons">
                    <button type="submit" class="save btn btn-success">Editar Usuario</button>
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
