<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.filemaker.com/fmpxmlresult" version="1.0">
	<xsl:output version="1.0" encoding="UTF-8" indent="yes" method="xml" cdata-section-elements="DATA"/>
	<xsl:template match="/">
		<FMPXMLRESULT>
			<ERRORCODE>0</ERRORCODE>
			<PRODUCT BUILD="07-18-2011" NAME="FileMaker" VERSION="ProAdvanced 11.0v4"/>
			<DATABASE DATEFORMAT="Yyyy/m/d" LAYOUT="" NAME="OMPL" RECORDS="0" TIMEFORMAT="k:mm:ss "/>
			<METADATA>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="folderText" TYPE="TEXT"/>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="folderTitle" TYPE="TEXT"/>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="text" TYPE="TEXT"/>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="description" TYPE="TEXT"/>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="title" TYPE="TEXT"/>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="type" TYPE="TEXT"/>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="version" TYPE="TEXT"/>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="htmlUrl" TYPE="TEXT"/>
				<FIELD EMPTYOK="NO" MAXREPEAT="1" NAME="xmlUrl" TYPE="TEXT"/>
			</METADATA>
			<RESULTSET>
				<xsl:attribute name="FOUND">0</xsl:attribute>
				<xsl:apply-templates select="opml/body/outline/outline"/>
			</RESULTSET>
		</FMPXMLRESULT>
	</xsl:template>
	<xsl:template match="outline">
		<ROW>
			<xsl:attribute name="MODID">0</xsl:attribute>
			<xsl:attribute name="RECORDID">0</xsl:attribute>
			<COL>
				<DATA>
					<xsl:value-of select="../@text"/>
				</DATA>
			</COL>
			<COL>
				<DATA>
					<xsl:value-of select="../@title"/>
				</DATA>
			</COL>
			<COL>
				<DATA>
					<xsl:value-of select="@text"/>
				</DATA>
			</COL>
			<COL>
				<DATA>
					<xsl:value-of select="@description"/>
				</DATA>
			<COL>
				<DATA>
					<xsl:value-of select="@title"/>
				</DATA>
			</COL>
			<COL>
				<DATA>
					<xsl:value-of select="@type"/>
				</DATA>
			</COL>
			<COL>
				<DATA>
					<xsl:value-of select="@version"/>
				</DATA>
			</COL>
			<COL>
				<DATA>
					<xsl:value-of select="@htmlUrl"/>
				</DATA>
			</COL>
			<COL>
				<DATA>
					<xsl:value-of select="@xmlUrl"/>
				</DATA>
			</COL>
		</ROW>
	</xsl:template>
</xsl:stylesheet>
