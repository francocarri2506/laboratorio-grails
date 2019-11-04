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
        <div class="centrar mb-3"><h3>Cursos realizados en una fecha determinada</h3></div>
        <br><g:form method="post" action="cursosxFecha">
            <div class="form-group row">
                <label for="fechaDesde_cf" id="fechaDesde_cf"class="col-sm-1 col-form-label">Fecha inicio</label>
                    <div class="col-sm-2">
                        <input type="date" class="form-control" id="fechaDesde" name="fechaDesde" required>
                    </div>
                        <label for="fechaHasta_cf" id="fechaHasta_cf" class="col-sm-1 col-form-label">Fecha fin</label>
                    <div class="col-sm-2">
                        <input type="date" class="form-control" id="fechaHasta" name="fechaHasta" required>
                    </div>
                    <div class="col-sm-1"><button type="submit" class="btn btn-success">Buscar</button></div>
            </div>        
        </g:form>
        <div class="tabla_nth_child">
        <g:if test="${cursos}">
        <table>
            <tr>
                <th>Nombre del Curso</th>
                <th>Fecha inicio</th>
                <th>Fecha fin</th>
                
            </tr>
            <g:each in="${cursos?}">
            <tr>
                <td><div><label id="nombre">${it.nombre} </label> </div></td>
                <td><div><label id="fd"><g:formatDate format="dd/MM/yyyy" date="${it.fechaDesde}"/></label> </div></td>
                <td><div><label id="fh"><g:formatDate format="dd/MM/yyyy" date="${it.fechaHasta}"/></label> </div></td>
                
            </tr>
            </g:each>            
        </table>
        </g:if>
        </div>
        
    </div>
</div>
            
        </div>
    </body>
</html>