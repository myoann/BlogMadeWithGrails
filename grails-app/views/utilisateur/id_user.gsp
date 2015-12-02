<%--
  Created by IntelliJ IDEA.
  User: Yoann
  Date: 12/2/2015
  Time: 10:52 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'utilisateur.label', default: 'Utilisateur')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
<a href="#show-utilisateur" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
</div>
<div id="show-utilisateur" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list utilisateur">

        <g:if test="${utilisateurInstance?.nom}">
            <li class="fieldcontain">
                <span id="nom-label" class="property-label"><g:message code="utilisateur.nom.label" default="Nom" /></span>

                <span class="property-value" aria-labelledby="nom-label"><g:fieldValue bean="${utilisateurInstance}" field="nom"/></span>

            </li>
        </g:if>

        <g:if test="${utilisateurInstance?.prenom}">
            <li class="fieldcontain">
                <span id="prenom-label" class="property-label"><g:message code="utilisateur.prenom.label" default="Prenom" /></span>

                <span class="property-value" aria-labelledby="prenom-label"><g:fieldValue bean="${utilisateurInstance}" field="prenom"/></span>

            </li>
        </g:if>

        <g:if test="${utilisateurInstance?.mail}">
            <li class="fieldcontain">
                <span id="mail-label" class="property-label"><g:message code="utilisateur.mail.label" default="Mail" /></span>

                <span class="property-value" aria-labelledby="mail-label"><g:fieldValue bean="${utilisateurInstance}" field="mail"/></span>

            </li>
        </g:if>

        <g:if test="${utilisateurInstance?.password}">
            <li class="fieldcontain">
                <span id="password-label" class="property-label"><g:message code="utilisateur.password.label" default="Password" /></span>

                <span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${utilisateurInstance}" field="password"/></span>

            </li>
        </g:if>

        <g:if test="${utilisateurInstance?.commentaire}">
            <li class="fieldcontain">
                <span id="commentaire-label" class="property-label"><g:message code="utilisateur.commentaire.label" default="Commentaire" /></span>

                <g:each in="${utilisateurInstance.commentaire}" var="c">
                    <span class="property-value" aria-labelledby="commentaire-label"><g:link controller="commentaire" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
                </g:each>

            </li>
        </g:if>

        <g:if test="${utilisateurInstance?.note}">
            <li class="fieldcontain">
                <span id="note-label" class="property-label"><g:message code="utilisateur.note.label" default="Note" /></span>

                <g:each in="${utilisateurInstance.note}" var="n">
                    <span class="property-value" aria-labelledby="note-label"><g:link controller="note" action="show" id="${n.id}">${n?.encodeAsHTML()}</g:link></span>
                </g:each>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource:utilisateurInstance, action:'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${utilisateurInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
            <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
        </fieldset>
    </g:form>
</div>
</body>
</html>
