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

<%@page language="java" import="org.jahia.services.render.*"%>  
<%@page language="java" import="java.net.*"%>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="${fn:substring(renderContext.request.locale,0,2)}">
<head>
    <c:if test="${not renderContext.editMode}">
	<c:if test="${!empty renderContext.mainResource.node.properties['jumptopage'].node.path}">
	    <c:url value="${url.base}${renderContext.mainResource.node.properties['jumptopage'].node.path}.html" var="redirectUrl"/>
	    <%
		RenderContext renderContext = (RenderContext) request.getAttribute("renderContext");
		URLGenerator urlGenerator=renderContext.getURLGenerator();
		String path=renderContext.getMainResource().getNode().getProperty("jumptopage").getNode().getPath();
		path=response.encodeURL(urlGenerator.getBase() + path + ".html");
		renderContext.setRedirect(path);
	    %>
	</c:if>
    </c:if>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <template:addResources type="css" resources="reset.css"/>
    <jcr:nodeProperty node="${renderContext.mainResource.node}" name="jcr:description" inherited="true" var="description"/>
    <jcr:nodeProperty node="${renderContext.mainResource.node}" name="jcr:createdBy" inherited="true" var="author"/>
    <jcr:nodeProperty node="${renderContext.mainResource.node}" name="j:keywords" inherited="true" var="kws"/>
    <c:set var="keywords" value=""/>
    <c:forEach items="${kws}" var="keyword"><c:set var="keywords" value="${empty keywords?'':keywords + ' '}${keyword.string}"/></c:forEach>
    <c:if test="${!empty description}"><meta name="description" content="${description.string}" /></c:if>
    <c:if test="${!empty author}"><meta name="author" content="${author.string}" /></c:if>
    <c:if test="${!empty keywords}"><meta name="keywords" content="${keywords}" /></c:if>

    <link rel="stylesheet" type="text/css" href="<c:url value='${url.currentModule}/css/print.css'/>" media="print" />
    <title>${fn:escapeXml(renderContext.mainResource.node.displayableName)}</title>
</head>
<body>

<div class="bodywrapper"><!--start bodywrapper-->
    <div id="header" style="z-index:100">
	    <div id="headerwrap">
	    	<div id="toplogo"><template:area path="toplogo"/></div>
	    	<div class="topSlogan"><template:area path="topSlogan"/></div>
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
<template:addResources type="css" resources="reset.css,960.css,base.css,mod.css"/>
<template:theme/>
<c:if test="${renderContext.editMode}">
    <template:addResources type="css" resources="edit.css" />
</c:if>
<c:if test="${renderContext.contributionMode}">
    <template:addResources type="css" resources="contribute.css" />
</c:if>

</body>
</html>