<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'curso.label', default: 'Curso')}" />
        <title>CREAR CURSO</title>
    </head>
    <body>
        <a href="#create-curso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a <g:link class="home" controller="usuario" action="indexAdmin">Principal</g:link></a></li>
                <li><g:link class="list" action="index">Lista de Cursos</g:link></li>

            </ul>
        </div>
        <div id="create-curso" class="content scaffold-create" role="main">
            <h1>NUEVO CURSO</h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.curso}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.curso}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>

<!---->
            <g:form resource="${this.curso}" method="POST" enctype="multipart/form-data">
                <fieldset class="form">
                    <f:all bean="curso"/>
                </fieldset>
                <fieldset class="buttons">
                    <button type="submit" name="create" class="save btn btn-success">crear</button>
                </fieldset>
            </g:form>

<!--
            <g:form resource="${this.curso}" method="POST" enctype="multipart/form-data">
                <fieldset class="form">
                    <div class='fieldcontain required'>
                        <label for='nombre'>Nombre<span class='required-indicator'>*</span></label>
                        <input type="text" name="nombre" value="" required="" id="nombre" />
                    </div>

                    <div class='fieldcontain required'>
                        <label for='fechaDesde'>Fecha Desde<span class='required-indicator'>*</span></label>
                        <input type="date" id="fechaDesde" name="fechaDesde" value="" required="">
                            
                    </div>

                    <div class='fieldcontain required'>
                        <label for='fechaHasta'>Fecha Hasta<span class='required-indicator'>*</span></label>
                        <input type="date" id="fechaHasta" name="fechaHasta" value="" required="">        
                    </div>

                    <div class='fieldcontain'>
                        <label for='cantidadHoras'>Cantidad Horas</label>
                        <input type="text" name="cantidadHoras" value="" id="cantidadHoras" />
                    </div>

                    <div class='fieldcontain'>
                        <label for='lugar'>Lugar</label>
                        <input type="text" name="lugar" value="" id="lugar" />
                    </div>
                    <div class='fieldcontain required'>
                        <label for='horarios'>Horarios<span class='required-indicator'>*</span></label>
                        <input type="text" name="horarios" value="" required="" id="horarios" />
                    </div>

                    <div class='fieldcontain required'>
                        <label for='fechaLimiteInscripcion'>Fecha Limite Inscripcion<span class='required-indicator'>*</span></label>
                        <input type="date" id="fechaLimiteInscripcion" name="fechaLimiteInscripcion" value="" required="">        
                    </div>

                    <div class='fieldcontain required'>
                        <label for='fechadelCertificado'>Fecha del Certificado<span class='required-indicator'>*</span></label>
                        <input type="date" id="fechadelCertificado" name="fechadelCertificado" value="" required="">        
                    </div>

                    <div class='fieldcontain required'>
                        <label for='cupoMaximo'>Cupo Maximo<span class='required-indicator'>*</span></label>
                        <input type="number" name="cupoMaximo" value="" required="" id="cupoMaximo" />
                    </div>

                    <div class='fieldcontain required'>
                        <label for='cupoMinimo'>Cupo Minimo<span class='required-indicator'>*</span></label>
                        <input type="number" name="cupoMinimo" value="" required="" id="cupoMinimo" />
                    </div>

                    <div class='fieldcontain required'>
                        <label for='costo'>Costo<span class='required-indicator'>*</span></label>
                        <input type="number" name="costo" value="" required="" id="costo" />
                    </div>

                    <div class='fieldcontain'>
                        <label for='imagen'>Imagen</label>
                        <input type="file" name="imagen" value="" id="imagen" />
                    </div>

                    <div class='fieldcontain'>
                        <label for='expositores'>Expositores</label>
                        <select name="expositores" id="expositores" multiple="" >
                            <g:each in="${expositores?}">
                                <option value="${it.id}">${it.apellido} ${it.nombre}</option>
                            </g:each>
                        </select>
                    </div>

                    <div class='fieldcontain'>
                        <label for='autoridades'>Autoridades</label>
                        <select name="autoridades" id="autoridades" multiple="" >
                            <g:each in="${autoridades?}">
                                <option value="${it.id}">${it.apellido} ${it.nombre}</option>
                            </g:each>
                        </select>
                    </div>

                   


                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
-->
        </div>
    </body>
</html>
