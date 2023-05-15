<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>
          <xsl:value-of select="ite/@nombre" />
        </title>
      </head>
      <body>
        <h1>
          <a href="{ite/@web}">
            <xsl:value-of select="ite/@nombre" />
          </a>
        </h1>
        <h2>Información de contacto EDIX: </h2>
        <p>Empresa: <xsl:value-of select="ite/empresa" /></p>
        <p>Teléfono: <xsl:value-of select="ite/telefono" /></p>
        <h2>Profesores</h2>
        <ul>
          <xsl:for-each select="ite/profesores/profesor">
            <li>
              <xsl:value-of select="./nombre" />
            </li>
          </xsl:for-each>
        </ul>
        <h2>Dirección del Instituto Tecnológico EDIX</h2>
        <table>
          <thead>
            <tr>
              <th>Cargo</th>
              <th>Nombre</th>
              <th>Despacho</th>
            </tr>
          </thead>
          <tr>
            <td>Director</td>
            <td>
              <xsl:value-of select="ite/director/nombre" />
            </td>
            <td>
              <xsl:value-of select="ite/director/despacho" />
            </td>
          </tr>
          <tr>
            <td>Jefe de estudios:</td>
            <td>
              <xsl:value-of select="ite/jefe_estudios/nombre" />
            </td>
            <td>
              <xsl:value-of select="ite/jefe_estudios/despacho" />
            </td>
          </tr>
        </table>
        <h2>Ciclos formativos</h2>
        <table>
          <thead>
            <tr>
              <th>Siglas</th>
              <th>Nombre</th>
              <th>Grado</th>
              <th>Año decreto título</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="ite/ciclos/ciclo">
              <tr>
                <td>
                  <xsl:value-of select="@id" />
                </td>
                <td>
                  <xsl:value-of select="nombre" />
                </td>
                <td>
                  <xsl:value-of select="grado" />
                </td>
                <td>
                  <xsl:value-of select="decretoTitulo/@año" />
                </td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
        <h2>Enlaces de interés</h2>
        <ul>
          <li>
            <a href="https://www.edix.com/">Edix</a>
          </li>
          <li>
            <a href="https://www.proeduca.es/">Proeduca</a>
          </li>
        </ul>
        <h2>Formulario de contacto</h2>
        <form>
          <label>Nombre:</label>
          <input type="text" name="nombre" />
          <br />
          <label>Email:</label>
          <input type="email" name="email" />
          <br />
          <label>Mensaje:</label>
          <textarea name="mensaje"></textarea>
          <br />
          <input type="submit" value="Enviar" />
        </form>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>