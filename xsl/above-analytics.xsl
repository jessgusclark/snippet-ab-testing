<!-- place this code before your google tag manager code -->
<xsl:if test="ouc:div/table[@class='ou-abtest']">
    <script>
        var abtestTotal = <xsl:value-of select="count(ouc:div/table[@class='ou-abtest']/tbody/tr)" />;
        var abtest = Math.floor((Math.random() * abtestTotal) + 1);
    </script>
</xsl:if>