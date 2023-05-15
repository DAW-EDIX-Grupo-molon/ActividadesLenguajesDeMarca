<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title><xsl:value-of select="ite/@nombre" /></title>
                <link rel="icon" type="image/x-icon" href="../Solución_final/img/favicon.ico" />
                <link rel="stylesheet" href="../Solución_final/main.css" />
            </head>
            <body class="bg-black fullWidth fullHehight displayFlex perfectCenter">

                <div class="bg-grey-ultra color-dark p25 fitContentWidth fitContentHeight border3px borderRadius15">
                    <!-- Título -->
                    <div>
                        <h1 class="titulo"><a href="{ite/@web}"><xsl:value-of select="ite/@nombre" /></a></h1>
                    </div>

                    <!-- Tabla dirección escolar -->
                    <div class="mt15">
                        <span class="txt-bold-color">DIRECCIÓN ESCOLAR</span>
                        <div class="displayFlex fullWidth">
                            <ul>
                                <li class="txt-bold">Director:</li>
                                    <ul>
                                        <li><xsl:value-of select="ite/director/nombre" /></li>
                                        <li><xsl:value-of select="ite/director/despacho" /></li>
                                    </ul>
                            </ul>
                            <ul>
                                <li class="txt-bold">Jefe de estudios:</li>
                                    <ul>
                                        <li><xsl:value-of select="ite/jefe_estudios/nombre" /></li>
                                        <li><xsl:value-of select="ite/jefe_estudios/despacho" /></li>
                                    </ul>
                            </ul>
                        </div>
                    </div>


                    <div class="displayFlex seccTablas mt15">
                        <!-- Tabla profesores -->
                        <div class="width40">
                            <table class="fullWidth">
                                <tr>
                                    <th colspan="2" class="txt-bold-color bg-black text-left">PROFESORES</th>
                                </tr>
                                <tr border="1px">
                                    <td width="40%" class="txt-bold">ID</td>
                                    <td width="60%" class="txt-bold">Nombre</td>
                                </tr>
                                <xsl:for-each select="ite/profesores/profesor">
                                    <tr>
                                        <td width="40%"><xsl:value-of select="id" /></td>
                                        <td width="60%"><xsl:value-of select="nombre" /></td>
                                    </tr>
                                </xsl:for-each>
                            </table>
                        </div>

                        <!-- Ciclos -->
                        <div id="tabla2" class="width60">
                            <table class="fullWidth">
                                <tr>
                                    <th colspan="3" class="txt-bold-color bg-black text-left">CICLOS</th>
                                </tr>
                                <tr border="1">
                                    <td class="txt-bold">Nombre</td>
                                    <td class="txt-bold">Grado</td>
                                    <td class="txt-bold">Convocatoria</td>
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
                    <div class="mt15 displayFlex perfectCenter fullWidth">
                        <div class=" displayFlex footer">
                            <div class="fullWidth text-center">
                                <p><span>EMPRESA:</span></p>
                                <p><span class="txt-bold"><xsl:value-of select="ite/empresa"/></span></p>
                            </div>
                            <div class="fullWidth text-center">
                                <p><span>Teléfono</span></p>
                                <a href="tel:{ite/telefono}"><span class="txt-bold"><xsl:value-of select="ite/telefono" /></span></a>
                            </div>
                            <div class="fullWidth text-center displayFlex perfectCenter flexColumn">
                                <p><span>Powered by</span></p>
                                <div class="contendorIMG" style="text-align:center;">
                                    <img src="../Solución_final/img/UNIR.png" />
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>