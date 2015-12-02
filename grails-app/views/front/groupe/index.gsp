

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'groupe.label', default: 'Groupe')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-groupe" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link controller="front" class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-groupe" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nom" title="${message(code: 'groupe.nom.label', default: 'Nom')}" />
					
						<g:sortableColumn property="dateDeCreation" title="${message(code: 'groupe.dateDeCreation.label', default: 'Date De Creation')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${groupeInstanceList}" status="i" var="groupeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${groupeInstance.id}">${fieldValue(bean: groupeInstance, field: "nom")}</g:link></td>
					
						<td><g:formatDate date="${groupeInstance.dateDeCreation}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${groupeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
