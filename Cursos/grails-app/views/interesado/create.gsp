<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
        <title>CREAR INTERESADO</title>

    <asset:stylesheet src="bootstrap.min.css"/>
	<asset:stylesheet src="font-awesome.min.css"/>

	<!-- Custom styles for our template -->
	<asset:stylesheet src="bootstrap-theme.css" media="screen" />
	<asset:stylesheet src="main2.css"/>
    <asset:stylesheet src="hover-pack.css"/>
    </head>
    <body>
        
<g:if test="${session!=null && session.usuario!=null}">
	<g:if test="${session.usuario.getRoles().any{it.authority=='ADMIN'}}" >
			<a href="#create-interesado" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a <g:link class="home" controller="usuario" action="indexAdmin">Principal</g:link></a></li>
                <li><a <g:link class="list" action="index">Lista de Interesados</g:link></a></li>
            </ul>
        </div>
        <div id="create-interesado" class="content scaffold-create" role="main">
            <h1>NUEVO INTERESADO</h1>

            <g:if test="${flash.message}">
            	<div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.interesado}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.interesado}" var="error">
             	</g:eachError>
            </ul>
            </g:hasErrors>

            <g:form resource="${this.interesado}" method="POST" >
                 <fieldset class="form">

            <div class="fieldcontain required">
                <label for="nombreUsuario">Nombre Usuario<span class="required-indicator">*</span></label>
                <input type="text" name="nombreUsuario" value="" required="" id="nombreUsuario">
            </div>

            <div class="fieldcontain required">
                <label for="password">Password<span class="required-indicator">*</span></label>
                <input type="password" name="password" value="" required="" id="password">
            </div>

            <div class="fieldcontain required">
                <label for="email">Email<span class="required-indicator">*</span></label>
                <input type="email" name="email" value="" required="" id="email">
            </div>

            <div class="fieldcontain required">
                <label for="dni">Dni<span class="required-indicator">*</span></label>
                <input type="text" name="dni" value="" required="" pattern="[0-9]{8}" id="dni">
            </div>

            <div class="fieldcontain required">
            <label for="apellido">Apellido
                <span class="required-indicator">*</span>
            </label><input type="text" name="apellido" value="" required="" id="apellido">
            </div>

            <div class="fieldcontain required">
                <label for="nombre">Nombre<span class="required-indicator">*</span></label>
                <input type="text" name="nombre" value="" required="" id="nombre">
            </div>

            <div class="fieldcontain required">
                <label for="categoria">Categoria<span class="required-indicator">*</span></label>
                <select name="categoria" required="" id="categoria">
                        <option value="Alumno">Alumno</option>
                        <option value="Publico General">Publico General</option>
                        <option value="Docente">Docente</option>
                </select>
            </div>

        </fieldset>
                <fieldset class="buttons">
                    <button type="submit" name="create" class="save btn btn-success">crear</button>
                </fieldset>
            </g:form>
			
        </div> 

	</g:if>
</g:if>
<g:else>
   

	
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
					<h1 class="page-title">REGISTRARSE</h1>
				</header>				
				<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
					<div class="panel panel-default">
						<div class="panel-body">
							<h3 class="thin text-center">Crear un nuevo Usuario Interesado</h3>
							<hr>
                            <form action="save" method="post" onsubmit="return Clave()">					
								<div class="top-margin">
									<label>Apellido:<span class="text-danger">*</span></label>
									<input type="text" name="apellido" class="form-control" required>
								</div>
								<div class="top-margin">
									<label>Nombre:<span class="text-danger">*</span></label>
									<input type="text" name="nombre" class="form-control" required>
								</div>								
								<div class="top-margin">
									<label>DNI:<span class="text-danger">*</span></label>
									<input type="text" name="dni" class="form-control" required>
								</div>                        
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
										<input type="password" name="password" class="form-control" id="cl1" required>
									</div>
									<div class="col-sm-6">
										<label>Confirmar Contraseña<span class="text-danger">*</span></label>
										<input type="password" name="password2" class="form-control" id="cl2" required>
									</div>
								</div>
								<div class="top-margin">
									<label for="categoria">Categoria<span class="text-danger">*</span></label>
									<select name="categoria" required="" id="categoria">
										<option value="Alumno">Alumno</option>
										<option value="Publico General">Publico General</option>
										<option value="Docente">Docente</option>
									</select>
								</div>
								<hr>
								<div class="row">
									<div class="col-lg-12 text-right">
                						<button type="submit" name="create" class="save btn btn-success">crear</button>  
									</div>
								</div>
                            </form>  
						</div>
					</div>
				</div>	
			</article>
			<!-- /Article -->
		</div>
	</div>	<!-- /container -->
</g:else>
    <asset:javascript src="prueba.js"/>
    </body>
</html>


