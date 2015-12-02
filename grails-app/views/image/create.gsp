<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main">
	<g:set var="entityName" value="${message(code: 'image.label', default: 'Image')}" />
	<title><g:message code="default.create.label" args="[entityName]" /></title>

	<style>
	#image{
		height: 100px;
	}
	#gallery .thumbnail{
		width:150px;
		height: 150px;
		float:left;
		margin:2px;
	}
	#gallery .thumbnail img{
		width:150px;
		height: 150px;
	}
	</style>
	<script>
		window.onload = function(){
			if (window.File && window.FileList && window.FileReader) {
				Init();
			}
			// initialize
			function Init() {
				var image = document.getElementById("image");
				image.addEventListener("change", FileSelectHandler, false);
			}
			// file drag hover
			function FileDragHover(e) {
				e.stopPropagation();
				e.preventDefault();
				e.target.className = (e.type == "dragover" ? "hover" : "");
			}
			// file selection
			function FileSelectHandler(e) {
				// cancel event and hover styling
				FileDragHover(e);
				var files = this.files;
				for(var i=0; i<files.length; i++){
					previewImage(this.files[i]);
				}
			}
			function previewImage(file) {
				console.log("dedans uploadfiles");
				var sourceImg = document.getElementById("sourceImg");
				sourceImg.value = file.name;
				var gallery = document.getElementById("gallery");
				var imageType = /image.*/;
				if (!file.type.match(imageType)) {
					throw "Le fichier doit être une image";
				}
//					var sourceImg = document.getElementById("sourceImg");
//					sourceImg.innerText(file.t);
				var thumb = document.createElement("div");
				thumb.classList.add('thumbnail'); // ajout de la classe thumbnail dans le div
				var img = document.createElement("img");
				img.file = file;
				thumb.appendChild(img);
				gallery.appendChild(thumb);
				// Affiche le thumbnail des images
				var reader = new FileReader();
				reader.onload = (function(aImg) {
					return function(e) {
						aImg.src = e.target.result; };
				})(img);
				reader.readAsDataURL(file);
			}
		}
	</script>
</head>
<body>
<a href="#create-image" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
	<ul>
		<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
		<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
	</ul>
</div>
<div id="create-image" class="content scaffold-create" role="main">
	<h1><g:message code="default.create.label" args="[entityName]" /></h1>
	<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
	</g:if>
	<g:hasErrors bean="${imageInstance}">
		<ul class="errors" role="alert">
			<g:eachError bean="${imageInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
			</g:eachError>
		</ul>
	</g:hasErrors>
	<g:form url="[resource:imageInstance, action:'save']" enctype="multipart/form-data">
		<fieldset class="form">
			<g:render template="form"/>
		</fieldset>
		<fieldset class="buttons">
			<g:submitButton id="submitbutton" name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
		</fieldset>
	</g:form>
</div>
</body>
</html>