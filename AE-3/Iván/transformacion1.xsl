<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title><xsl:value-of select="ite/@nombre" /></title>
            </head>
            <body>

                <div>
                    <!-- Título -->
                    <div>
                        <h1><a href="{ite/@web}"><xsl:value-of select="ite/@nombre" /></a></h1>
                    </div>

                    <!-- Tabla dirección escolar -->
                    <div>
                        <span>DIRECCIÓN ESCOLAR</span>
                        <div>
                            <ul>
                                <li>Director:</li>
                                    <ul>
                                        <li><xsl:value-of select="ite/director/nombre" /></li>
                                        <li><xsl:value-of select="ite/director/despacho" /></li>
                                    </ul>
                            </ul>
                            <ul>
                                <li>Jefe de estudios:</li>
                                    <ul>
                                        <li><xsl:value-of select="ite/jefe_estudios/nombre" /></li>
                                        <li><xsl:value-of select="ite/jefe_estudios/despacho" /></li>
                                    </ul>
                            </ul>
                        </div>
                    </div>


                    <div>
                        <!-- Tabla profesores -->
                        <div>
                            <table>
                                <tr>
                                    <th colspan="2">PROFESORES</th>
                                </tr>
                                <tr>
                                    <td>ID</td>
                                    <td>Nombre</td>
                                </tr>
                                <xsl:for-each select="ite/profesores/profesor">
                                    <tr>
                                        <td><xsl:value-of select="id" /></td>
                                        <td><xsl:value-of select="nombre" /></td>
                                    </tr>
                                </xsl:for-each>
                            </table>
                        </div>

                        <!-- Ciclos -->
                        <div>
                            <table class="fullWidth">
                                <tr>
                                    <th colspan="3" class="txt-bold-color bg-black text-left">CICLOS</th>
                                </tr>
                                <tr>
                                    <td>Nombre</td>
                                    <td>Grado</td>
                                    <td>Convocatoria</td>
                                </tr>
                                <xsl:for-each select="ite/ciclos/ciclo">
                                    <tr>
                                        <td><xsl:value-of select="nombre" /></td>
                                        <td><xsl:value-of select="grado" /></td>
                                        <td><xsl:value-of select="decretoTitulo/@año" /></td>
                                    </tr>
                                </xsl:for-each>
                            </table>
                        </div>
                    </div>

                    <!-- Footer -->
                    <div>
                        <div>
                            <div>
                                <p><span>EMPRESA:</span></p>
                                <p><span><xsl:value-of select="ite/empresa"/></span></p>
                            </div>
                            <div>
                                <p><span>Teléfono</span></p>
                                <p><span><xsl:value-of select="ite/telefono" /></span></p>
                            </div>
                            <div>
                                <p><span>Powered by</span></p>
                                <div style="width:150px;">
                                    <img style="width:100%;" src="../Solución_final/img/UNIR.png" />
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>