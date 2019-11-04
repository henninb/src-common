<SCRIPT LANGUAGE="JavaScript">
// Sam Tyler (sykicphyst@aol.com)
function ra_de() {
var pi = Math.PI;
var ra_de = ((eval(document.[0].RADE.value))*(180/pi));
document.forms[0].RADE.value = ra_de;
}
function de_ra() {
var pi = Math.PI;
var de_ra = ((eval(document.forms[0].RADE.value))*(pi/180));
document.forms[0].RADE.value = de_ra;
}
function resetRADE() {
document.forms[0].RADE.value="0";
}
// End -->
</SCRIPT>
    <!--
        This script downloaded from www.JavaScriptBank.com
        Come to view and download over 2000+ free javascript at www.JavaScriptBank.com
    -->
