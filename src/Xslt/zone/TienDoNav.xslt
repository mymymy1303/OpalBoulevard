<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
    xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
    <xsl:output method='html' indent='yes' />
    <xsl:template match='/'>
        <select class="selectNav">
            <xsl:apply-templates select='/ZoneList/Zone' mode="Zone1"></xsl:apply-templates>
        </select>
    </xsl:template>

    <xsl:template match='Zone' mode="Zone1">
        <xsl:if test="IsActive='true'">
            <xsl:apply-templates select='Zone' mode="Zone2"></xsl:apply-templates>
        </xsl:if>
    </xsl:template>

    <xsl:template match='Zone' mode="Zone2">
        <option>
            <xsl:attribute name='value'>
                <xsl:value-of disable-output-escaping='yes' select='Url'></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
        </option>
    </xsl:template>
</xsl:stylesheet>