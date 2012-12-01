<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="text" omit-xml-declaration="yes" indent="no"/>
	<xsl:template match="/">
		<xsl:for-each select="statuses/status">
			<xsl:value-of select="concat(
				id,
				'&#xA;',
				in_reply_to_status_id,
				'&#xA;',
				user/name,
				'&#xA;',
				created_at,
				'&#xA;',
				text,
				'&#xA;'
				)"/>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
