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
                <li><a class="home" href="/usuario/indexAdmin"><g:message code="default.home.label"/></a></li>
                
            </ul>
        </div>
       <div id="list-inscripcion" class="content scaffold-list" role="main">
            
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${cursoList}" />

           
             <div class="margenseparadorlayout">
    <div class="container-fluid">
    <g:if test="${inscripcionList}">
        <div class="centrar mb-3"><h3>Inscriptos que adeudan el pago</h3></div>
        <br>
        
        <div class="tabla_nth_child">
                <table class="table">
                    <tr>
                        <th>Curso</th>
                        <th>Nombre y Apellido</th>
                        <th>Dni</th>
                        <th>Estado del Pago</th>
                        <th>Fecha de Inscripcion</th>
                       
                    </tr>
                    <g:each in="${inscripcionList}">
                    <tr class="danger">
                        <td><div><label id="curso">${it.cursos.nombre} </label> </div></td>
                        <td><div><label id="nombre">${it.interesado.nombre} </label> <label id="apellido">${it.interesado.apellido}</label></div></td>
                        <td><div><label id="dni">${it.interesado.dni} </label> </div></td>
                        <td><div><label id="pago">${it.estadoPago} </label> </div></td>
                        <td><div><label id="fdi"><g:formatDate format="dd/MM/yyyy" date="${it.fechaInscripcion}"/></label> </div></td>
                    </tr>
                    </g:each>            
                </table>
        </g:if>
        <g:else>  
            <div class="centrar mb-3"><h3>No hay inscriptos que adeuden el pago</h3></div>
        </g:else>  
            </div>
</div>
            </div>
        </div>
    </body>
</html>