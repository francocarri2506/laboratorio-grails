<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'curso.label', default: 'Curso')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-curso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <g:if test="${session.usuario.getRoles().any{it.authority=='ADMIN'}}" >
					<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                    <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				</g:if>
				<g:else>
					<li><g:link class="inscribirse" action="inscribirse" resource="${this.curso}" >INSCRIBIRSE</g:link></li>			
				</g:else>	
                
            </ul>
        </div>
        <div id="show-curso" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
 <!--  
            <f:display bean="curso" />
 -->

    <ol class="property-list curso">

        <li class="fieldcontain">
            <span id="nombre-label" class="property-label">Nombre</span>
            <div class="property-value" aria-labelledby="nombre-label">${this.curso.nombre}</div>
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
            <div class="property-value" aria-labelledby="fechaLimiteInscripcion-label">${this.curso.fechaLimiteInscripcion}</div>
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
            <span id="interesados-label" class="property-label">Interesados</span>
            <div class="property-value" aria-labelledby="interesados-label"><ul>${this.curso.interesados}</ul></div>
        </li>
    
        <li class="fieldcontain">
            <span id="imagen-label" class="property-label">Imagen</span>
            <div class="property-value" aria-labelledby="imagen-label"><img  src=${createLink(controller:"Curso", action:"verImagen", id:"${params.id}")} width='300' /></div>

        </li>    
</ol>




            <g:if test="${session.usuario.getRoles().any{it.authority=='ADMIN'}}" >

                <g:form resource="${this.curso}" method="DELETE">
                    <fieldset class="buttons">
                        <g:link class="edit" action="edit" resource="${this.curso}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                        <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    </fieldset>
                </g:form>
           </g:if> 
        </div>
    </body>
</html>
