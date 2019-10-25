<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />

        <!-- de la parte de la ventana principal del interesado -->
        <meta charset="utf-8">
        <meta name="viewport"    content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author"      content="Sergey Pozhilov (GetTemplate.com)">
        
        

        <link rel="shortcut icon" href="assets/images/gt_favicon.png">
        
        <link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
        <asset:stylesheet src="bootstrap.min.css"/>
        <asset:stylesheet src="font-awesome.min.css"/>

        <!-- Custom styles for our template -->
        <asset:stylesheet src="bootstrap-theme.css" media="screen" />
        <asset:stylesheet src="main2.css"/>
        <asset:stylesheet src="hover-pack.css"/>

        <g:set var="entityName" value="${message(code: 'curso.label', default: 'Curso')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>


    <body class="home">
    <g:if test="${!session.usuario.getRoles().any{it.authority=='ADMIN'}}" >
    
        <!-- Header -->
        <header id="head">
            <div class="container">
                <div class="row">
                    <h1 class="lead">CADA LOGRO COMIENZA CON <br>LA DECISIÓN DE INTENTARLO</h1>
                    <p class="tagline">by                    <a href="https://es.wikipedia.org/wiki/Gail_Devers">Gail Devers</a></p>
                    <a href="/curso/index" class="btn btn-action btn-lg" role="button">CURSOS</a></p>
                </div>
            </div>
        </header>
        <!-- /Header -->
    </g:if>    
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
                                            
                                            <input type="text" name="nombrecurso" id="nombrecurso" class="form-control"  placeholder="Ingrese Nombre del curso que decea buscar">
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
                    <!--   <li><a class="home" href="${createLink(uri: '/')}">Principal</a></li>
                    -->     <ul><br><br>
                            <form action="buscarCurso" method="POST">
                                    <div class="row">
                                        <div class="col-md-6">
                                                <input type="text" name="nombrecurso" id="nombrecurso" class="form-control"  placeholder="Ingrese Nombre del curso que decea buscar">
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
                                                 <div ><img  src=${createLink(controller:"Curso", action:"verImagen", id:"${it.id}")} width='300' /></div>
                                                <div class="mb-1 text-muted">Fecha de inicio: <g:formatDate format="dd/MM/yyyy" date="${it.fechaDesde}"/></div> 
                                                <div class="mb-1 text-muted">Fecha Limite de Inscripcion: <g:formatDate format="dd/MM/yyyy" date="${it.fechaLimiteInscripcion}"/></div> 

                                            </div>
                                        </div>
                                    </div>    
                                </g:each>
                            </div>
                        </div>
                    </div>
                    
<!--  
        <div class="row mt">
            <g:each in="${cursoList}" >
                <div class="col-lg-4 col-md-4 col-xs-12 desc">    
                    <a class="b-link-fade b-animate-go"href="/curso/show/${it.id}"> <img src=${createLink(controller:"Curso", action:"verImagen", id:"${it.id}")} width='300' /></div>

                                <div class="b-wrapper">
                                    <h4 class="b-from-left b-animate b-delay03"><a href="/curso/show/${it.id}">${it.nombre}</a></h4>
                                    
                                </div>
                    </a>
                    <hr-d>
                        <div class="mb-1 text-muted">Fecha de inicio: <g:formatDate format="dd/MM/yyyy" date="${it.fechaDesde}"/></div>     
                </div>
            </g:each>
        </div>
    </div>
    -->   
                <!-- razones por las que debes estudiar -->

                <div class="jumbotron top-space">
                    <div class="container">
                        
                        <h3 class="text-center thin"><strong>RAZONES POR LAS QUE DEBES ESTUDIAR</strong></h3>
                        
                        <div class="row">
                            <div class="col-md-3 col-sm-6 highlight">
                                <div class="h-caption"><h4><i class="fa fa-cogs fa-5"></i>Crecer intelectualmente</h4></div>
                                <div class="h-body text-center">
                                    <p>Es importante porque quien estudia adquiere conocimientos y el conocimiento es lo único que puede ayudarte a desarrollar tus capacidades completamente.</p>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6 highlight">
                                <div class="h-caption"><h4><i class="fa fa-flash fa-5"></i>Tendras más oportunidades</h4></div>
                                <div class="h-body text-center">
                                    <p> Es importante porque las empresas buscan a los mejores y un gran diferenciador es un una persona capacitada y con un certificado que lo avale</p>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6 highlight">
                                <div class="h-caption"><h4><i class="fa fa-heart fa-5"></i>Estudiar = Salud</h4></div>
                                <div class="h-body text-center">
                                    <p>Es importante porque quienes estudian mantienen sus cerebros funcionando sanamente, y sus cuerpos sanos también como consecuencia de eso.</p>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6 highlight">
                                <div class="h-caption"><h4><i class="fa fa-smile-o fa-5"></i>Por el progreso</h4></div>
                                <div class="h-body text-center">
                                    <p>Es importante porque saber cosas y entender las razones por las que son o suceden así es lo que te permite cuestionarlas y traer progreso a toda la humanidad</p>
                                </div>
                            </div>
                        </div> <!-- /row  -->
                    
                    </div>
                </div>
                <!-- /razones por las que debes estudiar  -->

                <!-- PREGUNTAS FRECUENTES -->
                <div class="container">

                    <h2 class="text-center top-space" id="preguntas"><strong>PREGUNTAS FRECUENTES</strong></h2>
                    <br>

                    <div class="row">
                        <div class="col-sm-6">
                            <h3>¿Quienes son los encargados de la capacitación?</h3>
                            <p>Un equipo docente experto, con amplia trayectoria, participa en todo el proceso educativo, y un grupo administrativo acompaña y apoya en todo momento el proceso de capacitación y aprendizaje.</p>
                        </div>
                        <div class="col-sm-6">
                            <h3>¿Los cursos ofrecen contenidos relevantes?</h3>
                            <p>
                                Los contenidos se desarrollan en base a estudios e investigación sobre las necesidades del medio actual y la comunidad. Se utilizan las tecnologías de la información y la comunicación (TIC) como medio para la enseñanza y aprendizaje, herramientas tan necesarias en un mundo cada vez más globalizado y tecnológico.</p>
                        </div>
                    </div> <!-- /row -->

                    <div class="row">
                        <div class="col-sm-6">
                            <h3>¿Cuál es la modalidad de los cursos?</h3>
                            <p>
                                Los cursos los realiza el estudiante de manera 100% presencial, en algunas de las aulas pertenecientes al Facultad de Tecnología y Sistemas de la UNCA. 
                            </p>
                        </div>
                        <div class="col-sm-6">
                            <h3>¿Como obtengo mi Certificado?</h3>
                            <p>En caso de aprobar el examen final del curso, el docente a cargo nos comunicará sobre dicha situación. Luego, usted recibirá, en un plazo no mayor a 10 días, su certificado por correo electrónico.</p>
                        </div>
                    </div> <!-- /row -->
                    <h2 class="text-center top-space" id="facultad"><strong>LA FACULTAD</strong></h2>

                    <div class="jumbotron top-space">
                    
                        <h5>La Universidad Nacional de Catamarca, creada en el año 1971, ha surgido como expresión neta de la teoría del desarrollismo, en el marco de la Ley Nacional Nº 17.245. El entonces Ministro de Educación y Cultura de la Nación, Dr. Gustavo Malek, había expresado que la “Nueva Universidad” debía reunir una serie de condiciones para atender cumplidamente los tres horizontes fundamentales de la acción universitaria (formación de hombres, de profesionales y de investigadores; o sea, cultura, saber y ciencia), poseer equilibrio humanístico-científico-tecnológico, ser realista en sus estudios e innovador en su metodología didáctica. Debía ser ágil y flexible en sus estructuras. En lo posible, sin ofrecimientos de carreras clásicas sino de aquellas consideradas como más necesarias en sus zonas de influencia y abierta a todos los sectores populares.</h4>
                        <p class="text-right"><g:link controller="administrador" action="facultad" class="btn btn-primary btn-large"> Leer más »</g:link></p>
                    </div>

                </div>	<!-- /container -->

                <!-- /PREGUNTAS FRECUENTES -->
                </g:else>
            </ul>
            
        </div>
    </div>
    
    </body>
</html>