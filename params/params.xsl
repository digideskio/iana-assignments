<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose>
      <xsl:when test="@id = 'urn-subnamespaces'">
      <tr><th>Sub-namespace</th>
      <th>Reference</th>
      <th>IANA Registry Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'params-1'">
       <tr><th>Registered Parameter Identifier</th>
       <th>Reference</th>
       <th>IANA Registry Reference</th></tr>
        </xsl:when>
      </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">    
    <xsl:choose>
      <xsl:when test="../@id = 'urn-subnamespaces'">
    <tr>
      <td><xsl:value-of select="iana:name"/></td>
      <td><xsl:apply-templates select="iana:spec"/></td>
      <td><xsl:apply-templates select="iana:ianaregistry"/></td>
    </tr>
       </xsl:when>
       <xsl:when test="../@id = 'params-1'">
    <tr>
      <td><xsl:value-of select="iana:name"/></td>
      <td><xsl:apply-templates select="iana:xref[@type != 'uri']"/></td>
      <td><xsl:apply-templates select="iana:xref[@type = 'uri']"/></td>
    </tr>
       </xsl:when>
       </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
