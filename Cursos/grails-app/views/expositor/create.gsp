<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'expositor.label', default: 'Expositor')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-expositor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a <g:link class="home" controller="usuario" action="indexAdmin">Principal</g:link></a></li>
                <li><g:link class="list" action="index">Lista de Expositores</g:link></li>

            </ul>
        </div>
        <div id="create-expositor" class="content scaffold-create" role="main">
            <h1>NUEVO EXPOSITOR</h1>
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
            <g:form resource="${this.expositor}" method="POST" enctype="multipart/form-data">
                <fieldset class="form">
                    <f:all bean="expositor"/>
                </fieldset>
                <fieldset class="buttons">
                <button type="submit" name="create" class="save btn btn-success">crear</button>
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
