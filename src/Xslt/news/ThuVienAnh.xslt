<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
    xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
    <xsl:output method='html' indent='yes' />
    <xsl:template match='/'>
        <div class="container">
            <h1 class="gradient-title">
                <xsl:value-of disable-output-escaping='yes' select='/NewsList/ZoneTitle'></xsl:value-of>
            </h1>
            <div class="row">
                <div class="col-lg-6 image-gallery-wrapper">
                    <xsl:apply-templates select='/NewsList/News' mode="Top"></xsl:apply-templates>
                </div>
                <div class="col-lg-6 image-gallery-wrapper">
                    <xsl:apply-templates select='/NewsList/News' mode="Bottom"></xsl:apply-templates>
                </div>
            </div>
        </div>
    </xsl:template>


    <xsl:template match='News' mode="Top">
        <xsl:if test="position() mod 6 = 1 or position() mod 6 = 2 or position() mod 6 = 3">
            <a class="image-gallery">
                <xsl:attribute name='onclick'>
                    <xsl:text>fancyboxImages('gallery-</xsl:text>
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
                </div>
                <div class="cover">
                    <h2>
                        <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
                    </h2>
                </div>
                <div class="bg"></div>
                <div class="icon"><em class="mdi mdi-magnify"></em></div>
                <div class="images hidden">
                    <xsl:if test="count(NewsImages) &gt; 1">
                        <xsl:apply-templates select='NewsImages'>
                            <xsl:with-param name="galleryId" select="NewsId"></xsl:with-param>
                        </xsl:apply-templates>
                    </xsl:if>
                </div>
            </a>
        </xsl:if>
    </xsl:template>
    <xsl:template match='News' mode="Bottom">
        <xsl:if test="position() mod 6 = 4 or position() mod 6 = 5 or position() mod 6 = 0">
            <a class="image-gallery reverse">
                <xsl:attribute name='onclick'>
                    <xsl:text>fancyboxImages('gallery-</xsl:text>
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
                </div>
                <div class="cover">
                    <h2>
                        <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
                    </h2>
                </div>
                <div class="bg"></div>
                <div class="icon"><em class="mdi mdi-magnify"></em></div>
                <div class="images hidden">
                    <xsl:if test="count(NewsImages) &gt; 1">
                        <xsl:apply-templates select='NewsImages'>
                            <xsl:with-param name="galleryId" select="NewsId"></xsl:with-param>
                        </xsl:apply-templates>
                    </xsl:if>
                </div>
            </a>
        </xsl:if>
    </xsl:template>

    <xsl:template match='NewsImages'>
        <xsl:param name="galleryId"></xsl:param>
        <xsl:if test="position() &gt; 1">
            <img class='lazyload blur-up'>
            <xsl:attribute name='data-src'>
                <xsl:value-of select='ImageUrl'></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name='alt'>
                <xsl:value-of select='Title'></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name='title'>
                <xsl:value-of select='Title'></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name='data-fancybox'>
                <xsl:text>gallery-</xsl:text>
                <xsl:value-of disable-output-escaping='yes' select='$galleryId'></xsl:value-of>
            </xsl:attribute>
            </img>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>