<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version='1.0'>

	<xsl:output method="html" />

	<xsl:template match="imagedata">
		<div class="center fullblack">
			<xsl:element name="img">
				<xsl:attribute name="src">
					<xsl:value-of select="@fileref" />
				</xsl:attribute>
			</xsl:element>
		</div>
	</xsl:template>

	<xsl:template match="article/title">
		<div class="container"><h3 class="center"><xsl:value-of select="." /></h3></div>
	</xsl:template>

	<xsl:template match="section">
		<xsl:apply-templates />
	</xsl:template>

	<xsl:template match="section/title">
		<div class="container"><h5><xsl:value-of select="." /></h5></div>
	</xsl:template>

	<xsl:template match="para">
		<div class="container"><p><xsl:apply-templates /></p></div>
	</xsl:template>

	<xsl:template match="itemizedlist">
		<div class="container"><ul class="browser-default">
			<xsl:for-each select="./listitem">
				<li><xsl:value-of select="." /></li>
			</xsl:for-each>
		</ul></div>
	</xsl:template>

</xsl:stylesheet>