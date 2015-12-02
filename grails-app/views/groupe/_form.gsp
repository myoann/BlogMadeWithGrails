



<div class="fieldcontain ${hasErrors(bean: groupeInstance, field: 'nom', 'error')} required">
	<label for="nom">
		<g:message code="groupe.nom.label" default="Nom" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="nom" cols="40" rows="5" maxlength="255" required="" value="${groupeInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: groupeInstance, field: 'dateDeCreation', 'error')} required">
	<label for="dateDeCreation">
		<g:message code="groupe.dateDeCreation.label" default="Date De Creation" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateDeCreation" precision="day"  value="${groupeInstance?.dateDeCreation}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: groupeInstance, field: 'image', 'error')} ">
	<label for="image">
		<g:message code="groupe.image.label" default="Image" />
		
	</label>
	<g:select name="image" from="${Image.list()}" multiple="multiple" optionKey="id" size="5" value="${groupeInstance?.image*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: groupeInstance, field: 'pointInteret', 'error')} ">
	<label for="pointInteret">
		<g:message code="groupe.pointInteret.label" default="Point Interet" />
		
	</label>
	

</div>

