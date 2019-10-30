<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'inscripcion.label', default: 'Inscripcion')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-inscripcion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        
        <div id="show-inscripcion" class="content scaffold-show" role="main">
            <h1>Mostrar Inscripcion</h1>
            
            <ol class="property-list inscripcion">
    
        <li class="fieldcontain">
            <span id="fechaInscripcion-label" class="property-label">Fecha Inscripcion</span>
            <div class="property-value" aria-labelledby="fechaInscripcion-label">${this.fechaInscripcion}</div>
        </li>
    
        <li class="fieldcontain">
            <span id="formaPago-label" class="property-label">Forma Pago</span>
            <div class="property-value" aria-labelledby="formaPago-label"></div>
        </li>
    
        <li class="fieldcontain">
            <span id="numeroorden-label" class="property-label">Numeroorden</span>
            <div class="property-value" aria-labelledby="numeroorden-label"></div>
        </li>
    
        <li class="fieldcontain">
            <span id="estado-label" class="property-label">Estado</span>
            <div class="property-value" aria-labelledby="estado-label">No se</div>
        </li>
    
        <li class="fieldcontain">
            <span id="costo-label" class="property-label">Costo</span>
            <div class="property-value" aria-labelledby="costo-label">250</div>
        </li>
    
        <li class="fieldcontain">
            <span id="interesado-label" class="property-label">Interesado</span>
            <div class="property-value" aria-labelledby="interesado-label"><a href="/interesado/show/4">GABRIEL</a></div>
        </li>
    
        <li class="fieldcontain">
            <span id="cursos-label" class="property-label">Cursos</span>
            <div class="property-value" aria-labelledby="cursos-label"><a href="/curso/show/7">Cursos.Curso : 7</a></div>
        </li>
    
        </ol>
    </body>
</html>



