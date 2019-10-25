<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'curso.label', default: 'Curso')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-curso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
      
        <div class="nav" role="navigation">
        
            <ul>
                <g:if test="${session.usuario.getRoles().any{it.authority=='ADMIN'}}" >
                    <div class="container"> 
                        <li><a <g:link class="home" controller="usuario" action="indexAdmin">Principal</g:link></a></li>
                        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                        <ul><br><br>
                            <form action="buscarCurso" method="POST">
                                <div class="row">
                                    <div class="col-md-6">
                                            <label>Ingrese Nombre del curso que decea buscar</label>
                                            <input type="text" name="nombrecurso" id="nombrecurso" class="form-control"  value="">
                                    </div>
                                    <div class="col-md-6">
                                        <br />
                                        <button type="submit" class="btn btn-primary">Buscar</button>
                                    </div>
                                </div>
                            </form>
                        </ul><br><br>
                        <div class="row">
                            <div id="list-curso" class="content scaffold-list" role="main">
                                <h1><g:message code="default.list.label" args="[entityName]" /></h1>
                                <g:if test="${flash.message}">
                                    <div class="message" role="status">${flash.message}</div>
                                </g:if>
                                <f:table collection="${cursoList}" />
                                <div class="pagination">
                                    <g:paginate total="${cursoCount ?: 0}" />
                                </div>
                            </div>
                        </div>
                    </div> 
                </g:if>
                <g:else>
                    <div class="container"> 
                        <li><a class="home" href="${createLink(uri: '/')}">Principal</a></li>
                        <ul><br><br>
                            <form action="buscarCurso" method="POST">
                                    <div class="row">
                                        <div class="col-md-6">
                                                <label>Ingrese Nombre del curso que decea buscar</label>
                                                <input type="text" name="nombrecurso" id="nombrecurso" class="form-control"  value="">
                                        </div>
                                        <div class="col-md-6">
                                            <br />
                                            <button type="submit" class="btn btn-primary">Buscar</button>
                                        </div>
                                    </div>
                            </form>
                        </ul>
                        <div class="row">
                            <div id="list-curso" class="content scaffold-list" role="main">
                                <g:each in="${cursoList}" >
                                    <div class="col-md-6">
                                        <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                                            <div class="col p-4 d-flex flex-column position-static">
                                                <h3 class=""><a href="/curso/show/${it.id}">${it.nombre}</h3></a>
                                                <div class="mb-1 text-muted">Fecha de inicio: <g:formatDate format="dd/MM/yyyy" date="${it.fechaDesde}"/></div>     
                                            </div>
                                        </div>
                                    </div>    
                                </g:each>
                            </div>
                        </div>
                    </div>
                </g:else>
            </ul>
            
        </div>
    </div>
        <!--
        <div id="list-curso" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${cursoList}" />

            <div class="pagination">
                <g:paginate total="${cursoCount ?: 0}" />
            </div>
        </div>
        -->
       
    </body>
</html>