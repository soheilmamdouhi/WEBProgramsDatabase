<%@ Page Title="Accuweather" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Accuweather.aspx.cs" Inherits="About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Accuweather
    </h2>
    <p>
        <a href="http://www.accuweather.com/en/ir/karaj/211367/weather-forecast/211367" class="aw-widget-legal">
<!--
By accessing and/or using this code snippet, you agree to AccuWeather’s terms and conditions (in English) which can be found at http://www.accuweather.com/en/free-weather-widgets/terms and AccuWeather’s Privacy Statement (in English) which can be found at http://www.accuweather.com/en/privacy.
-->
</a><div id="awcc1390235962748" class="aw-widget-current"  data-locationkey="211367" data-unit="c" data-language="en-us" data-useip="false" data-uid="awcc1390235962748"></div><script type="text/javascript" src="http://oap.accuweather.com/launch.js"></script>
    </p>
    <p>
        <a href="http://www.accuweather.com/en/ir/karaj/211367/weather-forecast/211367" class="aw-widget-legal">
<!--
By accessing and/or using this code snippet, you agree to AccuWeather’s terms and conditions (in English) which can be found at http://www.accuweather.com/en/free-weather-widgets/terms and AccuWeather’s Privacy Statement (in English) which can be found at http://www.accuweather.com/en/privacy.
-->
</a><div id="awtd1390235962748" class="aw-widget-36hour"  data-locationkey="211367" data-unit="c" data-language="en-us" data-useip="false" data-uid="awtd1390235962748" data-editlocation="true" data-lifestyle="hiking"></div><script type="text/javascript" src="http://oap.accuweather.com/launch.js"></script>
    </p>
</asp:Content>
