<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" />

    
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/tienda">
        
        <html lang="en">
            <head>
                <title><xsl:value-of select="titl"/></title>
                <link rel="stylesheet" href="style.css"/>
            </head>
            <body>
                <header><xsl:value-of select="title"/></header>
                <section id="intro">
                    <h1><xsl:value-of select="encabezado"/></h1>
                    <p><xsl:value-of select="descripcion"/></p>
                </section>
                <section id="inventario">
                    <h2>Productos:</h2>
                    <div class="contenedor_productos">
                        <xsl:for-each select="/tienda/inventario/producto">
                            <div class="producto">
                                <h3><xsl:value-of select="titulo"/></h3>
                                <h4><xsl:value-of select="precio"/></h4>
                                <p><xsl:value-of select="descripcion"/></p>
                                
                            </div>
                        </xsl:for-each>
                    </div>
                </section>
            </body>
        </html>
    </xsl:template>
    
    
    
</xsl:stylesheet>


   
    



