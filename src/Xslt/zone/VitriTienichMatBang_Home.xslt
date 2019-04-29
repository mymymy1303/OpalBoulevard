<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
    xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
    <xsl:output method='html' indent='yes' />
    <xsl:template match='/'>
        <xsl:apply-templates select='/ZoneList/Zone'></xsl:apply-templates>
    </xsl:template>

    <xsl:template match='Zone'>
        <div class="home-parallax" data-parallax="scroll" data-speed="0.3">
            <xsl:attribute name='data-image-src'>
                <xsl:value-of disable-output-escaping='yes' select='ImageUrl'></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name='data-image-src-mobile'>
                <xsl:value-of disable-output-escaping='yes' select='ImageUrl'></xsl:value-of>
            </xsl:attribute>
            <div class="container">
                <h2>
                    <xsl:value-of disable-output-escaping='yes' select='Description'></xsl:value-of>
                </h2>
                <div class="link">
                    <a>
                        <xsl:attribute name='href'>
                            <xsl:value-of select='Url'></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name='target'>
                            <xsl:value-of select='Target'></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name='title'>
                            <xsl:value-of select='Title'></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of disable-output-escaping='yes' select='/ZoneList/ViewText'></xsl:value-of>
                        <xsl:text> </xsl:text>
                        <span style="text-transform: lowercase;">
                            <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
                        </span>
                    </a>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>