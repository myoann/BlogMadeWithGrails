



<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'source', 'error')} required">
	<label for="source">
		<g:message code="image.source.label" default="Source" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="source" cols="40" rows="5" maxlength="600" required="" value="${imageInstance?.source}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'image', 'error')} ">
	<label for="image">
		<g:message code="image.image.label" default="Image" />
		
	</label>
	<input type="file" id="image" name="image" />

</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'groupe', 'error')} ">
	<label for="groupe">
		<g:message code="image.groupe.label" default="Groupe" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'pointInteret', 'error')} ">
	<label for="pointInteret">
		<g:message code="image.pointInteret.label" default="Point Interet" />
		
	</label>
	

</div>

