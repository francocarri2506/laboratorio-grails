	<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'curso.label', default: 'Curso')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body class="home">
    <!-- --> 
        <div class="nav" role="navigation">
        <table>
            <tr>
            <th>nombre</th>
            </tr>
            <g:each in="${listado?}">
                <tr>
                    <td>${it.nombre}</td>
                </tr>
            </g:each>
        </div>
          
    </body>
</html>