<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.cdisc.org/ns/odm/v1.3">

    <xsl:import href="FormDefTranslatedText.xsl"/>
    <xsl:import href="FormDefItemGroupRefs.xsl"/>
    <xsl:import href="FormDefArchLayouts.xsl"/>
    <xsl:import href="FormAliases.xsl"/>

	<xsl:template name="FormDefs">
	
	   <xsl:param name="parentKey" />
       
       <xsl:for-each select="../FormDefs[FK_MetaDataVersion = $parentKey]">      
       
         <xsl:element name="FormDef">
            <xsl:attribute name="OID"><xsl:value-of select="OID"/></xsl:attribute>
            <xsl:attribute name="Name"><xsl:value-of select="Name"/></xsl:attribute>
            <xsl:attribute name="Repeating"><xsl:value-of select="Repeating"/></xsl:attribute>

            <xsl:call-template name="FormDefTranslatedText">
              <xsl:with-param name="parentKey"><xsl:value-of select="OID"/></xsl:with-param>
            </xsl:call-template>         
            <xsl:call-template name="FormDefItemGroupRefs">
              <xsl:with-param name="parentKey"><xsl:value-of select="OID"/></xsl:with-param>
            </xsl:call-template>
            <xsl:call-template name="FormDefArchLayouts">
              <xsl:with-param name="parentKey"><xsl:value-of select="OID"/></xsl:with-param>
            </xsl:call-template>
            <xsl:call-template name="FormAliases">
              <xsl:with-param name="parentKey"><xsl:value-of select="OID"/></xsl:with-param>
            </xsl:call-template>                       
         
         </xsl:element>
        
       </xsl:for-each>
       	
  </xsl:template>
</xsl:stylesheet>