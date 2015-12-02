<%@ page import="tp1.Image" %>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'source', 'error')} required">
	<label for="source">
		<g:message code="image.source.label" default="Source" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea readonly="readonly" id="sourceImg" name="source" cols="40" rows="5" maxlength="600" required="" value="${imageInstance?.source}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'groupe', 'error')} ">
	<label for="groupe">
		<g:message code="image.groupe.label" default="Groupe" />

	</label>


</div>
<div class="fieldcontain">
	<label for="image"> Image :</label>
	<input type="file" id="image" name="image">
	<div id="gallery"></div>
</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'pointInteret', 'error')} ">
	<label for="pointInteret">
		<g:message code="image.pointInteret.label" default="Point Interet" />

	</label>


</div>