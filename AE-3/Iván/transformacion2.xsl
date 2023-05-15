<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <empresa nombre="{ite/empresa}" telefono="{ite/telefono}">
            <marca enlace="{ite/@web}">
                <nombre><xsl:value-of select="ite/@nombre" /></nombre>
                <empleados>
                    <direccion>
                        <director despacho="{ite/director/despacho}"><xsl:value-of select="ite/director/nombre" /></director>
                        <jefe_estudios despacho="{ite/jefe_estudios/despacho}"><xsl:value-of select="ite/jefe_estudios/nombre" /></jefe_estudios>
                    </direccion>
                    <profesores>
                        <xsl:for-each select="ite/profesores/profesor">
                            <profesor id="{id}">
                                <xsl:value-of select="nombre" />
                            </profesor>
                        </xsl:for-each>
                    </profesores>
                </empleados>
                <oferta_academica>
                    <CFGS>
                        <xsl:for-each select="ite/ciclos/ciclo">
                            <ciclo decretoTitulo="decretoTitulo/@año">
                                <nombre grado="{grado}" aka="{@id}">
                                    <xsl:value-of select="nombre" />
                                </nombre>
                            </ciclo>
                        </xsl:for-each>
                    </CFGS>
                </oferta_academica>
            </marca>
        </empresa>
    </xsl:template>
</xsl:stylesheet>