<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'inscripcion.label', default: 'Inscripcion')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>

        <a href="#show-inscripcion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div id="show-inscripcion" class="content scaffold-show" role="main">
        <g:if test="${session!=null && session.usuario!=null}">
            <g:if test="${session.usuario.getRoles().any{it.authority=='ADMIN'}}" >
                <h1>Comprobante de Inscripcion</h1>
            
                <ol class="property-list inscripcion">
    
                    <li class="fieldcontain">
                        <span id="cursos-label" class="property-label">Curso</span>
                        <div class="property-value" aria-labelledby="cursos-label"><a href="/curso/show/${this.inscripcion.cursos.id}">${this.inscripcion.cursos.nombre}</a></div>
                    </li>

                    <li class="fieldcontain">
                        <span id="interesado-label" class="property-label">Interesado</span>
                        <div class="property-value" aria-labelledby="interesado-label"><a href="/interesado/show/${this.inscripcion.interesado.id}">${this.inscripcion.interesado.nombre +" "+ this.inscripcion.interesado.apellido}</a></div>
                    </li>

                    <li class="fieldcontain">
                        <span id="fechaInscripcion-label" class="property-label">Fecha Inscripcion</span>
                        <div class="property-value" aria-labelledby="fechaInscripcion-label">${this.inscripcion.fechaInscripcion}</div>
                    </li>
                
                
                    <li class="fieldcontain">
                        <span id="numeroorden-label" class="property-label">Numero de orden</span>
                        <div class="property-value" aria-labelledby="numeroorden-label">${this.inscripcion.numeroorden}</div>
                    </li>
                
                    <li class="fieldcontain">
                        <span id="estado-label" class="property-label">Estado</span>
                        <div class="property-value" aria-labelledby="estado-label">${this.inscripcion.estado}</div>
                    </li>
                
                    <li class="fieldcontain">
                        <span id="costo-label" class="property-label">Costo</span>
                        <div class="property-value" aria-labelledby="costo-label">${this.inscripcion.costo}</div>
                    </li>
                
                    <li class="fieldcontain">
                        <span id="interesado-label" class="property-label">DNI</span>
                        <div class="property-value" aria-labelledby="interesado-label">${this.inscripcion.interesado.dni}</div>
                    </li>


                    <li class="fieldcontain">
                        <span id="cursos-label" class="property-label">Estado del pago</span>
                        <div class="property-value" aria-labelledby="cursos-label">${this.inscripcion.estadoPago}</div>
                    </li>
        
                </ol>

                <form action="/inscripcion/delete/${this.inscripcion.id}" method="post"><input type="hidden" name="_method" value="DELETE" id="_method">
                    <fieldset class="buttons">
                <!--  
                        <a href="/inscripcion/edit/${this.inscripcion.id}" class="edit">Editar</a>
                        <input class="delete" type="submit" value="Eliminar" onclick="return confirm('¿Está usted seguro?');">
                 
                -->  
                    <g:link action="edit" resource="${this.inscripcion}"><button type="button" class="edit btn btn-warning">Editar Inscripcion</button></g:link>
                    <button class="delete btn btn-danger" type="submit" onclick="return confirm('¿Está usted seguro?');">Eliminar Inscripcion</button>
                   

                    </fieldset>
                </form>
                
                <g:if test="${this.inscripcion.estadoPago=="Pendiente"}">
                    <g:form method="POST" resource= "${this.inscripcion}" action="establecerPago">
                            <g:submitButton name="inscriptos" class="btn btn-info" value="ESTABLECER PAGO" />	
                    </g:form>
                </g:if>
                <g:else>
                    <button class="btn btn-danger" value="Pago realizado">Pago realizado</button>
                </g:else>
                
                
                <g:if test="${this.inscripcion.cursos.tipo=="Asistencia"}">
                    <g:form method="POST" target="_blank" url="[controller:'certificadoAsistencia', action:'certificadoPDF']">
                      
                        <g:hiddenField name="id" value="${this.inscripcion.id}" />   <!--Pasa como parametro el id al metodo certificadoPDF-->           
                        <g:submitButton name="inscriptos" class="inscriptos btn btn-info" value="GENERAR CERTIFICADO" />
                    </g:form>
                </g:if>
                
                <g:if test="${this.inscripcion.cursos.tipo=="Evaluativo"}">
                    <g:form method="POST" target="_blank" url="[controller:'certificadoAsistencia', action:'certificadoPDF']">
                        
                        <g:hiddenField name="id" value="${this.inscripcion.id}" />   <!--Pasa como parametro el id al metodo certificadoPDF-->           
                        <g:submitButton name="inscriptos" class="inscriptos btn btn-info" value="GENERAR CERTIFICADO NOTA" />
                        <g:if test="${this.inscripcion.nota==null}">
                            <button class="btn btn-danger" value="Nota no cargada">Nota no cargada</button>
                        </g:if>
                    </g:form>
                </g:if>
                
            </g:if>
    

            <g:elseif test="${session!=null && session.usuario== this.inscripcion.interesado}"> 
        
        
                <h1>Comprobante de Inscripcion</h1>
                
                <ol class="property-list inscripcion">
        
                    <li class="fieldcontain">
                        <span id="cursos-label" class="property-label">Curso</span>
                        <div class="property-value" aria-labelledby="cursos-label"><a href="/curso/show/${this.inscripcion.cursos.id}">${this.inscripcion.cursos.nombre}</a></div>
                    </li>

                    <li class="fieldcontain">
                        <span id="interesado-label" class="property-label">Interesado</span>
                        <div class="property-value" aria-labelledby="interesado-label"><a href="/interesado/show/${this.inscripcion.interesado.id}">${this.inscripcion.interesado.nombre +" "+ this.inscripcion.interesado.apellido}</a></div>
                    </li>

                    <li class="fieldcontain">
                        <span id="fechaInscripcion-label" class="property-label">Fecha Inscripcion</span>
                        <div class="property-value" aria-labelledby="fechaInscripcion-label">${this.inscripcion.fechaInscripcion}</div>
                    </li>
                
                
                    <li class="fieldcontain">
                        <span id="numeroorden-label" class="property-label">Numero de orden</span>
                        <div class="property-value" aria-labelledby="numeroorden-label">${this.inscripcion.numeroorden}</div>
                    </li>
                
                    <li class="fieldcontain">
                        <span id="estado-label" class="property-label">Estado</span>
                        <div class="property-value" aria-labelledby="estado-label">${this.inscripcion.estado}</div>
                    </li>
                
                    <li class="fieldcontain">
                        <span id="costo-label" class="property-label">Costo</span>
                        <div class="property-value" aria-labelledby="costo-label">${this.inscripcion.costo}</div>
                    </li>
                
                    <li class="fieldcontain">
                        <span id="interesado-label" class="property-label">DNI</span>
                        <div class="property-value" aria-labelledby="interesado-label">${this.inscripcion.interesado.dni}</div>
                    </li>


                    <li class="fieldcontain">
                        <span id="cursos-label" class="property-label">Estado del pago</span>
                        <div class="property-value" aria-labelledby="cursos-label">${this.inscripcion.estadoPago}</div>
                    </li>
        
                </ol>
            
                <form action="/inscripcion/delete/${this.inscripcion.id}" method="post"><input type="hidden" name="_method" value="DELETE" id="_method">
                    <fieldset class="buttons">
                        <button class="delete btn btn-danger" type="submit" onclick="return confirm('¿Está usted seguro?');">Dar de baja</button>
                    </fieldset>
                </form>
                
                <g:if test="${this.inscripcion.cursos.tipo=="Asistencia" && this.inscripcion.cursos.fechadelCertificado<new Date()}"> <!--solo puede descargar el certificado una vez finalizado el curso-->
                    <g:form method="POST" url="[controller:'certificadoAsistencia', action:'certificadoPDF']">
                        <fieldset class="buttons"> 
                        <g:hiddenField name="id" value="${this.inscripcion.id}" />   <!--Pasa como parametro el id al metodo certificadoPDF-->           
                        <g:submitButton name="inscriptos" class="inscriptos btn btn-info" value="Descargar certificado"/>
	</fieldset>
                    </g:form>
                </g:if>
                <g:if test="${this.inscripcion.cursos.tipo=="Evaluativo" && this.inscripcion.cursos.fechadelCertificado<new Date()}">
                    <g:form method="POST" url="[controller:'certificadoAsistencia', action:'certificadoPDF']">
                        <fieldset class="buttons">
                        <g:hiddenField name="id" value="${this.inscripcion.id}" />   <!--Pasa como parametro el id al metodo certificadoPDF-->           
                        <g:submitButton name="inscriptos" class="inscriptos  btn btn-info" value="Descargar certificado" />	
                    </fieldset>
                    </g:form>
                </g:if>

                <g:if test="${this.inscripcion.cursos.fechadelCertificado>new Date()}">
                    <fieldset class="buttons">
                    <button class="btn btn-danger" value="Certificado no disponible">Certificado no disponible</button>    
                    </fieldset>
                </g:if>
    
            </g:elseif> 

            <g:else>
                <h1>No tiene permisos para ver esta inscripcion</h1>
            </g:else>
        
        </g:if>
  
        </div>
    </body>
</html>


