<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-usuario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link action="index"><button type="button" class="list btn btn-secondary">Lista de Usuarios </button></g:link></li>
                <li><g:link action="create"><button type="button" class="create  btn btn-success">Nuevo Usuario</button></g:link></li>
            </ul>
        </div>
        <div id="show-usuario" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:display bean="usuario" />
            <g:form resource="${this.usuario}" method="DELETE">
                <fieldset class="buttons">
                     <g:link action="edit" resource="${this.usuario}"><button type="button" class="edit btn btn-warning">Editar Usuario</button></g:link>
                    <button class="delete btn btn-danger" type="submit" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Esta seguro que desea eliminar usuario?')}');">Eliminar Usuario</button>
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
