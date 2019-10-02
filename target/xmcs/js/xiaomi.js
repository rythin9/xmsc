// JavaScript Document
document.writeln("<div id=\"msn\" style=\"border-right:#455690 1px solid; border-top:#a6b4cf 1px solid; Z-INDEX:99999; left:1100px;  border-left:#a6b4cf 1px solid; width:220px; border-bottom:#455690 1px solid; position:fixed; top:500px; height:116px; background-color:#c9d3f3\">");

document.writeln("<table width=\"100%\" style=\"BORDER-TOP:#ffffff 1px solid; BORDER-LEFT:#ffffff 1px solid\" bgcolor=\"#cfdef4\">");

document.writeln("<tr><td height=\"24\" width=\"26\" style=\"FONT-SIZE:12px;BACKGROUND-IMAGE:url(/image/js/msgTopBg.gif);COLOR:#0f2c8c\"><img src=\"image/js/msgLogo.gif\" hspace=\"5\" align=\"absMiddle\" vspace=\"1\"\/><\/td>");

document.writeln("<td style=\"FONT-WEIGHT:normal;FONT-SIZE:12pt;BACKGROUND-IMAGE:url(/images/js/msgTopBg.gif);COLOR:#1f336b;PADDING:4px\" >小爱开放平台<\/td>");

document.writeln("<td style=\"BACKGROUND-IMAGE:url(/images/msgTopBg.gif);PADDING-TOP:2px\" width=\"19\" align=\"right\"><img src=\"image/js/msgClose.gif\" hspace=\"3\" style=\"CURSOR:pointer\" onclick=\"closeDiv()\" title=\"关闭\"\/><\/td>");

document.writeln("<\/tr><tr><td colspan=\"3\" height=\"90\" style=\"PADDING-RIGHT:1px;BACKGROUND-IMAGE:url(image/js/msgBottomBg.jpg);PADDING-BOTTOM:1px\">");

document.writeln("<div style=\" FONT-SIZE: 9pt;  WIDTH: 100%; COLOR: #1f336b; PADDING: 18px; HEIGHT: 100%\"><a  href=\"tiaozhuan.html\" target=\"_blank\" style=\"FONT-WEIGHT:bold;COLOR:red\">&gt;&gt;小爱论坛<\/a><br><br><a href=\"tiaozhuan.html\" target=\"_blank\" style=\"FONT-WEIGHT:bold;COLOR:blue\">&gt;&gt;资源中心<\/a><\/div><\/div><\/tr><\/table><\/div>");

msn.style.top=document.body.clientHeight-174;
msn.style.left=document.body.clientWidth-225;
moveR();
function moveR() {
msn.style.top=document.body.scrollTop+document.body.clientHeight-116;
msn.style.left=document.body.scrollLeft+document.body.clientWidth-180;
setTimeout("moveR();",80)
}
function closeDiv(){
	msn.style.visibility='hidden';
}