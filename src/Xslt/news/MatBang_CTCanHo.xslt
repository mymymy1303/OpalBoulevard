<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
    xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
    <xsl:output method='html' indent='yes' />
    <xsl:template match='/'>
        <div class="matbang-4">
            <div class="container">
                <h1 class="gradient-title center">Mặt bằng căn hộ điển hình</h1>
                <select class="selectNav">
                    <option>
                        <xsl:attribute name='value'>
                            <xsl:value-of disable-output-escaping='yes' select='/NewsDetail/FullUrl'></xsl:value-of>
                        </xsl:attribute>
                        <xsl:text>Chọn loại căn hộ khác</xsl:text>
                    </option>
                    <xsl:apply-templates select='/NewsDetail/NewsOther'></xsl:apply-templates>
                </select>
                <div class="content">
                    <div class="row">
                        <div class="col-lg-4">
                            <h2>
                                <xsl:value-of disable-output-escaping='yes' select='/NewsDetail/SubTitle'>
                                </xsl:value-of>
                            </h2>
                            <h3 class="title">
                                <xsl:value-of disable-output-escaping='yes' select='/NewsDetail/Title'></xsl:value-of>
                                <xsl:value-of select='/NewsDetail/EditLink' disable-output-escaping='yes'>
                                </xsl:value-of>
                            </h3>
                            <div class="thumbnail">
                                <xsl:apply-templates select='/NewsDetail/NewsImages' mode="Thumb"></xsl:apply-templates>
                            </div>
                            <h4>
                                <xsl:value-of disable-output-escaping='yes' select='/NewsDetail/BriefContent'>
                                </xsl:value-of>
                            </h4>
                            <div class="opal-table-v1">
                                <div class="table-title">Thông tin căn hộ</div>
                                <div class="table-content">
                                    <xsl:value-of disable-output-escaping='yes' select='/NewsDetail/FullContent'>
                                    </xsl:value-of>
                                </div>
                            </div>
                            <div class="btn-popup-wrapper">
                                <a class="btn-popup-v1" data-src="images-1">
                                    <xsl:attribute name='data-title'>
                                        <xsl:value-of disable-output-escaping='yes' select='/NewsDetail/Title'></xsl:value-of>
                                    </xsl:attribute>
                                    <img src="/Data/Sites/1/media/default/img/matbang/04/icon.png" alt="" />
                                    <span>Căn hộ mẫu</span>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-8">
                            <xsl:apply-templates select='/NewsDetail/NewsImages' mode="Main">
                            </xsl:apply-templates>
                        </div>
                    </div>
                    <div class="hidden" id="matbang-popup">
                        <div class="title">
                            <xsl:value-of disable-output-escaping='yes' select='/NewsDetail/Title'></xsl:value-of>
                        </div>
                        <div class="images">
                            <xsl:apply-templates select='/NewsDetail/NewsImages' mode="slide"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>

    <xsl:template match='NewsImages' mode="slide">
        <xsl:if test="position() &gt; 1">
            <a data-fancybox="images-1">
                <xsl:attribute name='href'>
                    <xsl:value-of disable-output-escaping='yes' select='ImageUrl'></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name='data-thumb'>
                    <xsl:value-of disable-output-escaping='yes' select='ImageUrl'></xsl:value-of>
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
        </xsl:if>
    </xsl:template>

    <xsl:template match='NewsImages' mode="Main">
        <xsl:if test="position() = 1">
            <a data-fancybox="images">
                <xsl:attribute name='href'>
                    <xsl:value-of disable-output-escaping='yes' select='ImageUrl'></xsl:value-of>
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
        </xsl:if>
    </xsl:template>

    <xsl:template match='NewsImages' mode="Thumb">
        <xsl:if test="position() = 1">
            <img class='lazyload blur-up'>
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
        </xsl:if>
    </xsl:template>

    <xsl:template match='NewsOther'>
        <option>
            <xsl:attribute name='value'>
                <xsl:value-of disable-output-escaping='yes' select='Url'></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
        </option>
    </xsl:template>
</xsl:stylesheet>