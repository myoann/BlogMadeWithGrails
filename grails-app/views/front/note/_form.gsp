



<div class="fieldcontain ${hasErrors(bean: noteInstance, field: 'note', 'error')} required">
	<label for="note">
		<g:message code="note.note.label" default="Note" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="note" cols="40" rows="5" maxlength="255" required="" value="${noteInstance?.note}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: noteInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="note.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${noteInstance?.date}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: noteInstance, field: 'pointInteret', 'error')} required">
	<label for="pointInteret">
		<g:message code="note.pointInteret.label" default="Point Interet" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="pointInteret" name="pointInteret.id" from="${POI.list()}" optionKey="id" required="" value="${noteInstance?.pointInteret?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: noteInstance, field: 'utilisateur', 'error')} required">
	<label for="utilisateur">
		<g:message code="note.utilisateur.label" default="Utilisateur" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="utilisateur" name="utilisateur.id" from="${Utilisateur.list()}" optionKey="id" required="" value="${noteInstance?.utilisateur?.id}" class="many-to-one"/>

</div>

