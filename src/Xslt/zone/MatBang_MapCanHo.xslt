<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
    xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
    <xsl:output method='html' indent='yes' />
    <xsl:template match='/'>
        <div class="desc">
            <xsl:value-of disable-output-escaping='yes' select='/ZoneList/ModuleTitle'></xsl:value-of>
        </div>
        <xsl:apply-templates select='/ZoneList/Zone' mode="Zone1"></xsl:apply-templates>
    </xsl:template>

    <xsl:template match='Zone' mode="Zone1">
        <xsl:if test="IsActive='true'">
            <xsl:apply-templates select='Zone' mode="Zone2"></xsl:apply-templates>
        </xsl:if>
    </xsl:template>

    <xsl:template match='Zone' mode="Zone2">
        <xsl:if test="IsActive='true'">
            <xsl:apply-templates select='Zone' mode="Zone3"></xsl:apply-templates>
        </xsl:if>
    </xsl:template>

    <xsl:template match='Zone' mode="Zone3">
        <xsl:if test="IsActive='true'">
            <h1 class="gradient-title center">
                <xsl:value-of disable-output-escaping='yes' select='SecondImageUrl'></xsl:value-of>
            </h1>
            <div class="imagemap-wrapper">
                <div class="map-wrapper">
                    <img>
                    <xsl:attribute name='src'>
                        <xsl:value-of select='ImageUrl'></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name='alt'>
                        <xsl:value-of select='Title'></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name='title'>
                        <xsl:value-of select='Title'></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name='usemap'>
                        <xsl:text>#matbang-map-</xsl:text>
                        <xsl:value-of disable-output-escaping='yes' select='ZoneId'></xsl:value-of>
                    </xsl:attribute>
                    </img>
                    <map>
                        <xsl:attribute name='name'>
                            <xsl:text>matbang-map-</xsl:text>
                            <xsl:value-of disable-output-escaping='yes' select='ZoneId'></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of disable-output-escaping='yes' select='Description'></xsl:value-of>
                    </map>
                </div>
                <div class="tooltip-wrapper">
                </div>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>