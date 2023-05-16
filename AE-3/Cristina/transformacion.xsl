<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <instituto>
            <informacion>
                <empresa>
                    <xsl:value-of select="ite/empresa" />
                </empresa>
                <telefono>
                    <xsl:value-of select="ite/telefono" />
                </telefono>
            </informacion>
            <organigrama>
                <direccion>
                    <trabajador cargo="Director">
                        <nombre>
                            <xsl:value-of select="ite/director/nombre" />
                        </nombre>
                        <ubicacion>
                            <xsl:value-of select="ite/director/despacho" />
                        </ubicacion>
                    </trabajador>
                    <trabajador cargo="Jefe de Estudio">
                        <nombre>
                            <xsl:value-of select="ite/jefe_estudios/nombre" />
                        </nombre>
                        <ubicacion>
                            <xsl:value-of select="ite/jefe_estudios/despacho" />
                        </ubicacion>
                    </trabajador>
                </direccion>
                <profesorado>
                    <xsl:for-each select="ite/profesores/profesor">
                        <profesor id="{id}">
                            <nombre>
                                <xsl:value-of select="nombre" />
                            </nombre>
                        </profesor>
                    </xsl:for-each>
                </profesorado>
            </organigrama>
            <estudios>
                <xsl:for-each select="ite/ciclos/ciclo">
                    <formacion_profesional nivel="{grado}" siglas="{@id}"
                        año_decreto="{decretoTitulo/@año}">
                        <nombre>
                            <xsl:value-of select="nombre" />
                        </nombre>
                    </formacion_profesional>
                </xsl:for-each>
            </estudios>
        </instituto>

    </xsl:template>
</xsl:stylesheet>