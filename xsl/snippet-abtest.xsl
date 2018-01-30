<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xsl:stylesheet>
<!-- 
Implementations Skeletor v3 - 5/10/2014

Contributors: Jesse Clark <jesse.clark@unco.edu>
Last Updated: 1/19/18
-->
<xsl:stylesheet version="3.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:ou="http://omniupdate.com/XSL/Variables"
  xmlns:fn="http://omniupdate.com/XSL/Functions"
  xmlns:ouc="http://omniupdate.com/XSL/Variables"
  exclude-result-prefixes="xs ou fn ouc">
    
    <!-- Asset for A/B Testing -->
	<xsl:template match="table[@class='ou-abtest']">
    	<xsl:choose>
        	<xsl:when test="$ou:action != 'pub'">
            	
            	<xsl:for-each select="tbody/tr">
                    <div class="panel" style="position:relative;">
                    	<div class="label" style="position:absolute; top:0; left:0;">Variation <xsl:value-of select="position()" /></div>
                        <xsl:apply-templates select="td[1]" />
                    </div>
                </xsl:for-each>
			</xsl:when>
            
			<xsl:otherwise>
				     
                <xsl:for-each select="tbody/tr">
                    <div class="abtestV{position()} hide">
                        <xsl:apply-templates select="td[1]" />
                    </div>
                </xsl:for-each>
                
                <script src="http://www.unco.edu/_resources/js/abtest.js"></script>
                <script>$(this).ABTest(<xsl:value-of select="count(tbody/tr)" />, abtest);</script>
		
			</xsl:otherwise>
		</xsl:choose>
    </xsl:template>
	
</xsl:stylesheet>
