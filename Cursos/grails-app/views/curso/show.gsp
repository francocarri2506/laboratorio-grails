<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'curso.label', default: 'Curso')}" />
        <title>JOGAF - ${this.curso.nombre}</title>
    </head>
    <body>

        <a href="#show-curso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                
                <g:if test="${session!=null && session.usuario!=null}">
                    <g:if test="${session.usuario.getRoles().any{it.authority=='ADMIN'}}" >
                        <li><a <g:link class="home" controller="usuario" action="indexAdmin">Principal</g:link></a></li>
                        <li><g:link action="index"><button type="button" class="list btn btn-secondary">Lista de Cursos</button></g:link></li>
                        <li><g:link action="create"><button type="button" class="create  btn btn-success">Nuevo Curso</button></g:link></li>
                        <g:form resource="${this.curso}" method="POST" action='inscriptoscurso'>              
                            <g:submitButton name="inscriptos" class="inscriptos btn btn-info" value="INSCRIPTOS EN ESTE CURSO"/>	
                            
                        </g:form>
                      
				    </g:if>
                
                    <g:else>
                                
                        <!--<li><g:link class="inscribirse" action="inscribirse" resource="${this.curso}" onblur="return validarFormulario()">INSCRIBIRSE</g:link></li>-->		
                        <a href="#show-curso" class="skip" tabindex="-1">Principal</a>
                        <g:form method="POST" resource="${this.curso}" action='inscribirse' onsubmit= "return controlFechaInsc()">              
                            <g:submitButton name="inscribirse" class="inscribirse btn btn-info" value="INSCRIBIRME A ESTE CURSO"/>	
                        </g:form>
                        <!--action="inscribirse"-->
                    </g:else>

                </g:if>
                
                
            </ul>
        </div>
        <div id="show-curso" class="content scaffold-show" role="main">
            <h1>${this.curso.nombre}</h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
 <!--  
            <f:display bean="curso" />
 -->

    <ol class="property-list curso">

        <li class="fieldcontain">
            <span id="nombre-label" class="property-label">Nombre</span>
            <div class="property-value" aria-labelledby="nombre-label">${this.curso.toString()}</div>
        </li>
    
        <li class="fieldcontain">
            <span id="fechaDesde-label" class="property-label">Fecha Desde</span>
            <div class="property-value" aria-labelledby="fechaDesde-label">${this.curso.fechaDesde}</div>
        </li>
    
        <li class="fieldcontain">
            <span id="fechaHasta-label" class="property-label">Fecha Hasta</span>
            <div class="property-value" aria-labelledby="fechaHasta-label">${this.curso.fechaHasta}</div>
        </li>
    
        <li class="fieldcontain">
            <span id="cantidadHoras-label" class="property-label">Cantidad Horas</span>
            <div class="property-value" aria-labelledby="cantidadHoras-label">${this.curso.cantidadHoras}</div>
        </li>
    
        <li class="fieldcontain">
            <span id="lugar-label" class="property-label">Lugar</span>
            <div class="property-value" aria-labelledby="lugar-label">${this.curso.lugar}</div>
        </li>
    
        <li class="fieldcontain">
            <span id="horarios-label" class="property-label">Horarios</span>
            <div class="property-value" aria-labelledby="horarios-label">${this.curso.horarios}</div>
        </li>
    
        <li class="fieldcontain">
            <span id="fechaLimiteInscripcion-label" class="property-label">Fecha Limite Inscripcion</span>
            <div class="property-value" id="fechaLimite" aria-labelledby="fechaLimiteInscripcion-label">${this.curso.fechaLimiteInscripcion}</div>
        </li>
    
        <li class="fieldcontain">
            <span id="fechadelCertificado-label" class="property-label">Fechadel Certificado</span>
            <div class="property-value" aria-labelledby="fechadelCertificado-label">${this.curso.fechadelCertificado}</div>
        </li>
    
        <li class="fieldcontain">
            <span id="cupoMaximo-label" class="property-label">Cupo Maximo</span>
            <div class="property-value" aria-labelledby="cupoMaximo-label">${this.curso.cupoMaximo}</div>
        </li>
    
        <li class="fieldcontain">
            <span id="cupoMinimo-label" class="property-label">Cupo Minimo</span>
            <div class="property-value" aria-labelledby="cupoMinimo-label">${this.curso.cupoMinimo}</div>
        </li>

        <li class="fieldcontain">
            <span id="costo-label" class="property-label">Costo</span>
            <div class="property-value" aria-labelledby="costo-label">${this.curso.costo}</div>
        </li>
    <!--   --> 
        <li class="fieldcontain">
            <span id="expositores-label" class="property-label">Expositores</span>
            <div class="property-value" aria-labelledby="expositores-label"><ul>${this.curso.expositores}</ul></div>
        </li>
    
        <li class="fieldcontain">
            <span id="autoridades-label" class="property-label">Autoridades</span>
            <div class="property-value" aria-labelledby="autoridades-label"><ul>${this.curso.autoridades}</ul></div>
        </li>
    
        <li class="fieldcontain">
            <span id="inscripcion-label" class="property-label">Inscriptos</span>
            <div class="property-value" aria-labelledby="inscripcion-label"><ul>${this.curso.inscripcion}</ul></div>
        </li>


        <li class="fieldcontain">
            <span id="imagen-label" class="property-label">Imagen</span>
            <div class="property-value" aria-labelledby="imagen-label"><img  src=${createLink(controller:"Curso", action:"verImagen", id:"${params.id}")} width='300' /></div>

        </li> 



</ol>



        <g:if test="${session!=null && session.usuario!=null}">
            <g:if test="${session.usuario.getRoles().any{it.authority=='ADMIN'}}" >

                <g:form resource="${this.curso}" method="DELETE" enctype="multipart/form-data">
                    <fieldset class="buttons">
                        <g:link action="edit" resource="${this.curso}"><button type="button" class="edit btn btn-warning">Editar Curso</button></g:link>
                        <button class="delete btn btn-danger" type="submit" value="Eliminar Curso" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Esta seguro que desea eliminar este curso?')}');">Eliminar Curso</button>
                    
                    </fieldset>
                </g:form>
           </g:if> 
        </g:if> 

        </div>

        <asset:javascript src="headroom.min.js"/>
        <asset:javascript src="prueba.js"/>
    </body>
</html>
