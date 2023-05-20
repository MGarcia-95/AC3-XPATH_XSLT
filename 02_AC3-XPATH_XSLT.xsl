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
                    <table border="1">
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
                    <p>Nombre: <xsl:value-of select="director/nombre"/></p>
                    <p>Despacho: <xsl:value-of select="director/despacho"/></p>
                    
                    <h2>Jefe de estudios</h2>
                    <p>Nombre <xsl:value-of select="jefe_estudios/nombre"/></p>
                    <p>Despacho <xsl:value-of select="jefe_estudios/despacho"/></p>

                    <h2>Ciclos formativos</h2>
                    <table border="1">
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
            </body>

        </html>
    </xsl:template>
</xsl:stylesheet>