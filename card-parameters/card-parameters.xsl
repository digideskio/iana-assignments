<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'card-parameters-1'">
        <tr><th>Type Code</th><th>AVP Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'card-parameters-2'">
        <tr>
          <th>Type Code</th>
          <th>Layer 2 Access Technology</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'card-parameters-1'">
        <tr>
          <td align="center"><xsl:value-of select="iana:code"/></td>
          <td><xsl:value-of select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'card-parameters-2'">
        <tr>
          <td align="center"><xsl:value-of select="iana:code"/></td>
          <td><xsl:value-of select="iana:technology"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
