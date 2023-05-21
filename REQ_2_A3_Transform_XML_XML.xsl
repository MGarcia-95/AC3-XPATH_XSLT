<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <ite>
            <xsl:attribute name="empresa">
                <xsl:value-of select="ite/empresa"/>
            </xsl:attribute>

            <xsl:for-each select="ite">
                <nombre><xsl:value-of select="@nombre"/></nombre>
                <web><xsl:value-of select="@web"/> </web>
                <telefono><xsl:value-of select="telefono"/></telefono>
                
                <profesores>
                    <xsl:for-each select="profesores/profesor">
                        <profesor>
                            <xsl:attribute name="id">
                                <xsl:value-of select="id"/>
                            </xsl:attribute>
                            <nombre><xsl:value-of select="nombre"/></nombre>
                        </profesor>
                    </xsl:for-each>
                </profesores>

                <director>
                    <xsl:for-each select="director">
                        <xsl:attribute name="nombre">
                            <xsl:value-of select="nombre"/>
                        </xsl:attribute>
                        <despacho_director><xsl:value-of select="despacho"/></despacho_director>
                    </xsl:for-each>
                </director>

                <jefe_estudios>
                    <xsl:for-each select="jefe_estudios">
                        <xsl:attribute name="nombre_j_e">
                            <xsl:value-of select="nombre"/>
                        </xsl:attribute>
                        <despacho_j_e><xsl:value-of select="despacho"/></despacho_j_e>
                    </xsl:for-each>
                </jefe_estudios>

                <ciclos_formativos>
                    <xsl:for-each select="ciclos/ciclo">
                        <ciclo_fp>
                            <xsl:attribute name="ID">
                                <xsl:value-of select="@id"/>
                            </xsl:attribute>

                            <xsl:attribute name="tipo_ciclo">
                                <xsl:value-of select="grado"/>
                            </xsl:attribute>
                            
                            <nombre_ciclo><xsl:value-of select="nombre"/></nombre_ciclo>
                            <decreto_titulo_año><xsl:value-of select="decretoTitulo/@año"/></decreto_titulo_año>
                        </ciclo_fp>
                    </xsl:for-each>
                </ciclos_formativos>
            </xsl:for-each>

        </ite>
    </xsl:template>
</xsl:stylesheet>