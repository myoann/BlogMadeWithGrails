



<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'nom', 'error')} required">
	<label for="nom">
		<g:message code="utilisateur.nom.label" default="Nom" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="nom" cols="40" rows="5" maxlength="255" required="" value="${utilisateurInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'prenom', 'error')} required">
	<label for="prenom">
		<g:message code="utilisateur.prenom.label" default="Prenom" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="prenom" cols="40" rows="5" maxlength="255" required="" value="${utilisateurInstance?.prenom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'mail', 'error')} required">
	<label for="mail">
		<g:message code="utilisateur.mail.label" default="Mail" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="mail" required="" value="${utilisateurInstance?.mail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="utilisateur.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" value="${utilisateurInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'commentaire', 'error')} ">
	<label for="commentaire">
		<g:message code="utilisateur.commentaire.label" default="Commentaire" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${utilisateurInstance?.commentaire?}" var="c">
    <li><g:link controller="commentaire" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="commentaire" action="create" params="['utilisateur.id': utilisateurInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'commentaire.label', default: 'Commentaire')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'isAdmin', 'error')} ">
	<label for="isAdmin">
		<g:message code="utilisateur.isAdmin.label" default="Is Admin" />
		
	</label>
	<g:checkBox name="isAdmin" value="${utilisateurInstance?.isAdmin}" />

</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'note', 'error')} ">
	<label for="note">
		<g:message code="utilisateur.note.label" default="Note" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${utilisateurInstance?.note?}" var="n">
    <li><g:link controller="note" action="show" id="${n.id}">${n?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="note" action="create" params="['utilisateur.id': utilisateurInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'note.label', default: 'Note')])}</g:link>
</li>
</ul>


</div>

