<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="utility" uri="http://www.jahia.org/tags/utilityLib" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%> 
<%--@elvariable id="renderContext" type="org.jahia.services.render.RenderContext"--%>

 
<c:url value="${currentNode.properties.url.string}" var="downloadUrl" />
<h3 class="downloadbutton">
	<a href="${downloadUrl}"><jcr:nodeProperty node='${currentNode}' name='jcr:title'/></a>
</h3>
