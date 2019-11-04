<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'interesado.label', default: 'Interesado')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>

    <g:if test="${session!=null && session.usuario!=null}">
		<g:if test="${session.usuario.getRoles().any{it.authority=='ADMIN'}}" >
                <a href="#show-interesado" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
                <div class="nav" role="navigation">
                    <ul>
                <li><a <g:link class="home" controller="usuario" action="indexAdmin">Principal</g:link></a></li>
                        <li><g:link action="index"><button type="button" class="list btn btn-secondary">Lista de Interesados </button></g:link></li>
                        <li><g:link action="create"><button type="button" class="create  btn btn-success">Nuevo Interesados</button></g:link></li>
                    </ul>
                </div>
                <div id="show-interesado" class="content scaffold-show" role="main">
                    <h1>${this.interesado.nombre} ${this.interesado.apellido}</h1>
                    <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                    </g:if>
                    <f:display bean="interesado" />
                    <g:form resource="${this.interesado}" method="DELETE">
                        <fieldset class="buttons">
                            <g:link action="edit" resource="${this.interesado}"><button type="button" class="edit btn btn-warning">Editar Interesado</button></g:link>
                            <button class="delete btn btn-danger" type="submit" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Esta seguro que desea eliminar este interesado?')}');">Eliminar Interesado</button>
                        </fieldset>
                    </g:form>
                </div>
        </g:if>
        <g:else>
            <a href="#show-interesado" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
                <div class="nav" role="navigation">
                    <ul>
                        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                        
                    </ul>
                </div>
                <div id="show-interesado" class="content scaffold-show" role="main">
                    <h1>${this.interesado.nombre} ${this.interesado.apellido}</h1>
                    <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                    </g:if>
                    <f:display bean="interesado" />
                    <g:form resource="${this.interesado}" method="DELETE">
                        <fieldset class="buttons">
                            <g:link action="edit" resource="${this.interesado}"><button type="button" class="edit btn btn-warning">Editar</button></g:link>
                            <button class="delete btn btn-danger" type="submit" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Esta seguro que desea eliminar este interesado?')}');">Eliminar Cuenta</button>
                        </fieldset>
                    </g:form>
                </div>
		</g:else>
    </g:if>

    </body>
</html>
