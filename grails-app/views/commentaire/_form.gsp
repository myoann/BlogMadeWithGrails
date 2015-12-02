



<div class="fieldcontain ${hasErrors(bean: commentaireInstance, field: 'commentaire', 'error')} required">
	<label for="commentaire">
		<g:message code="commentaire.commentaire.label" default="Commentaire" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="commentaire" cols="40" rows="5" maxlength="500" required="" value="${commentaireInstance?.commentaire}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentaireInstance, field: 'dateCreation', 'error')} required">
	<label for="dateCreation">
		<g:message code="commentaire.dateCreation.label" default="Date Creation" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateCreation" precision="day"  value="${commentaireInstance?.dateCreation}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: commentaireInstance, field: 'pointInteret', 'error')} required">
	<label for="pointInteret">
		<g:message code="commentaire.pointInteret.label" default="Point Interet" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="pointInteret" name="pointInteret.id" from="${POI.list()}" optionKey="id" required="" value="${commentaireInstance?.pointInteret?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentaireInstance, field: 'utilisateur', 'error')} required">
	<label for="utilisateur">
		<g:message code="commentaire.utilisateur.label" default="Utilisateur" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="utilisateur" name="utilisateur.id" from="${Utilisateur.list()}" optionKey="id" required="" value="${commentaireInstance?.utilisateur?.id}" class="many-to-one"/>

</div>

