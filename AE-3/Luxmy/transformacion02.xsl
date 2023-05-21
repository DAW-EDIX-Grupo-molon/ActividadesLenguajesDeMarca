<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <instituto>
      <info>
        <nombre><xsl:value-of select="ite/@nombre"/></nombre>
        <web><xsl:value-of select="ite/@web"/></web>
        <telefono><xsl:value-of select="ite/telefono"/></telefono>
        <empresa><xsl:value-of select="ite/empresa"/></empresa>
      </info>
      
      <organigrama>
        <director>
            <nombre><xsl:value-of select="ite/director/nombre"/></nombre>
            <despacho><xsl:value-of select="ite/director/despacho"/></despacho>
        </director>

        <jefe_estudios>
            <nombre><xsl:value-of select="ite/jefe_estudios/nombre"/></nombre>
            <despacho><xsl:value-of select="ite/jefe_estudios/despacho"/></despacho>
        </jefe_estudios>

        <profesores>
            <xsl:for-each select="ite/profesores/profesor">
                <profesor>
                <id><xsl:value-of select="id"/></id>
                <nombre><xsl:value-of select="nombre"/></nombre>
                </profesor>
            </xsl:for-each>
        </profesores>

      </organigrama>
      
      <ciclos>
        <xsl:for-each select="ite/ciclos/ciclo">
          <ciclo>
            <id><xsl:value-of select="@id"/></id>
            <nombre><xsl:value-of select="nombre"/></nombre>
            <grado><xsl:value-of select="grado"/></grado>
            <decretoTitulo>
              <año><xsl:value-of select="decretoTitulo/@año"/></año>
            </decretoTitulo>
          </ciclo>
        </xsl:for-each>
      </ciclos>
    </instituto>
  </xsl:template>

</xsl:stylesheet>
