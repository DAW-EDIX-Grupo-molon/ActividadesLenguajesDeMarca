<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Instituto Tecnológico Edix</title>
        <link rel="stylesheet" type="text/css" href="styles.css"/>
      </head>
      <body>
        <h1><xsl:value-of select="ite/@nombre"/></h1>
        
        <h2>Contacto:</h2>
        <p>Teléfono: <xsl:value-of select="ite/telefono"/></p>
        
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
        
        <h2>Director:</h2>
        <p><xsl:value-of select="ite/director/nombre"/></p>
        <p>Despacho: <xsl:value-of select="ite/director/despacho"/></p>
        
        <h2>Jefe de Estudios:</h2>
        <p><xsl:value-of select="ite/jefe_estudios/nombre"/></p>
        <p>Despacho: <xsl:value-of select="ite/jefe_estudios/despacho"/></p>
        
        <h2>Ciclos:</h2>
        <xsl:for-each select="ite/ciclos/ciclo">
          <h3><xsl:value-of select="nombre"/></h3>
          <p>Grado: <xsl:value-of select="grado"/></p>
          <p>Año de decreto del título: <xsl:value-of select="decretoTitulo/@año"/></p>
        </xsl:for-each>
        
        <h2>Enlaces:</h2>
        <ul>
          <li><a href="{ite/@web}">Sitio web del Instituto Tecnológico Edix</a></li>
          <li><a href="https://proeduca.com">Sitio web de Proeduca</a></li>
        </ul>
        
        <h2>Tablas:</h2>
        <table>
          <tr>
            <th>Empresa</th>
          </tr>
          <tr>
            <td><xsl:value-of select="ite/empresa"/></td>
          </tr>
        </table>
        
        <table>
          <tr>
            <th>Ciclo</th>
            <th>Grado</th>
          </tr>
          <xsl:for-each select="ite/ciclos/ciclo">
            <tr>
              <td><xsl:value-of select="nombre"/></td>
              <td><xsl:value-of select="grado"/></td>
            </tr>
          </xsl:for-each>
        </table>
        
        <h2>Formulario de contacto:</h2>
        <form action="enviar.php" method="post">
          <label for="nombre">Nombre:</label>
          <input type="text" id="nombre" name="nombre" required="" /><br />
          <label for="email">Email:</label>
          <input type="email" id="email" name="email" required="" /><br />
          <label for="mensaje">Mensaje:</label>
          <textarea id="mensaje" name="mensaje" required=""></textarea><br />
          <input type="submit" value="Enviar" />
        </form>
        
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
