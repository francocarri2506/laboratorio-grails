<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'expositor.label', default: 'Expositor')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-expositor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a <g:link class="home" controller="usuario" action="indexAdmin">Principal</g:link></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="show-expositor" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

        <ol class="property-list expositor">
    
        <li class="fieldcontain">
            <span id="nombreUsuario-label" class="property-label">Nombre Usuario</span>
            <div class="property-value" aria-labelledby="nombreUsuario-label">${this.expositor.nombreUsuario}</div>
        </li>
    <!-- 
        <li class="fieldcontain">
            <span id="password-label" class="property-label">Password</span>
            <div class="property-value" aria-labelledby="password-label">${this.expositor.password}</div>
        </li>
    -->
        <li class="fieldcontain">
            <span id="email-label" class="property-label">Email</span>
            <div class="property-value" aria-labelledby="email-label">${this.expositor.email}</div>
        </li>
    
        <li class="fieldcontain">
            <span id="dni-label" class="property-label">Dni</span>
            <div class="property-value" aria-labelledby="dni-label">${this.expositor.dni}</div>
        </li>
    
        <li class="fieldcontain">
            <span id="apellido-label" class="property-label">Apellido</span>
            <div class="property-value" aria-labelledby="apellido-label">${this.expositor.apellido}</div>
        </li>
    
        <li class="fieldcontain">
            <span id="nombre-label" class="property-label">Nombre</span>
            <div class="property-value" aria-labelledby="nombre-label">${this.expositor.nombre}</div>
        </li>
    
        <li class="fieldcontain">
            <span id="titulo-label" class="property-label">Titulo</span>
            <div class="property-value" aria-labelledby="titulo-label">${this.expositor.titulo}</div>
        </li>
    
        <li class="fieldcontain">
            <span id="firma-label" class="property-label">Firma</span>
            <div class="property-value" aria-labelledby="firma-label"><img  src=${createLink(controller:"Expositor", action:"verImagen", id:"${params.id}")} width='300' /></div>
        </li>

        <!--  
        <li class="fieldcontain">
            <span id="cursos-label" class="property-label">Cursos</span>
            <div class="property-value" aria-labelledby="cursos-label"><ul>${this.expositor.cursos}</ul></div>
        </li>
        --> 
    </ol>
            <g:form resource="${this.expositor}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.expositor}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
