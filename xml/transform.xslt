<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Katalog Benzínek</title>
                <style>
                    body { font-family: Arial, sans-serif; margin: 20px; }
                    table { border-collapse: collapse; width: 100%; margin-bottom: 30px; }
                    th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
                    th { background-color: #f2f2f2; }
                    h2 { color: #333; }
                </style>
            </head>
            <body>
                <h1>Katalog Benzínek a Paliv</h1>

                <h2>Benzínky</h2>
                <table>
                    <tr>
                        <th>Název</th>
                        <th>Adresa</th>
                        <th>Otevírací doba</th>
                    </tr>
                    <xsl:for-each select="katalog/benzinky/benzinka">
                        <tr>
                            <td><xsl:value-of select="nazev"/></td>
                            <td><xsl:value-of select="adresa"/></td>
                            <td><xsl:value-of select="oteviraciDoba"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <h2>Paliva</h2>
                <table>
                    <tr>
                        <th>Typ</th>
                        <th>Cena (Kč)</th>
                    </tr>
                    <xsl:for-each select="katalog/paliva/palivo">
                        <tr>
                            <td><xsl:value-of select="typ"/></td>
                            <td><xsl:value-of select="cena"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <h2>Dodavatelé</h2>
                <table>
                    <tr>
                        <th>Jméno</th>
                        <th>Kontakt</th>
                        <th>Kapacita</th>
                    </tr>
                    <xsl:for-each select="katalog/dodavatele/dodavatel">
                        <tr>
                            <td><xsl:value-of select="jmeno"/></td>
                            <td><xsl:value-of select="kontakt"/></td>
                            <td><xsl:value-of select="kapacita"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>