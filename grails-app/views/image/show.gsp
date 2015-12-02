

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'image.label', default: 'Image')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-image" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-image" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list image">
			
				<g:if test="${imageInstance?.source}">
				<li class="fieldcontain">
					<span id="source-label" class="property-label"><g:message code="image.source.label" default="Source" /></span>
					
						<span class="property-value" aria-labelledby="source-label"><g:fieldValue bean="${imageInstance}" field="source"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${imageInstance?.image}">
				<li class="fieldcontain">
					<span id="image-label" class="property-label"><g:message code="image.image.label" default="Image" /></span>
                    <td><asset:image src='${fieldValue(bean: imageInstance, field: "source")}' width="200" height="200"/> </td>
					
				</li>
				</g:if>
			
				<g:if test="${imageInstance?.groupe}">
				<li class="fieldcontain">
					<span id="groupe-label" class="property-label"><g:message code="image.groupe.label" default="Groupe" /></span>
					
						<g:each in="${imageInstance.groupe}" var="g">
						<span class="property-value" aria-labelledby="groupe-label"><g:link controller="groupe" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${imageInstance?.pointInteret}">
				<li class="fieldcontain">
					<span id="pointInteret-label" class="property-label"><g:message code="image.pointInteret.label" default="Point Interet" /></span>
					
						<g:each in="${imageInstance.pointInteret}" var="p">
						<span class="property-value" aria-labelledby="pointInteret-label"><g:link controller="POI" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:imageInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${imageInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
