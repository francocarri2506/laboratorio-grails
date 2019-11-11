<!DOCTYPE html>
<html>
<head>
	<title>HTML to PDF</title>
	<asset:stylesheet src="stylePDF.css"/>
	
</head>
<body>
<div id="HTMLtoPDF">


    <header class="clearfix">
      <div id="logo">
        <asset:image src="logo2.png"  alt="Progressus HTML5 template"/>
		
      </div>
	 	
      <div id="company">
       <asset:image src="descarga.jpg" width="80" alt="Progressus HTML5 template"/>
      </div>
     
    </header>
    <main>
	<div id="invoice1">
          
		
       
      <g:if test="${inscripcion.cursos.tipo=="Asistencia" || (inscripcion.cursos.tipo=="Evaluativo" && inscripcion.nota<7)}">
      <h1><strong>CERTIFICADO DE ASISTENCIA<strong></h1>
      </div><br><br><br>
        <div id="details" class="clearfix">
          <div id="client">
            
            <h2 class="name">CERTIFICAMOS que la persona  ${inscripcion.interesado.nombre} ${inscripcion.interesado.apellido}   con el DNI  ${inscripcion.interesado.dni} <br><br>
             participó como  ${inscripcion.interesado.categoria} en el CURSO   ${inscripcion.cursos.nombre} , realizado en <br><br>
             San Fernando del Valle de Catamarca de la Provincia de Catamarca </h2>
            
          </div>
          
        </div>
        <br><br><br>
        <div id="client">Autoridad(es) Certificante(s):</div>
        <g:each in="${inscripcion.cursos.autoridades}">
           <p>${it.nombre} ${it.apellido}</p>  
        </g:each>  
        <br>
        </g:if>
        <g:if test="${inscripcion.cursos.tipo=="Evaluativo" && (inscripcion.nota==7 || inscripcion.nota>7)}">
        <h1><strong>CERTIFICADO DE APROBACION<strong></h1>
      </div><br><br><br>
        <div id="details" class="clearfix">
          <div id="client">
            
            <h2 class="name">CERTIFICAMOS que la persona  ${inscripcion.interesado.nombre} ${inscripcion.interesado.apellido}   con el DNI  ${it.interesado.dni} <br><br>
             asistió como  ${inscripcion.interesado.categoria} y aprobó con la nota ${inscripcion.nota}, el CURSO   ${inscripcion.cursos.nombre} , realizado en <br><br>
             San Fernando del Valle de Catamarca de la Provincia de Catamarca </h2>
            
          </div>
          
        </div>
        <br><br><br>  
        <div id="client">Autoridad(es) Certificante(s):</div>
        <g:each in="${inscripcion.cursos.autoridades}">
           <p>${it.nombre} ${it.apellido}</p>  
        </g:each>  
        </g:if>
      
    </main>
    <footer>
      Copyright &copy; JOGAF - 2019.
	  <!-- here we call the function that makes PDF -->
    </footer>
	</div>
	<a href="#" onclick="HTMLtoPDF()">Descargar CERTIFICADO</a><br><br>
  <a href="/">Volver a Principal</a>

	
	<!-- these js files are used for making PDF -->
    <asset:javascript src="jspdf.js"/>
	<asset:javascript src="jquery-2.1.3.js"/>
    <asset:javascript src="pdfFromHTML.js"/>
	
</body>
</html>