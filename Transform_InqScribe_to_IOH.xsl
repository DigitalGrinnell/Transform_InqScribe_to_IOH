<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
  <xsl:strip-space elements="*"/>
	
  <xsl:template match="transcript">
    <cues>
      <xsl:apply-templates/>
    </cues>
  </xsl:template>

  <xsl:template match="speaker"/>

  <xsl:template match="scene">
	<cue>
	  <speaker><xsl:value-of select="speaker" /></speaker>
	  <start><xsl:value-of select="@in"/></start>
		<end><xsl:value-of select="@out"/></end>
	  <transcript>
	    <xsl:apply-templates/>
	  </transcript>
	</cue>
  </xsl:template>

</xsl:stylesheet>