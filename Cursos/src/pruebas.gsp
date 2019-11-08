
    <div id="create-interesado" class="content scaffold-create" role="main">
            <h1>NUEVO INTERESADO</h1>
            
            
    <form action="/interesado/save" method="post">
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
    </form>

</div> 






<ol class="property-list interesado">
    
        <li class="fieldcontain">
            <span id="nombreUsuario-label" class="property-label">Nombre Usuario</span>
            <div class="property-value" aria-labelledby="nombreUsuario-label">${this.interesado.nombreUsuario}</div>
        </li>
    
    
        <li class="fieldcontain">
            <span id="email-label" class="property-label">Email</span>
            <div class="property-value" aria-labelledby="email-label">${this.interesado.email}</div>
        </li>
    
        <li class="fieldcontain">
            <span id="dni-label" class="property-label">Dni</span>
            <div class="property-value" aria-labelledby="dni-label">${this.interesado.dni}</div>
        </li>
    
        <li class="fieldcontain">
            <span id="apellido-label" class="property-label">Apellido</span>
            <div class="property-value" aria-labelledby="apellido-label">${this.interesado.apellido}</div>
        </li>
    
        <li class="fieldcontain">
            <span id="nombre-label" class="property-label">Nombre</span>
            <div class="property-value" aria-labelledby="nombre-label">${this.interesado.nombre}</div>
        </li>
    
        <li class="fieldcontain">
            <span id="categoria-label" class="property-label">Categoria</span>
            <div class="property-value" aria-labelledby="categoria-label">${this.interesado.categoria}</div>
        </li>
    
</ol>


<form action="/interesado/update/${this.interesado.id}" method="post"><input type="hidden" name="_method" value="PUT" id="_method">
    <input type="hidden" name="version" value="1" id="version">
        <fieldset class="form">
            <div class="fieldcontain required">
                <label for="nombreUsuario">Nombre Usuario<span class="required-indicator">*</span></label>
                <input type="text" name="nombreUsuario" value="${this.interesado.nombreUsuario}" required="" id="nombreUsuario">
            </div>
            <div class="fieldcontain required">
                <label for="password">Password<span class="required-indicator">*</span></label>
                <input type="password" name="password" value="Reingrese contraseña" required="" id="password">
            </div>
            <div class="fieldcontain required">
                <label for="email">Email<span class="required-indicator">*</span></label>
                <input type="email" name="email" value="${this.interesado.email}" required="" id="email">
            </div>
            <div class="fieldcontain required">
                <label for="dni">Dni<span class="required-indicator">*</span></label>
                <input type="text" name="dni" value="${this.interesado.dni}" required="" pattern="[0-9]{8}" id="dni">
            </div>
            <div class="fieldcontain required">
                <label for="apellido">Apellido<span class="required-indicator">*</span></label>
                <input type="text" name="apellido" value="${this.interesado.apellido}" required="" id="apellido">
            </div>
            <div class="fieldcontain required">
                <label for="nombre">Nombre<span class="required-indicator">*</span></label>
                <input type="text" name="nombre" value="${this.interesado.nombre}" required="" id="nombre">
            </div>
            <div class="fieldcontain required">
                <label for="categoria">Categoria<span class="required-indicator">*</span></label>
                <select name="categoria" required="" id="categoria">
                    <option value="Alumno">Alumno</option>
                    <option value="Publico General">Publico General</option>
                    <option value="Docente" selected="selected">Docente</option>
                </select>
            </div>
            
        </fieldset>
                <fieldset class="buttons">
                    <button type="submit" class="save btn btn-success">Editar Interesado</button>
                </fieldset>
    </form>















<div class="fieldcontain required">
    <label for="cargo">Cargo<span class="required-indicator">*</span></label>
    <select name="cargo" required="" id="cargo">
        <option value="Decano">Decano</option>
        <option value="Secretario">Secretario</option>
        <option value="Secretaria">Secretaria</option>
        <option value="Academico">Academico</option>
        <option value="Director Departamento">Director Departamento</option>
        <option value="Directora Departamento">Directora Departamento</option>
    </select>
</div>
<div class="fieldcontain">
    <label for="firma">Firma</label><input type="file" name="firma" value="" id="firma">
</div>
<div class="fieldcontain">

  <label for="cursos">Cursos</label>
  <select name="cursos" id="cursos" multiple="">
    <g:each in="${cursos?}">
                <option value="${it.id}">${it.nombre} </option>
    </g:each>
</select>
</div>



 <div class='fieldcontain'>
        <label for='expositores'>Expositores</label>
        <select name="expositores" id="expositores" multiple="" >
            <g:each in="${expositores?}">
                <option value="${it.id}">${it.apellido} ${it.nombre}</option>
            </g:each>
        </select>
</div>


                </fieldset>
                <fieldset class="buttons">
                    <button type="submit" name="create" class="save btn btn-success">crear</button>
                </fieldset>
            </form>





<fieldset class="form">
                    <div class="fieldcontain required">
  <label for="nombreUsuario">Nombre Usuario
    <span class="required-indicator">*</span>
  </label><input type="text" name="nombreUsuario" value="GABRIEL1" required="" id="nombreUsuario">
</div><div class="fieldcontain required">
  <label for="password">Password
    <span class="required-indicator">*</span>
  </label><input type="text" name="password" value="efe6398127928f1b2e9ef3207fb82663" required="" id="password">
</div><div class="fieldcontain required">
  <label for="email">Email
    <span class="required-indicator">*</span>
  </label><input type="email" name="email" value="gabrielww@gmail.com" required="" id="email">
</div><div class="fieldcontain required">
  <label for="dni">Dni
    <span class="required-indicator">*</span>
  </label><input type="text" name="dni" value="39991673" required="" pattern="[0-9]{8}" id="dni">
</div><div class="fieldcontain required">
  <label for="apellido">Apellido
    <span class="required-indicator">*</span>
  </label><input type="text" name="apellido" value="QUIPILDIR" required="" id="apellido">
</div><div class="fieldcontain required">
  <label for="nombre">Nombre
    <span class="required-indicator">*</span>
  </label><input type="text" name="nombre" value="GABRIEL" required="" id="nombre">
</div><div class="fieldcontain required">
  <label for="cargo">Cargo
    <span class="required-indicator">*</span>
  </label><select name="cargo" required="" id="cargo">
<option value="Decano">Decano</option>
<option value="Secretario">Secretario</option>
<option value="Secretaria" selected="selected">Secretaria</option>
<option value="Academico">Academico</option>
<option value="Director Departamento">Director Departamento</option>
<option value="Directora Departamento">Directora Departamento</option>
</select>
</div><div class="fieldcontain">
  <label for="firma">Firma</label><input type="file" name="firma" value="[B@55430216" id="firma">
</div><div class="fieldcontain">
  <label for="cursos">Cursos</label><select name="cursos" id="cursos" multiple="">
<option value="6">Programacion Web</option>
<option value="7">Diseño Web</option>
</select>
</div>
                </fieldset>




