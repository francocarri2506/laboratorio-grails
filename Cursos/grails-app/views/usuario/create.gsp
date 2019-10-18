<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>

        <asset:stylesheet src="bootstrap.min.css"/>
	<asset:stylesheet src="font-awesome.min.css"/>

	<!-- Custom styles for our template -->
	<asset:stylesheet src="bootstrap-theme.css" media="screen" />
	<asset:stylesheet src="main2.css"/>
    <asset:stylesheet src="hover-pack.css"/>
    </head>
    <body>
        <!--<a href="#create-usuario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-usuario" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.usuario}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.usuario}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.usuario}" method="POST">
                <fieldset class="form">
                    <f:all bean="usuario"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>-->

<!-- container -->
	<div class="container">

		<ol class="breadcrumb">

		<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
			<li><a <g:link class="home" controller="usuario" action="acceder">Acceder</g:link></a></li>
            
			<li class="active">Registrarse</li>
		</ol>

		<div class="row">
	
			<!-- Article main content -->
			<article class="col-xs-12 maincontent">
				<header class="page-header">
					<h1 class="page-title">Registrarse</h1>
				</header>
				
				<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
					<div class="panel panel-default">
						<div class="panel-body">
							<h3 class="thin text-center">Crear un nuevo Usuario</h3>
							<hr>
                            <g:form controller="usuario" action="save" method="post">
							<form>
        
                         
								<div class="top-margin">
									<label>Nombre de Usuario:</label>
									<input type="text" name="nombreUsuario" class="form-control" required>
								</div>
								
								<div class="top-margin">
									<label>Email:<span class="text-danger">*</span></label>
									<input type="text" name="email" class="form-control" required>
								</div>

								<div class="row top-margin">
									<div class="col-sm-6">
										<label>Contraseña <span class="text-danger">*</span></label>
										<input type="text" name="password" class="form-control" required>
									</div>
									<div class="col-sm-6">
										<label>Confirmar Contraseña<span class="text-danger">*</span></label>
										<input type="text" name="password" class="form-control" required>
									</div>
								</div>

								<hr>

								<div class="row">
									
									<div class="col-lg-12 text-right">
										<button name="create" class="btn btn-action" id="create"type="submit">CREAR</button>
                                        
									</div>
								</div>
							</form>
                            </g:form>
                            
						</div>
					</div>

				</div>
				
			</article>
			<!-- /Article -->

		</div>
	</div>	<!-- /container -->

    </body>
</html>
