<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
    xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
    <xsl:output method='html' indent='yes' />
    <xsl:template match='/'>
        <h1 class="gradient-title">
            <xsl:value-of disable-output-escaping='yes' select='/NewsList/ModuleTitle'></xsl:value-of>
        </h1>
        <div class="row">
            <xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
        </div>
    </xsl:template>

    <xsl:template match='News'>
        <div class="col-md-6 col-lg-4">
            <a class="tiendo">
                <xsl:attribute name='onclick'>
                    <xsl:text>fancyboxImages('tiendo-</xsl:text>
                    <xsl:value-of disable-output-escaping='yes' select='NewsId'></xsl:value-of>
                    <xsl:text>')</xsl:text>
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
                    <div class="icon">
                        <img class="lazyload blur-up" data-src="/Data/Sites/1/media/default/img/search-icon.png"
                            alt="" />
                    </div>
                </div>
                <div class="title">
                    <h2>
                        <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
                    </h2>
                </div>
                <div class="images hidden">
                    <xsl:if test="count(NewsImages) &gt; 1">
                        <xsl:apply-templates select='NewsImages'>
                            <xsl:with-param name="galleryId" select="NewsId"></xsl:with-param>
                        </xsl:apply-templates>
                    </xsl:if>
                </div>
            </a>
            <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
        </div>
    </xsl:template>


    <xsl:template match='NewsImages'>
        <xsl:param name="galleryId"></xsl:param>
        <xsl:if test="position() &gt; 1">
            <img class='lazyload blur-up'>
            <xsl:attribute name='data-src'>
                <xsl:value-of select='ImageUrl'></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name='data-thumb'>
                <xsl:value-of select='ImageUrl'></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name='alt'>
                <xsl:value-of select='Title'></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name='title'>
                <xsl:value-of select='Title'></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name='data-fancybox'>
                <xsl:text>tiendo-</xsl:text>
                <xsl:value-of disable-output-escaping='yes' select='$galleryId'></xsl:value-of>
            </xsl:attribute>
            </img>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>