<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
    xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
    <xsl:output method='html' indent='yes' />
    <xsl:template match='/'>
        <div class="container">
            <h1 class="gradient-title">
                <xsl:value-of disable-output-escaping='yes' select='/NewsList/ModuleTitle'></xsl:value-of>
            </h1>
            <div class="row">
                <xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>

    <xsl:template match='News'>

        <div class="col-sm-6 col-lg-3">
            <a class="item" href="javascript:void(0)">
                <xsl:attribute name='title'>
                    <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name='href'>
                    <xsl:value-of disable-output-escaping='yes' select='FileUrl'></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name='download'>
                    <xsl:text></xsl:text>
                </xsl:attribute>
                <div class="img">
                    <img class='lazyload blur-up' data-object-fit-cover="">
                    <xsl:attribute name='data-src'>
                        <xsl:value-of select='ImageUrl'></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name='alt'>
                        <xsl:value-of select='Title'></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name='title'>
                        <xsl:value-of select='Title'></xsl:value-of>
                    </xsl:attribute>
                    </img>
                </div>
                <div class="title">
                    <h2>
                        <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
                    </h2>
                </div>
            </a>
            <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
        </div>
    </xsl:template>
</xsl:stylesheet>