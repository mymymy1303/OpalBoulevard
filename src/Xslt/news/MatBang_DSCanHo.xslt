<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <div class="map-list-3 hidden">
            <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
        </div>
    </xsl:template>

    <xsl:template match="News">
        <div class="map-list-info">
            <xsl:attribute name="data-map">
                <xsl:value-of disable-output-escaping="yes" select="NewsId"></xsl:value-of>
            </xsl:attribute>
            <div class="title">
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            </div>
            <div class="url hidden">
                <xsl:value-of disable-output-escaping="yes" select="Url"></xsl:value-of>
            </div>
            <div class="pointer"></div>
        </div>
        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
    </xsl:template>
</xsl:stylesheet>