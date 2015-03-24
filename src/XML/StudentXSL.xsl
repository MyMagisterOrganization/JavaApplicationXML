<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : StudentXSL.xsl
    Created on : March 24, 2015, 2:12 PM
    Author     : Zurab
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>students.xsl</title>
            </head>
            
            <body>
                <H1> Students List </H1>
                <xsl:apply-templates select="/students/digest/date"/>
                <!--<xsl:value-of select="/students/digest"/>-->
                <table border="2">
                    <tr>
                        <th>name</th>
                        <th>sname</th>
                        <th>addr</th>
                        </tr>
                <xsl:apply-templates select="/students/student"/>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="date[.='333333333']">
        <xsl:value-of select="date[1]"/>
    </xsl:template>
    <xsl:template match="student">
        <tr>
            <xsl:if test="position()>0">
                         <td><xsl:value-of select="name"/> pin= <xsl:value-of select="@pin"/></td>
                        <td><xsl:value-of select="sname"/></td>
                        <td><xsl:apply-templates select="addr"/></td>
                  </xsl:if>      
                        </tr>
    </xsl:template>
<xsl:template match="addr">
<xsl:value-of select="city"/>+
<xsl:value-of select="home"/>
</xsl:template>


</xsl:stylesheet>

