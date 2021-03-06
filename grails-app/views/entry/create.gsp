<%@ page import="telephoneDirectory.Entry"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="main" />
<g:set var="entityName"
	value="${message(code: 'entry.label', default: 'Entry')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>
</head>
<body>
	<div class="dialog">
		<h1>
			<g:message code="default.create.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message">
				${flash.message}
			</div>
		</g:if>
		<g:hasErrors bean="${entryInstance}">
			<div class="errors">
				<g:renderErrors bean="${entryInstance}" as="list" />
			</div>
		</g:hasErrors>
		<g:form action="save">

			<g:render template="form" />

			<div class="buttons">
				<span class="button"><g:submitButton name="create"
						class="save"
						value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
			</div>
		</g:form>
	</div>
</body>
</html>