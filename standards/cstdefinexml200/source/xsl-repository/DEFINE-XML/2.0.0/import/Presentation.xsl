<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:odm="http://www.cdisc.org/ns/odm/v1.3"
	xmlns:def="http://www.cdisc.org/ns/def/v2.0">

	<xsl:template name="Presentation">	
    
    <xsl:for-each select=".">

      <xsl:element name="Presentation">
         <xsl:element name="OID"><xsl:value-of select="@OID"/></xsl:element>
         <xsl:element name="presentation"><xsl:value-of select="."/></xsl:element> 
         <xsl:element name="lang"><xsl:value-of select="@xml:lang"/></xsl:element> 
         <xsl:element name="FK_MetaDataVersion"><xsl:value-of select="../@OID"/></xsl:element>
      </xsl:element>
      
    </xsl:for-each>
       	
  </xsl:template>
</xsl:stylesheet>