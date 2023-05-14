<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <instituto>
            <informacion>
                <empresa><xsl:value-of select="ite/empresa" /></empresa>
                <telefono><xsl:value-of select="ite/telefono" /></telefono>
            </informacion>
            <organigrama>
                <direccion>
                    <trabajador cargo="">
                        <nombre></nombre>
                        <despacho></despacho>
                    </trabajador>
                </direccion>
                <profesorado>
                    <profesor id="">
                        <nombre></nombre>
                        <asignatura></asignatura>
                    </profesor>
                </profesorado>
            </organigrama>
            <ciclos>
                <ciclo grado="" siglas="" año_decreto=""> 
                    <nombre>
                    </nombre>
                </ciclo>
            </ciclos>
        </instituto>

    </xsl:template>
</xsl:stylesheet>