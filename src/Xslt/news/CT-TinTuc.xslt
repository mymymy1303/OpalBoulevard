<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="tintuc-chitiet">
			<div class="container">
				<div class="row no-gutters" style="justify-content: center">
					<div class="col-lg-10 col-xl-8">
						<h1>
							<xsl:value-of select="/NewsDetail/Title" disable-output-escaping="yes"></xsl:value-of>
						</h1>
						<div class="brief-content">
							<xsl:value-of select="/NewsDetail/BriefContent" disable-output-escaping="yes">
							</xsl:value-of>
						</div>
						<div class="full-content">

							<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<div class="social-share">
							<a>
								<xsl:attribute name="href">
									<xsl:text disable-output-escaping="yes">
										https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
									<xsl:value-of select="/NewsDetail/FullUrl" disable-output-escaping="yes">
									</xsl:value-of>
								</xsl:attribute>
								<img src="/Data/Sites/1/media/default/img/facebook.jpg" alt="" />
							</a>
							<a href="mailto:info@opalboulevard.com.vn">
								<img src="/Data/Sites/1/media/default/img/mail.jpg" alt="" />
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="container tintuc-khac">
				<p>
					<xsl:value-of select="/NewsDetail/TinTucKhacText" disable-output-escaping="yes"></xsl:value-of>
				</p>
				<div class="list row tintuc">
					<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="NewsOther">
		<div class="col-md-6 col-lg-4 normal-news">
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				<div class="img">
					<img data-object-fit-cover="">
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<div class="content">
					<div class="line"></div>
					<h2>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</h2>
					<div class="btn-viewmore">
						<p>
							<xsl:value-of select="/NewsDetail/ViewMoreText" disable-output-escaping="yes">
							</xsl:value-of>
						</p>
					</div>
				</div>
			</a>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</div>
	</xsl:template>

</xsl:stylesheet>