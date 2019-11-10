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

            <div class="fieldcontain required">
                <label for="nombreUsuario">Nombre Usuario<span class="required-indicator">*</span></label>
                <input type="text" name="nombreUsuario" value="" required="" id="nombreUsuario">
            </div>

            <div class="fieldcontain required">
                <label for="password">Password<span class="required-indicator">*</span></label>
                <input type="password" name="password" value="" required="" id="password">
            </div>

            <div class="fieldcontain required">
                <label for="email">Email<span class="required-indicator">*</span></label>
                <input type="email" name="email" value="" required="" id="email">
            </div>

            <div class="fieldcontain required">
                <label for="dni">Dni<span class="required-indicator">*</span></label>
                <input type="text" name="dni" value="" required="" pattern="[0-9]{8}" id="dni">
            </div>

            <div class="fieldcontain required">
            <label for="apellido">Apellido
                <span class="required-indicator">*</span>
            </label><input type="text" name="apellido" value="" required="" id="apellido">
            </div>

            <div class="fieldcontain required">
                <label for="nombre">Nombre<span class="required-indicator">*</span></label>
                <input type="text" name="nombre" value="" required="" id="nombre">
            </div>

            <div class="fieldcontain required">
                <label for="titulo">Titulo<span class="required-indicator">*</span></label>
                <input type="text" name="titulo" value="" required="" id="titulo">
            </div>

            <div class="fieldcontain">
           
                <label for="firma">Firma</label>
                                
            </div>
            <div class="container">             
                <div class="row">
                    <div class="col-sm-2">
                    </div>
                    <div class="col-sm-10">
                    <input type="file" name="firma" value="" id="firma">
                    </div>
                </div>
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
                    <button type="submit" name="create" class="save btn btn-success">crear</button>
                </fieldset>
         </g:form>
            
        </div>
    </body>
</html>
