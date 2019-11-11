<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'inscripcion.label', default: 'Inscripcion')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-inscripcion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        
        <div id="list-inscripcion" class="content scaffold-list" role="main">
            <h1>Mis cupones</h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

    <table class="table">
        <thead>
            <tr > 
                <th scope="col" class="sortable">Fecha Inscripcion</th>
                <th scope="col" class="sortable">Nombre</th>
                <th scope="col" class="sortable">Numeroorden</th>
                <th scope="col" class="sortable">Estado</th>
                <th scope="col" class="sortable">Costo</th>
                <th scope="col" class="sortable">Nota</th>
                <th scope="col" class="sortable">Fecha Pago</th>
                <th scope="col" class="sortable">Estado Pago</th>
            </tr>
        </thead>
        <tbody>

        <g:each in="${inscripcionList}">
            <tr class="info">
                <td ><a href="/inscripcion/show/${it.id}"><g:formatDate format="dd/MM/yyyy" date="${it.fechaInscripcion}"/></a></td>             
                <td >${it.cursos.nombre}</td>
                <td>${it.numeroorden}</td>                
                <td>${it.estado}</td>
                <td>${it.costo}</td>
                <td>${it.nota}</td>
                <td><g:formatDate format="dd/MM/yyyy" date="${it.fechaPago}"/></td>
                <td>${it.estadoPago}</td>
            </tr>
        </g:each>
        </tbody>
    </table>
            <div class="pagination">
                <g:paginate total="${inscripcionCount ?: 0}" />
            </div>
        </div>
        
    </body>
</html>