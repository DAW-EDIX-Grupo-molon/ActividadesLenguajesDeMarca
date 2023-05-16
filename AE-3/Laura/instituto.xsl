<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>

  
  <xsl:template match="/">
    <html>
      <head>
        <title>Instituto Tecnológico Edix</title>
      </head>
      <body>
        <h1><xsl:value-of select="ite/@nombre"/></h1>

        <h2>Enlaces:</h2>
        <ul>
          <li><a href="{ite/@web}">Sitio web del Instituto</a></li>
          <li><a href="mailto:info@institutotecnologico.edix.com">Contacto por correo electrónico</a></li>
        </ul>

        <h2>Profesores:</h2>
        <table>
          <tr>
            <th>ID</th>
            <th>Nombre</th>
          </tr>
          <xsl:for-each select="ite/profesores/profesor">
            <tr>
              <td><xsl:value-of select="id"/></td>
              <td><xsl:value-of select="nombre"/></td>
            </tr>
          </xsl:for-each>
        </table>

        <h2>Jerarquía del Instituto</h2>
         <h2>Director y Jefe de Estudios:</h2>
        <table>
          <tr>
            <th>Rol</th>
            <th>Nombre</th>
            <th>Despacho</th>
          </tr>
          <tr>
            <td>Director</td>
            <td><xsl:value-of select="director/nombre"/></td>
            <td><xsl:value-of select="director/despacho"/></td>
          </tr>
          <tr>
            <td>Jefe de Estudios</td>
            <td><xsl:value-of select="jefe_estudios/nombre"/></td>
            <td><xsl:value-of select="jefe_estudios/despacho"/></td>
          </tr>
        </table>
        <h2>Ciclos:</h2>
        <table>
          <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Grado</th>
            <th>Año del decreto de título</th>
          </tr>
          <xsl:for-each select="ite/ciclos/ciclo">
            <tr>
              <td><xsl:value-of select="@id"/></td>
              <td><xsl:value-of select="nombre"/></td>
              <td><xsl:value-of select="grado"/></td>
              <td><xsl:value-of select="decretoTitulo/@año"/></td>
            </tr>
          </xsl:for-each>
        </table>

        <h2>Formulario de contacto:</h2>
        <form>
          <label for="nombre">Nombre:</label>
          <input type="text" id="nombre" name="nombre" required="required"/><br/>

          <label for="email">Email:</label>
          <input type="email" id="email" name="email" required="required"/><br/>

          <label for="mensaje">Mensaje:</label><br/>
          <textarea id="mensaje" name="mensaje" rows="5" required="required"></textarea><br/>

          <input type="submit" value="Enviar"/>
        </form>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>