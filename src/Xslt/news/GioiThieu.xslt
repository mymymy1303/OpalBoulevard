<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
    xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
    <xsl:output method='html' indent='yes' />
    <xsl:template match='/'>
        <xsl:apply-templates select='/ZoneList/Zone' mode="Zone1"></xsl:apply-templates>
    </xsl:template>

    <xsl:template match='Zone' mode="Zone1">
        <xsl:choose>
            <xsl:when test="position() = 1">
                <div class="gioithieu-1" bg-img="/Data/Sites/1/media/default/img/gioithieu/bg.jpg"
                    bg-img-mobile="/Data/Sites/1/media/default/img/gioithieu/m_bg.jpg">
                    <div class="container">
                        <div class="row">
                            <xsl:apply-templates select='News' mode="News1"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </xsl:when>
            <xsl:when test="position() = 2">
                <div class="gioithieu-2">
                    <div class="container">
                        <xsl:apply-templates select='News' mode="News2"></xsl:apply-templates>
                    </div>
                </div>
            </xsl:when>
        </xsl:choose>
    </xsl:template>

    <xsl:template match='News' mode="News1">
        <div class="col-lg-6">
            <h2 class="gradient-title">
                <span class="semibold">
                    <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
                </span>
                <br />
                <span>
                    <xsl:value-of disable-output-escaping='yes' select='SubTitle'></xsl:value-of>
                </span>
                <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
            </h2>
            <div class="desc">
                <xsl:value-of disable-output-escaping='yes' select='BriefContent'></xsl:value-of>
            </div>
            <div class="blocks">
                <xsl:value-of disable-output-escaping='yes' select='FullContent'></xsl:value-of>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="img">
                <a data-fancybox="">
                    <xsl:attribute name='href'>
                        <xsl:value-of disable-output-escaping='yes' select='ImageUrl'></xsl:value-of>
                    </xsl:attribute>
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
                </a>
            </div>
        </div>
    </xsl:template>

    <xsl:template match='News' mode="News2">
        <div class="row row-reverse">
            <div class="col-lg-6">
                <div class="img">
                    <a data-fancybox="gioithieu-1">
                        <xsl:attribute name='href'>
                            <xsl:value-of disable-output-escaping='yes' select='ThumbnailUrl'></xsl:value-of>
                        </xsl:attribute>
                        <img class='lazyload blur-up' data-object-fit-cover="">
                        <xsl:attribute name='data-src'>
                            <xsl:value-of select='ThumbnailUrl'></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name='alt'>
                            <xsl:value-of select='Title'></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name='title'>
                            <xsl:value-of select='Title'></xsl:value-of>
                        </xsl:attribute>
                        </img>
                    </a>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="content">
                    <h2 class="gradient-title">
                        <span>
                            <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
                        </span>
                        <br />
                        <span class="semibold">
                            <xsl:value-of disable-output-escaping='yes' select='SubTitle'></xsl:value-of>
                        </span>
                        <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
                    </h2>
                    <div class="desc">
                        <xsl:value-of disable-output-escaping='yes' select='BriefContent'></xsl:value-of>
                    </div>
                </div>
            </div>
        </div>
        <div class="row slides">
            <xsl:apply-templates select='NewsImages'></xsl:apply-templates>
        </div>
    </xsl:template>

    <xsl:template match='NewsImages'>
        <xsl:choose>
            <xsl:when test="position() mod 3 = 1 or position() mod 3 = 0">
                <div class="col-lg-3">
                    <div class="img">
                        <a data-fancybox="gioithieu-1">
                            <xsl:attribute name='href'>
                                <xsl:value-of disable-output-escaping='yes' select='ImageUrl'></xsl:value-of>
                            </xsl:attribute>
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
                        </a>
                    </div>
                </div>
            </xsl:when>
            <xsl:when test="position() mod 3 = 2">
                <div class="col-lg-6">
                    <div class="img">
                        <a data-fancybox="gioithieu-1">
                            <xsl:attribute name='href'>
                                <xsl:value-of disable-output-escaping='yes' select='ImageUrl'></xsl:value-of>
                            </xsl:attribute>
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
                        </a>
                    </div>
                </div>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>