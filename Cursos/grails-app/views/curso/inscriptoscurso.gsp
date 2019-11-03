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
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                
            </ul>
        </div>
        <div id="list-inscripcion" class="content scaffold-list" role="main">
            <h1>Inscriptos en el curso ${this.inscripcionList.cursos.nombre}</h1>
            
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${inscripcionList}" />

            <div class="pagination">
                <g:paginate total="${inscripcionCount ?: 0}" />
            </div>

            <h2>MOSTRAR ASI PARA VER BIEN LOS NOMBRES Y NO CODIGOS</h2>
            <h3>Se puede hacer una tabla</h3>
            <g:each in="${inscripcionList}">
            <div>
                <span>Fecha: <a href="/inscripcion/show/${it.id}">${it.fechaInscripcion}</a></span>
                <span>Interesado: <a href="/interesado/show/${it.interesado.id}">${it.interesado.nombre +" "+it.interesado.apellido}</a></span>
                <span>Curso: <a href="/curso/show/${it.cursos.id}">${it.cursos.nombre}</a></span>
            </div>
            </g:each>
            
        </div>
    </body>
</html>