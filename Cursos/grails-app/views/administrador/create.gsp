<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'administrador.label', default: 'Administrador')}" />
        <title>CREAR ADMINISTRADOR</title>
    </head>
    <body>
        <a href="#create-administrador" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a <g:link class="home" controller="usuario" action="indexAdmin">Principal</g:link></a></li>
                <li><g:link class="list" action="index">Lista de Administradores</g:link></li>
            </ul>
        </div>
        <div id="create-administrador" class="content scaffold-create" role="main">
            <h1>NUEVO ADMINISTRADOR</h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.administrador}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.administrador}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.administrador}" method="POST">
                <fieldset class="form">
                    <f:all bean="administrador"/>
                </fieldset>
                <fieldset class="buttons">
                <!--
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                  -->  
                    <button type="submit" name="create" class="save btn btn-success">crear</button>

                </fieldset>
            </g:form>
        </div>
    </body>
</html>
