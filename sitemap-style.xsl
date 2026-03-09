<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:s="http://www.sitemaps.org/schemas/sitemap/0.9">

<xsl:template match="/">

<html>
<head>
<title>XML Sitemap</title>

<style>

body{
font-family:Arial;
background:#f5f7fa;
padding:40px;
}

h1{
color:#2563eb;
}

table{
width:100%;
border-collapse:collapse;
background:#fff;
}

th,td{
padding:12px;
border:1px solid #ddd;
}

th{
background:#2563eb;
color:#fff;
}

tr:nth-child(even){
background:#f3f4f6;
}

</style>

</head>

<body>

<h1>XML Sitemap</h1>

<table>

<tr>
<th>URL</th>
<th>Last Modified</th>
</tr>

<xsl:for-each select="s:urlset/s:url">

<tr>

<td>
<xsl:value-of select="s:loc"/>
</td>

<td>
<xsl:value-of select="s:lastmod"/>
</td>

</tr>

</xsl:for-each>

</table>

</body>

</html>

</xsl:template>

</xsl:stylesheet>
