<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
    xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
    <xsl:output method='html' indent='yes' />
    <xsl:template match='/'>
        <div class="row">
            <xsl:apply-templates select='/ZoneList/Zone'></xsl:apply-templates>
        </div>
    </xsl:template>

    <xsl:template match='Zone'>
        <xsl:choose>
            <xsl:when test="position() mod 7 = 4">
                <div class="col-lg-6">
                    <div class="items">
                        <xsl:apply-templates select='News' mode="Image"></xsl:apply-templates>
                    </div>
                </div>
            </xsl:when>
            <xsl:when test="position() mod 7 = 1 or position() mod 7 = 5">
                <xsl:text disable-output-escaping='yes'>&lt;div class=&quot;col-lg-3&quot;&gt;</xsl:text>
                <div class="items">
                    <div class="title">
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
                        </img>
                        <span>
                            <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
                        </span>
                    </div>
                    <xsl:apply-templates select='News' mode="List"></xsl:apply-templates>
                </div>
            </xsl:when>
            <xsl:when test="position() mod 7 = 2 or position() mod 7 = 6">
                <div class="items">
                    <div class="title">
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
                        </img>
                        <span>
                            <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
                        </span>
                    </div>
                    <xsl:apply-templates select='News' mode="List"></xsl:apply-templates>
                </div>
            </xsl:when>
            <xsl:when test="position() mod 7 = 3 or position() mod 7 = 0">
                <div class="items">
                    <div class="title">
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
                        </img>
                        <span>
                            <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
                        </span>
                    </div>
                    <xsl:apply-templates select='News' mode="List"></xsl:apply-templates>
                </div>
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
            </xsl:when>
        </xsl:choose>
    </xsl:template>

    <xsl:template match='News' mode="Image">
        <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
        <a class="img" data-fancybox="tienich-2" href="./img/tienich/1.png">
            <xsl:attribute name='href'>
                <xsl:value-of select='ImageUrl'></xsl:value-of>
            </xsl:attribute>
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
            </img>
        </a>
    </xsl:template>

    <xsl:template match='News' mode="List">
        <div class="item">
            <xsl:if test="position() &gt; 0 and position() &lt; 10">
                <xsl:text>0</xsl:text>
            </xsl:if>
            <xsl:value-of disable-output-escaping='yes' select='position()'></xsl:value-of>
            <xsl:text> </xsl:text>
            <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
            <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
        </div>
    </xsl:template>
</xsl:stylesheet>