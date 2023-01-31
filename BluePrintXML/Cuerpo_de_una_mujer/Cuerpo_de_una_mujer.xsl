<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head><link rel="stylesheet" type="text/css" href="Cuerpo_de_una_mujer.css"/></head>
			<body>
				<h2>Poema.</h2>
				<h1>Titulo: Cuerpo de una mujer<xsl:value-of select="titulo"/></h1>
				<br/>
				<xsl:for-each select="cancion/letra/estrofa">
					
					<xsl:sort select="orden"/>
						<xsl:if test="tipo='estribillo'">
							Estribillo:
						</xsl:if>
						<xsl:if test="tipo='normal'">
							Normal:
						</xsl:if>
						<xsl:for-each select="verso">
						<p><xsl:value-of select="."/></p>
					</xsl:for-each>
					<br/>
				</xsl:for-each>
				<p>Autor: Pablo Neruda<xsl:value-of select="titulo"/></p>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>