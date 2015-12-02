



<div class="fieldcontain ${hasErrors(bean: emplacementInstance, field: 'adresse', 'error')} required">
	<label for="adresse">
		<g:message code="emplacement.adresse.label" default="Adresse" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="adresse" cols="40" rows="5" maxlength="255" required="" value="${emplacementInstance?.adresse}"/>

</div>

