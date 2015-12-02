



<div class="fieldcontain ${hasErrors(bean: POIInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="POI.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="255" required="" value="${POIInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: POIInstance, field: 'commentaire', 'error')} ">
	<label for="commentaire">
		<g:message code="POI.commentaire.label" default="Commentaire" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${POIInstance?.commentaire?}" var="c">
    <li><g:link controller="commentaire" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="commentaire" action="create" params="['POI.id': POIInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'commentaire.label', default: 'Commentaire')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: POIInstance, field: 'emplacement', 'error')} required">
	<label for="emplacement">
		<g:message code="POI.emplacement.label" default="Emplacement" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="emplacement" name="emplacement.id" from="${Emplacement.list()}" optionKey="id" required="" value="${POIInstance?.emplacement?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: POIInstance, field: 'groupe', 'error')} ">
	<label for="groupe">
		<g:message code="POI.groupe.label" default="Groupe" />
		
	</label>
	<g:select name="groupe" from="${Groupe.list()}" multiple="multiple" optionKey="id" size="5" value="${POIInstance?.groupe*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: POIInstance, field: 'image', 'error')} ">
	<label for="image">
		<g:message code="POI.image.label" default="Image" />
		
	</label>
	<g:select name="image" from="${Image.list()}" multiple="multiple" optionKey="id" size="5" value="${POIInstance?.image*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: POIInstance, field: 'nom', 'error')} required">
	<label for="nom">
		<g:message code="POI.nom.label" default="Nom" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nom" required="" value="${POIInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: POIInstance, field: 'note', 'error')} ">
	<label for="note">
		<g:message code="POI.note.label" default="Note" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${POIInstance?.note?}" var="n">
    <li><g:link controller="note" action="show" id="${n.id}">${n?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="note" action="create" params="['POI.id': POIInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'note.label', default: 'Note')])}</g:link>
</li>
</ul>


</div>

