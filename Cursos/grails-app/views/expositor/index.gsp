<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'expositor.label', default: 'Expositor')}" />
        <title>JOGAF - LISTA DE EXPOSITORES</title>
    </head>
    <body>
        <a href="#list-expositor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a <g:link class="home" controller="usuario" action="indexAdmin">Principal</g:link></a></li>
                <li><g:link  action="create"><button type="button" name="create" class="create btn btn-success">Nuevo Expositor</button></g:link></li>

            </ul>
        </div>
        <div id="list-expositor" class="content scaffold-list" role="main">
            <h1>LISTA DE EXPOSITORES</h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>



        <div class="tabla_nth_child">
                <table class="table">
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Dni</th>
                        <th>Email</th>
                        <th>Titulo</th>
                       
                    </tr>
                </thead>
                <tbody>
                    <g:each in="${expositorList}">
                    <tr class="success">
                        <td><div><label id="nombre"><a href="/expositor/show/${it.id}">${it.nombre} </a></label> </div></td>
                        <td><div><label id="apellido">${it.apellido} </label></div></td>
                        <td><div><label id="dni">${it.dni} </label> </div></td>
                        <td><div><label id="email">${it.email} </label> </div></td>
                        <td><div><label id="email">${it.titulo} </label> </div></td>
                    </tr>
                    </g:each> 
                </tbody>         
                </table>

        
            <div class="pagination">
                <g:paginate total="${expositorCount ?: 0}" />
            </div>
        </div>
    </body>
</html>