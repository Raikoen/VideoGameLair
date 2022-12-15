<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
      <title>By Publisher</title>
      <link rel="stylesheet" type="text/css" href="styles.css"/>
      <link rel="stylesheet" href="jquery-ui.min.css"/>
      <script src="jquery.js"></script>
      <script src="jquery-ui.min.js"></script>
      <script type="text/javascript" src="tool-tip.js"></script> 
    </head>

  <body>
     <div id="wrap-page">

      <header id="header">
        <nav id="nav-bar">
          <a class="nav-link" href="home.xml" title="Home" style="font-size: 15; font-weight: bold">VIDEO GAME LAIR</a>
          <a class="nav-link" href="title.xml" title="Sort by title">By Title</a>
          <a class="nav-link" href="platform.xml" title="Sort by platform">By Platform</a>
          <a class="nav-link" href="publisher.xml" title= "Sort by publisher">By Publisher</a>
        </nav>  
      </header>

      <center>
      <section id="background-info">
        <h1>Sort by Publisher</h1>
        This table has my video games sorted based on publisher.
      </section>

      <h2>By Publisher</h2>
      <section>
 
      <table>
        <tr>
          <th>Title</th>
          <th>Platform</th>
          <th>Publisher</th>
        </tr>
        <xsl:for-each select="VideoGames/Game">
          <xsl:sort select="Publisher"/>
          <tr>
            <td><xsl:value-of select="Title"/></td>
            <td><xsl:value-of select="Platform"/></td>
            <td><xsl:value-of select="Publisher"/></td>
          </tr>
        </xsl:for-each>
      </table>

    </section>
    </center>
    </div>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>

