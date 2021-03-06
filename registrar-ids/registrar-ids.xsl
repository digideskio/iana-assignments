<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <tr><th>ID</th><th>Registrar Name</th><th>Status</th></tr>
  </xsl:template>

  <xsl:template match="iana:record">
    <tr>
      <td align="center"><xsl:value-of select="iana:value"/></td>
      <td><xsl:value-of select="iana:name"/></td>
      <td><xsl:value-of select="iana:status"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
