

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'POI.label', default: 'POI')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-POI" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-POI" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="description" title="${message(code: 'POI.description.label', default: 'Description')}" />
					
						<th><g:message code="POI.emplacement.label" default="Emplacement" /></th>
					
						<g:sortableColumn property="nom" title="${message(code: 'POI.nom.label', default: 'Nom')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${POIInstanceList}" status="i" var="POIInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${POIInstance.id}">${fieldValue(bean: POIInstance, field: "description")}</g:link></td>
					
						<td>${fieldValue(bean: POIInstance, field: "emplacement")}</td>
					
						<td>${fieldValue(bean: POIInstance, field: "nom")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${POIInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
