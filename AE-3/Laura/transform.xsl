<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <instituto>
            <informacion>
                <empresa><xsl:value-of select="ite/empresa" /></empresa>
                <telefono><xsl:value-of select="ite/telefono" /></telefono>
            </informacion>
            <estructura>
                <direccion>
                    <rol trabajo="">
                        <nombre></nombre>
                        <despacho></despacho>
                    </rol>
                </direccion>
                <profesor>
                    <profesor id="{id}">
                        <nombre></nombre>
                        <asignatura></asignatura>
                    </profesor>
                </profesor>
            </estructura>
            <ciclos>
                <ciclo grado="{grado}" siglas="{@id}" año_decreto="decretoTitulo/@año"> 
                    <nombre>
                    </nombre>
                </ciclo>
            </ciclos>
        </instituto>

    </xsl:template>
</xsl:stylesheet>