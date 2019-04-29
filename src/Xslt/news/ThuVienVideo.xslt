<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
    xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
    <xsl:output method='html' indent='yes' />
    <xsl:template match='/'>
        <div class="container">
            <h1 class="gradient-title center">
                <xsl:value-of disable-output-escaping='yes' select='/NewsList/ZoneTitle'></xsl:value-of>
            </h1>
            <div class="row videos">
                <xsl:apply-templates select='/NewsList/News' mode="Top"></xsl:apply-templates>
                <xsl:apply-templates select='/NewsList/News' mode="List"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>

    <xsl:template match='News' mode="Top">
        <xsl:if test="position() = 1">
            <div class="col-md-6 col-lg-12">
                <a class="item">
                    <xsl:attribute name='href'>
                        <xsl:value-of disable-output-escaping='yes' select='BriefContent'></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name='data-fancybox'>
                        <xsl:text>video-</xsl:text>
                        <xsl:value-of disable-output-escaping='yes' select='NewsId'></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name='data-caption'>
                        <xsl:value-of disable-output-escaping='yes' select='SubTitle'></xsl:value-of>
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
                    <div class="title">
                        <h2>
                            <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
                        </h2>
                    </div>
                    <div class="cover"></div>
                    <div class="icon">
                        <img src="/Data/Sites/1/media/default/img/play_button.png" alt="" />
                    </div>
                </a>
                <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
            </div>
        </xsl:if>
    </xsl:template>

    <xsl:template match='News' mode="List">
        <xsl:if test="position() &gt; 1">
            <div class="col-md-6 col-lg-4">
                <a class="item">
                    <xsl:attribute name='href'>
                        <xsl:value-of disable-output-escaping='yes' select='BriefContent'></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name='data-fancybox'>
                        <xsl:text>video-</xsl:text>
                        <xsl:value-of disable-output-escaping='yes' select='NewsId'></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name='data-caption'>
                        <xsl:value-of disable-output-escaping='yes' select='SubTitle'></xsl:value-of>
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
                    <div class="title">
                        <h2>
                            <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
                        </h2>
                    </div>
                    <div class="cover"></div>
                    <div class="icon">
                        <img src="/Data/Sites/1/media/default/img/play_button.png" alt="" />
                    </div>
                </a>
                <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>