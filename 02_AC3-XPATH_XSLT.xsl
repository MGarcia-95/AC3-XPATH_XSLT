<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Instituto Tecnológico Edix</title>
            </head>
            <body>
                <h1><xsl:value-of select="ite/empresa"/></h1>
                <p>Teléfono: <xsl:value-of select="ite/telefono"/></p>

                <xsl:for-each select="ite">
                    <h2>Profesores:</h2>
                    <table border="1" cellpadding="5px">
					    <thead>
						    <tr>
							    <th>ID</th>
							    <th>Nombre</th>
						    </tr>
					    </thead>

					    <tbody>
						    <xsl:for-each select="profesores/profesor">
							    <tr>
								    <td><xsl:value-of select="id"/></td>
								    <td><xsl:value-of select="nombre"/></td>
							    </tr>
						    </xsl:for-each> <!-- Fin de for each de escala-->
					    </tbody>
					</table>

                    <h2>Director</h2>
						<ul>
                    		<li><p>Nombre: <xsl:value-of select="director/nombre"/></p></li>
                    		<li><p>Despacho: <xsl:value-of select="director/despacho"/></p></li>
                   		</ul>
                    <h2>Jefe de estudios</h2>
						<ul>
                    		<li><p>Nombre <xsl:value-of select="jefe_estudios/nombre"/></p></li>
                    		<li><p>Despacho <xsl:value-of select="jefe_estudios/despacho"/></p></li>
						</ul>
                    <h2>Ciclos formativos</h2>
                    <table border="1" cellpadding="5px">
					    <thead>
						    <tr>
							    <th>ID</th>
							    <th>Nombre</th>
                                <th>Tipo grado</th>
							    <th>Año decreto</th>
						    </tr>
					    </thead>

					    <tbody>
						    <xsl:for-each select="ciclos/ciclo">
							    <tr>
								    <td><xsl:value-of select="@id"/></td>
								    <td><xsl:value-of select="nombre"/></td>
                                    <td><xsl:value-of select="grado"/></td>
								    <td><xsl:value-of select="decretoTitulo/@año"/></td>
							    </tr>
						    </xsl:for-each> <!-- Fin de for each de escala-->
					    </tbody>
					</table>

                </xsl:for-each>

				
				<h3>Enlaces de interés: </h3>
				<!-- Todos los enlaces se han puesto con el atributo target="_blank" para que se abran en una pestaña nueva -->
				<p>Página oficial de Edix/Unir: <a href="https://www.edix.com/es/" target="_blank">Sitio web Edix</a></p>
				<p>Grado de ASIR: <a href="https://unirfp.unir.net/ingenieria/fp-grado-asir/" target="_blank">Sitio web Edix</a></p>
				<p>Grado DAM: <a href="https://unirfp.unir.net/ingenieria/fp-grado-desarrollo-aplicaciones-multiplataforma-dam/" target="_blank">Sitio web Edix</a></p>
				<p>Grado DAW: <a href="https://unirfp.unir.net/ingenieria/fp-grado-daw-desarrollo-de-aplicaciones-web/" target="_blank">Sitio web Edix</a></p>

				<h2>Solicitar información</h2>
				<form action="procesarPeticion.jsp" method="post">
					<fieldset>
						<legend>Datos personales: </legend>

						<label for="nombre">Nombre: </label>
						<input id="nombre" type="text" name="nombre" />
            			<br/>

						<label for="apellido">Apellidos: </label>
						<input id="apellido" type="text" />
            			<br/>

						<label for="email">Email: </label>
						<input id="email" type="text" />
            			<br/>
						<br/>

						<label for="grados">Quiero información sobre el grado de:  </label>
            			<select name="dia_nacimiento">
							<option value="SEL" selected="true">Selecciona un grado</option>
                			<option value="ASIR">Sistemas informáticos en red </option>
                			<option value="DAM" >Desarrolo de aplicaciones multiplataforma</option>
               				<option value="DAW" >Desarrolo de aplicaciones web</option>
                			
           				 </select>
            			<br />
						<br/>

						<label for="modalidad">Escoge tu modalidad: </label>
            			<br />	
            			<input type="radio" name="modalidad" value="P" />Presencial<br />	
            			<input type="radio" name="modalidad" value="O" checked="true"/>Online<br />

						<br/>
            			<label for="mensaje">Escríbenos tus dudas: </label>
            			<br />	
            			<textarea style="resize: none;" rows="5" cols="70" name="mensaje"></textarea>

						<br/>
            			<br/>
            			<label for="terminos">¿Acepta los terminos de uso? </label>
            			<br/>	
            			 He leido y acepto los terminos de uso <input type="checkbox" name="terminos" value="Y" />
            			<br/>	
						<br/>	
            			<input type="submit" value="Enviar formulario" />
            			<input type="reset" value="Limpiar formulario" />
					
					
					</fieldset>
				
				
				</form>

			
			
			
			</body>
			<footer>
				<p>Todos los derechos reservados </p>
				<p>Copyright © 2023 Edix</p>
			</footer>

        </html>
    </xsl:template>
</xsl:stylesheet>