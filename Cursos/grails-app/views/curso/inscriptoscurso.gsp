<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'inscripcion.label', default: 'Inscripcion')}" />
        <title>Inscriptos en el curso</title>
    </head>
    <body>
        <a href="#list-inscripcion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a <g:link class="home" controller="usuario" action="indexAdmin">Principal</g:link></a></li>                
            </ul>
        </div>
        <div id="list-inscripcion" class="content scaffold-list" role="main">
            <h1>Inscriptos en el curso </h1>
            
            <table class="table">
                <thead>
                    <tr > 
                            <th scope="col" class="sortable">Fecha de la Inscripcion</th>
                            <th scope="col" class="sortable">Numero de Orden</th>
                            <th scope="col" class="sortable ">Estado</th>
                            <th scope="col" class="sortable">Costo</th>
                            <th scope="col" class="sortable">Nota</th>
                            <th scope="col" class="sortable">Fecha Pago</th>
                            <th scope="col" class="sortable">Estado Pago</th>
                            <th scope="col" class="sortable">Interesado</th>    
                    </tr>
                </thead>
                <tbody>
                <g:each in="${inscripcionList}">
                    <tr class="info">
                    
                        <td ><a href="/inscripcion/show/${it.id}"><g:formatDate format="dd/MM/yyyy" date="${it.fechaInscripcion}"/></a></td>
                        <td>${it.numeroorden}</td>
                        <td>${it.estado}</td>
                        <td>${it.costo}</td>
                        <td>${it.nota}</td>
                        <td><g:formatDate format="dd/MM/yyyy" date="${it.fechaPago}"/></td>
                        <td>${it.estadoPago}</td>
                        <td>${it.interesado.nombre +" "+it.interesado.apellido}</td>
                    </tr>
                    </g:each>
                </tbody>
            </table>





        </div>
    </body>
</html>