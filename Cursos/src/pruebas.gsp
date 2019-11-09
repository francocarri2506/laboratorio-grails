
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









<div id="list-interesado" class="content scaffold-list" role="main">
            <h1>LISTA DE INTERESADOS</h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            
    <g:if test="${interesadoList}">
        
        <div class="tabla_nth_child">
                <table class="table">
                    <tr>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Dni</th>
                        <th>Email</th>
                        <th>Cargo</th>
                       
                    </tr>
                    <g:each in="${interesadoList}">
                    <tr class="danger">
                        <td><div><label id="nombre">${it.nombre} </label> </div></td>
                        <td><div><label id="apellido">${it.apellido} </label></div></td>
                        <td><div><label id="dni">${it.dni} </label> </div></td>
                        <td><div><label id="email">${it.email} </label> </div></td>
                        <td><div><label id="email">${it.cargo} </label> </div></td>
                    </tr>
                    </g:each>            
                </table>

            <div class="pagination">
                <g:paginate total="${interesadoCount ?: 0}" />
            </div>
        </div>
        </div>




        <div id="list-interesado" class="content scaffold-list" role="main">
            <h1>LISTA DE INTERESADOS</h1>
            
            <table>
    <thead>
         <tr>
            
                <th class="sortable"><a href="/interesado/index?sort=nombreUsuario&amp;max=10&amp;order=asc">Nombre Usuario</a></th>
            
                <th class="sortable"><a href="/interesado/index?sort=password&amp;max=10&amp;order=asc">Password</a></th>
            
                <th class="sortable"><a href="/interesado/index?sort=email&amp;max=10&amp;order=asc">Email</a></th>
            
                <th class="sortable"><a href="/interesado/index?sort=dni&amp;max=10&amp;order=asc">Dni</a></th>
            
                <th class="sortable"><a href="/interesado/index?sort=apellido&amp;max=10&amp;order=asc">Apellido</a></th>
            
                <th class="sortable"><a href="/interesado/index?sort=nombre&amp;max=10&amp;order=asc">Nombre</a></th>
            
                <th class="sortable"><a href="/interesado/index?sort=categoria&amp;max=10&amp;order=asc">Categoria</a></th>
            
        </tr>
    </thead>
    <tbody>
        
            <tr class="even">
                
                    
                        <td><a href="/interesado/show/4">GABRIEL</a></td>
                    
                
                    
                        <td>e961b2ac40aac4cc36a8bf65bca9177e</td>
                    
                
                    
                        <td>gabriel@gmail.com</td>
                    
                
                    
                        <td>39998125</td>
                    
                
                    
                        <td>PACHECO</td>
                    
                
                    
                        <td>GABRIEL</td>
                    
                
                    
                        <td>Alumno</td>
                    
                
            </tr>
        
            <tr class="odd">
                
                    
                        <td><a href="/interesado/show/9">FRANCO1212</a></td>
                    
                
                    
                        <td>e961b2ac40aac4cc36a8bf65bca9177e</td>
                    
                
                    
                        <td>carrizonicolasfranco1@gmail.com</td>
                    
                
                    
                        <td>26352569</td>
                    
                
                    
                        <td>CARRIZO1</td>
                    
                
                    
                        <td>NICOLAS1</td>
                    
                
                    
                        <td>Alumno</td>
                    
                
            </tr>
        
            <tr class="even">
                
                    
                        <td><a href="/interesado/show/13">GIMENA1</a></td>
                    
                
                    
                        <td>f4c276d518db1ad3dbc2400036ad0362</td>
                    
                
                    
                        <td>carrizonicolasfranco2@gmail.com</td>
                    
                
                    
                        <td>67345554</td>
                    
                
                    
                        <td>CARRIZO3</td>
                    
                
                    
                        <td>GIMENA</td>
                    
                
                    
                        <td>Publico General</td>
                    
                
            </tr>
        
            <tr class="odd">
                
                    
                        <td><a href="/interesado/show/14">FRANCOCARRIZO</a></td>
                    
                
                    
                        <td>e961b2ac40aac4cc36a8bf65bca9177e</td>
                    
                
                    
                        <td>carrizonicolasfranco3@gmail.com</td>
                    
                
                    
                        <td>39910673</td>
                    
                
                    
                        <td>CARRIZO</td>
                    
                
                    
                        <td>NICOLAS</td>
                    
                
                    
                        <td>Docente</td>
                    
                
            </tr>
        
    </tbody>
</table>

            <div class="pagination">
                
            </div>
        </div>