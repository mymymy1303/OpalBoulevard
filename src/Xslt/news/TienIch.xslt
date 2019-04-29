<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
    xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
    <xsl:output method='html' indent='yes' />
    <xsl:template match='/'>
        <div class="items">
            <div class="row">
                <xsl:apply-templates select='/NewsList/News' mode="List"></xsl:apply-templates>
            </div>
        </div>

        <div class="map-list-1 hidden">
            <xsl:apply-templates select='/NewsList/News' mode="MapList"></xsl:apply-templates>
        </div>
    </xsl:template>

    <xsl:template match='News' mode="List">
        <xsl:if
            test="position() mod 16 = 1 or position() mod 16 = 5 or position() mod 16 = 9 or position() mod 16 = 13">
            <xsl:text disable-output-escaping='yes'>&lt;div class=&quot;col-lg-4&quot;&gt;</xsl:text>
        </xsl:if>
        <div class="item" data-map="3">
            <xsl:attribute name='data-map'>
                <xsl:value-of disable-output-escaping='yes' select='NewsId'></xsl:value-of>
            </xsl:attribute>
            <div class="number">
                <p>
                    <xsl:value-of disable-output-escaping='yes' select='SubTitle'></xsl:value-of>
                </p>
            </div>
            <div class="title">
                <h2>
                    <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
                    <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
                </h2>
            </div>
        </div>
        <xsl:if
            test="position() mod 16 = 4 or position() mod 16 = 8 or position() mod 16 = 12 or position() mod 16 = 0">
            <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
        </xsl:if>
    </xsl:template>

    <xsl:template match='News' mode="MapList">
        <div class="map-list-info">
            <xsl:attribute name='data-map'>
                <xsl:value-of disable-output-escaping='yes' select='NewsId'></xsl:value-of>
            </xsl:attribute>
            <xsl:if test="ImageUrl != ''">
                <div class="image">
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
                </div>
            </xsl:if>
            <div class="title">
                <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
            </div>
            <xsl:if test="BriefContent != ''">
                <div class="briefContent">
                    <xsl:value-of disable-output-escaping='yes' select='BriefContent'></xsl:value-of>
                </div>
            </xsl:if>
            <div class="pointer"></div>
        </div>
    </xsl:template>
</xsl:stylesheet>