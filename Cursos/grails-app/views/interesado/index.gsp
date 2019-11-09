<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'interesado.label', default: 'Interesado')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-interesado" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <g:if test="${session.usuario.getRoles().any{it.authority=='ADMIN'}}" >
                    <li><a <g:link class="home" controller="usuario" action="indexAdmin">Principal</g:link></a></li>
                <li><g:link  action="create"><button type="button" name="create" class="create btn btn-success">Nuevo Interesado</button></g:link></li>
				</g:if>
                <g:else>
                    <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                </g:else>
            </ul>
        </div>
        <div id="list-interesado" class="content scaffold-list" role="main">
            <h1>LISTA DE INTERESADOS</h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
                       <!--   <f:table collection="${interesadoList}" />
-->
        <div class="tabla_nth_child">
                <table class="table">
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Dni</th>
                        <th>Email</th>
                        <th>Categoria</th>
                       
                    </tr>
                </thead>
                <tbody>
                    <g:each in="${interesadoList}">
                    <tr class="success">
                        <td><div><label id="nombre"><a href="/interesado/show/${it.id}">${it.nombre} </a></label> </div></td>
                        <td><div><label id="apellido">${it.apellido} </label></div></td>
                        <td><div><label id="dni">${it.dni} </label> </div></td>
                        <td><div><label id="email">${it.email} </label> </div></td>
                        <td><div><label id="email">${it.categoria} </label> </div></td>
                    </tr>
                    </g:each> 
                </tbody>         
                </table>

        
            <div class="pagination">
                <g:paginate total="${interesadoCount ?: 0}" />
            </div>
        </div>
    </body>
</html>