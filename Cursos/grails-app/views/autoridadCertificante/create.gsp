<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'autoridadCertificante.label', default: 'AutoridadCertificante')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-autoridadCertificante" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-autoridadCertificante" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.autoridadCertificante}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.autoridadCertificante}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.autoridadCertificante}" method="POST">
                <fieldset class="form">
                    <div class="fieldcontain required">
                    <label for="nombreUsuario">Nombre Usuario
                    <span class="required-indicator">*</span>
                    </label><input type="text" name="nombreUsuario" value="" required="" id="nombreUsuario">
                    </div><div class="fieldcontain required">
                    <label for="password">Password
                    <span class="required-indicator">*</span>
                    </label><input type="text" name="password" value="" required="" id="password">
                    </div><div class="fieldcontain required">
                    <label for="email">Email
                    <span class="required-indicator">*</span>
                    </label><input type="email" name="email" value="" required="" id="email">
                    </div><div class="fieldcontain required">
                    <label for="cargo">Cargo
                    <span class="required-indicator">*</span>
                    </label><input type="text" name="cargo" value="" required="" id="cargo">
                    </div><div class="fieldcontain">
                    <label for="firma">Firma</label><input type="file" name="firma" value="" id="firma">
                    </div><div class="fieldcontain">
                    <label for="cursos">Cursos</label><select name="cursos" id="cursos" multiple="">
                    <option value="7">Cursos.Curso : 7</option>
                    <option value="8">Cursos.Curso : 8</option>
                    <option value="9">Cursos.Curso : 9</option>
                    </select>
                    </div>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
