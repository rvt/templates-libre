<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="functions" uri="http://www.jahia.org/tags/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>

<jcr:nodeProperty node="${currentNode}" name="image" var="image"/>
<c:set var="text" value="${currentNode.properties.text.string}"/>
<c:set var="title" value="${currentNode.properties.title.string}"/>

<jcr:nodeProperty node="${currentNode}" name="jcr:title" var="title"/>

<div class="editorialText">
    <img style="width:300px" src="${image.node.url}" />
    <c:if test="${not empty title}"><h2>${title.string}</h2></c:if>
    ${text}
</div>
<div class="clear">&nbsp;</div>
<div class="fineline">&nbsp;</div>
