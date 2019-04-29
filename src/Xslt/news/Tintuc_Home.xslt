<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
    xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
    <xsl:output method='html' indent='yes' />
    <xsl:template match='/'>
        <div class="home-6" bg-img="/Data/Sites/1/media/default/img/bg_wood.jpg"
            bg-img-mobile="/Data/Sites/1/media/default/img/bg_wood.jpg">
            <div class="container">
                <h2>
                    <xsl:value-of disable-output-escaping='yes' select='/NewsList/ModuleTitle'></xsl:value-of>
                </h2>
                <div class="row">
                    <xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
                </div>
            </div>
        </div>
    </xsl:template>

    <xsl:template match='News'>
        <div class="col-md-6 col-lg-4">
            <a class="item">
                <xsl:attribute name='href'>
                    <xsl:value-of select='Url'></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name='target'>
                    <xsl:value-of select='Target'></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name='title'>
                    <xsl:value-of select='Title'></xsl:value-of>
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
                <div class="content">
                    <h2>
                        <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
                    </h2>
                    <div class="btn-viewmore">
                        <p>
                            <xsl:value-of disable-output-escaping='yes' select='/NewsList/ViewMoreText'></xsl:value-of>
                        </p>
                    </div>
                </div>
            </a>
            <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
        </div>
    </xsl:template>
</xsl:stylesheet>