<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="layout" content="main"/>
	<meta charset="utf-8">
	<meta name="viewport"    content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author"      content="Sergey Pozhilov (GetTemplate.com)">
	
	<title>Acceder</title>

	<asset:stylesheet src="bootstrap.min.css"/>
	<asset:stylesheet src="font-awesome.min.css"/>

	<!-- Custom styles for our template -->
	<asset:stylesheet src="bootstrap-theme.css" media="screen" />
	<asset:stylesheet src="main2.css"/>
    <asset:stylesheet src="hover-pack.css"/>
	
	

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
</head>

<body>
	

	

	<!-- container -->
	<div class="container">

		<ol class="breadcrumb">

		<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
			
			<li class="active">ACCEDER</li>
		</ol>

		<div class="row">
			
			<!-- Article main content -->
			<article class="col-xs-12 maincontent">
				<header class="page-header">
					<h1 class="page-title">ACCEDER</h1><br>
					<g:if test="${message}">
      <div class="message" role="status">${message}</div>
    </g:if>
				</header>
				
				<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
					<div class="panel panel-default">
						<div class="panel-body">
							<h3 class="thin text-center">Iniciar sesión en su cuenta </h3>
							<p class="text-center text-muted">¿No tiene una cuenta? <g:link controller="interesado" action="create">Registrarse</g:link>. </p>  <!-- al hacer click en registrarce me manda a crear usuario... pero le da rol de admin por lo visto--> 
							
							<hr>
							
							<g:form controller="usuario" action="loginUser" method="post">
							<form>
								<div class="top-margin">
									<label>USUARIO/EMAIL <span class="text-danger">*</span></label>
									<input type='email' id='email' name='email' required/>
									
								</div>
								<div class="top-margin">
									<label>CONTRASEÑA <span class="text-danger">*</span></label>
									<input type="password" id='password' name='password' required/>
								</div>

								<hr>

								<div class="row">
									<div class="col-lg-8">
										<b></b>
									</div>
									<div class="col-lg-4 text-right">
										<button class="btn btn-action" type="submit">ACCEDER</button>
								
										
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