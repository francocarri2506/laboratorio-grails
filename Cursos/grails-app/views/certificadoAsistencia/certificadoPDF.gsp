<!DOCTYPE html>
<html>
<head>
	<title>HTML to PDF</title>
</head>
<body>
	<!-- 
	content of this area will be the content of your PDF file 
	-->
	<div id="HTMLtoPDF">

	<h2>CERTIFICADO DE ASISTENCIA</h2>

	<p>Por el presente CERTIFICO que el Sr --------- participo del curso ---- como ASISTENTE.</p>

	</div>

	<!-- here we call the function that makes PDF -->
	<a href="#" onclick="HTMLtoPDF()">Descargar CERTIFICADO</a>

	<!-- these js files are used for making PDF -->
    <asset:javascript src="jspdf.js"/>
	<asset:javascript src="jquery-2.1.3.js"/>
    <asset:javascript src="pdfFromHTML.js"/>
	
</body>
</html>