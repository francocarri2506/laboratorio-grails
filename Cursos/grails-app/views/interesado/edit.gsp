<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'interesado.label', default: 'Interesado')}" />
        <title>JOGAF - EDITAR - ${this.interesado.nombre} ${this.interesado.apellido}</title>

    </head>
    <body>
        <a href="#edit-interesado" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a <g:link class="home" controller="usuario" action="indexAdmin">Principal</g:link></a></li>
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
            <div class="fieldcontain required">
                <label for="nombreUsuario">Nombre Usuario<span class="required-indicator">*</span></label>
                <input type="text" name="nombreUsuario" value="${this.interesado.nombreUsuario}" required="" id="nombreUsuario">
            </div>
            <div class="fieldcontain required">
                <label for="password">Password<span class="required-indicator">*</span></label>
                <input type="password" name="password" value="" required="" id="password">
            </div>
            <div class="fieldcontain required">
                <label for="email">Email<span class="required-indicator">*</span></label>
                <input type="email" name="email" value="${this.interesado.email}" required="" id="email">
            </div>
            <div class="fieldcontain required">
                <label for="dni">Dni<span class="required-indicator">*</span></label>
                <input type="text" name="dni" value="${this.interesado.dni}" required="" pattern="[0-9]{8}" id="dni">
            </div>
            <div class="fieldcontain required">
                <label for="apellido">Apellido<span class="required-indicator">*</span></label>
                <input type="text" name="apellido" value="${this.interesado.apellido}" required="" id="apellido">
            </div>
            <div class="fieldcontain required">
                <label for="nombre">Nombre<span class="required-indicator">*</span></label>
                <input type="text" name="nombre" value="${this.interesado.nombre}" required="" id="nombre">
            </div>
            <div class="fieldcontain required">
                <label for="categoria">Categoria<span class="required-indicator">*</span></label>
                <select name="categoria" required="" id="categoria">
                    <option value="Alumno">Alumno</option>
                    <option value="Publico General">Publico General</option>
                    <option value="Docente" selected="selected">Docente</option>
                </select>
            </div>
            
        </fieldset>


                <fieldset class="buttons">
                    <button type="submit" class="save btn btn-success">Editar Interesado</button>
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
