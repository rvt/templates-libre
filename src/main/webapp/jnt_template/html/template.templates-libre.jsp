<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<%--@elvariable id="out" type="java.io.PrintWriter"--%>
<%--@elvariable id="script" type="org.jahia.services.render.scripting.Script"--%>
<%--@elvariable id="scriptInfo" type="java.lang.String"--%>
<%--@elvariable id="workspace" type="java.lang.String"--%>
<%--@elvariable id="renderContext" type="org.jahia.services.render.RenderContext"--%>
<%--@elvariable id="currentResource" type="org.jahia.services.render.Resource"--%>
<%--@elvariable id="url" type="org.jahia.services.render.URLGenerator"--%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>${fn:escapeXml(renderContext.mainResource.node.displayableName)}</title>
</head>
<body>

<div class="bodywrapper"><!--start bodywrapper-->
    <div id="header" style="z-index:100">
	    <div id="headerwrap">
	    	<div id="toplogo"><template:area path="toplogo"/></div>
	    	<div class="topSlogan">LibreCAD, Open Source 2D-CAD</div>
	    	<div id="topmenu"><template:area path="menu"/></div>
	    	<div class="clear"></div>
	    </div>
    </div>
    <div id="pagecontent" style="z-index:50">
	    <template:area path="pagecontent"/>
    </div>
    <div id="footer">
    	<template:area path="footerLicenseText"/>
    </div>
</div>
<template:theme/>
<template:addResources type="css" resources="reset.css,960.css,base.css,mod.css"/>
<c:if test="${renderContext.editMode}">
    <template:addResources type="css" resources="edit.css" />
</c:if>
<c:if test="${renderContext.contributionMode}">
    <template:addResources type="css" resources="contribute.css" />
</c:if>

<template:addResources type="javascript" resources="jquery.min.js"/>
<template:addResources type="javascript" resources="highliter/shCore.js,highliter/shBrushJScript.js,highliter/shBrushBash.js"/>
<template:addResources type="css" resources="highliter/shCore.css,highliter/shThemeDefault.css" />

<script type="text/javascript"> SyntaxHighlighter.all()</script>
</body>
</html>