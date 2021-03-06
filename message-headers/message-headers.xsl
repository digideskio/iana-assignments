<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <tr>
      <td>Header Field Name</td>
      <td>Template</td>
      <td>Protocol</td>
      <td>Status</td>
      <td>Reference</td>
    </tr>
  </xsl:template>

  <xsl:template match="iana:record">
    <tr>
      <td><xsl:value-of select="iana:value"/></td>
      <td><xsl:apply-templates select="iana:file"/></td>
      <td><xsl:value-of select="iana:protocol"/></td>
      <td><xsl:value-of select="iana:status"/></td>
      <td><xsl:apply-templates select="iana:xref"/></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>
