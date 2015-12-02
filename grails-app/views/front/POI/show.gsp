

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'groupe.label', default: 'Groupe')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-groupe" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" controller="front" action="indexPOI"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" controller="front" action="createPOI"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-groupe" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list groupe">
			
				<g:if test="${groupeInstance?.nom}">
				<li class="fieldcontain">
					<span id="nom-label" class="property-label"><g:message code="groupe.nom.label" default="Nom" /></span>
					
						<span class="property-value" aria-labelledby="nom-label"><g:fieldValue bean="${groupeInstance}" field="nom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${groupeInstance?.dateDeCreation}">
				<li class="fieldcontain">
					<span id="dateDeCreation-label" class="property-label"><g:message code="groupe.dateDeCreation.label" default="Date De Creation" /></span>
					
						<span class="property-value" aria-labelledby="dateDeCreation-label"><g:formatDate date="${groupeInstance?.dateDeCreation}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${groupeInstance?.image}">
				<li class="fieldcontain">
					<span id="image-label" class="property-label"><g:message code="groupe.image.label" default="Image" /></span>
					
						<g:each in="${groupeInstance.image}" var="i">
						<span class="property-value" aria-labelledby="image-label"><g:link controller="front" action="showImage" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${groupeInstance?.pointInteret}">
				<li class="fieldcontain">
					<span id="pointInteret-label" class="property-label"><g:message code="groupe.pointInteret.label" default="Point Interet" /></span>
					
						<g:each in="${groupeInstance.pointInteret}" var="p">
						<span class="property-value" aria-labelledby="pointInteret-label"><g:link controller="front" action="showPOI" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form  method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" controller="front" action="editPOI" resource="${groupeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
