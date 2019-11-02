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
            <f:table collection="${inscripcionList}" />

            <div class="pagination">
                <g:paginate total="${inscripcionCount ?: 0}" />
            </div>
        </div>
        
        <h2>MOSTRAR ASI PARA VER BIEN EL NOMBRE DEL CURSO</h2>
        <g:each in="${inscripcionList}">
           <div>
            <span>Identificador: ${it.id}</span>
            <span>Interesado: ${it.interesado.nombre +" "+it.interesado.apellido}</span>
            <span>Curso: ${it.cursos.nombre}</span>
           </div>
        </g:each>
    </body>
</html>