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
            <g:form resource="${this.expositor}" method="POST" enctype="multipart/form-data">
                <g:hiddenField name="version" value="${this.expositor?.version}" />
               <!-- <fieldset class="form">
                    <f:all bean="expositor"/>
                </fieldset>
-->

                <fieldset class="form">


                
            <div class="fieldcontain required">
                <label for="nombreUsuario">Nombre Usuario<span class="required-indicator">*</span></label>
                <input type="text" name="nombreUsuario" value="${this.expositor.nombreUsuario}" required="" id="nombreUsuario">
            </div>
            <div class="fieldcontain required">
                <label for="password">Password<span class="required-indicator">*</span></label>
                <input type="password" name="password" value="" required="" id="password">
            </div>
            <div class="fieldcontain required">
                <label for="email">Email<span class="required-indicator">*</span></label>
                <input type="email" name="email" value="${this.expositor.email}" required="" id="email">
            </div>
            <div class="fieldcontain required">
                <label for="dni">Dni<span class="required-indicator">*</span></label>
                <input type="text" name="dni" value="${this.expositor.dni}" required="" pattern="[0-9]{8}" id="dni">
            </div>
            <div class="fieldcontain required">
                <label for="apellido">Apellido<span class="required-indicator">*</span></label>
                <input type="text" name="apellido" value="${this.expositor.apellido}" required="" id="apellido">
            </div>
            <div class="fieldcontain required">
                <label for="nombre">Nombre<span class="required-indicator">*</span></label>
                <input type="text" name="nombre" value="${this.expositor.nombre}" required="" id="nombre">
            </div>

            <div class="fieldcontain required">
                <label for="titulo">Titulo<span class="required-indicator">*</span></label>
                <input type="text" name="titulo" value="${this.expositor.titulo}" required="" id="titulo">
            </div>

            <div class="fieldcontain">
                <label for="firma">Firma</label>
                <p align="center"> <input type="file" name="firma" value="" id="firma"> </p>
            </div>

    
            <div class="fieldcontain">

                <label for="cursos">Cursos</label>
                <select name="cursos" id="cursos" multiple="">
                    <g:each in="${cursos}">
                        <option value="${it.id}">${it.nombre} </option>
                    </g:each>
                </select>
            </div>
            </fieldset>
                <fieldset class="buttons">
                    <button type="submit" class="save btn btn-success">Editar Expositor</button>
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
