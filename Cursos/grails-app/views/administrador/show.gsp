<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'administrador.label', default: 'Administrador')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-administrador" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a <g:link class="home" controller="usuario" action="indexAdmin">Principal</g:link></a></li>
                <li><g:link action="index"><button type="button" class="btn btn-secondary list">Lista de Administradores</button></g:link></li>
                <li><g:link action="create"><button type="button" class="create btn btn-success">Nuevo Administrador</button></g:link></li>
            </ul>
        </div>
        <div id="show-administrador" class="content scaffold-show" role="main">
            <h1>${this.administrador.nombre} ${this.administrador.apellido}</h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:display bean="administrador" />
            <g:form resource="${this.administrador}" method="DELETE">
                <fieldset class="buttons">
                <!--
                    <g:link class="edit" action="edit" resource="${this.administrador}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                -->
                        <g:link action="edit" resource="${this.administrador}"><button type="button" class="edit btn btn-warning">Editar Administrador</button></g:link>
                        <button class="delete btn btn-danger" type="submit" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Esta seguro que desea eliminar este administrador?')}');">Eliminar Administrador</button>
                    
                
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
