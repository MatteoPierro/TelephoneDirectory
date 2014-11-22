<%@ page import="telephoneDirectory.Entry"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="main" />
<g:set var="entityName"
	value="${message(code: 'entry.label', default: 'Entry')}" />
<title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>
<body>

	<div class="dialog">
		<h1>
			<g:message code="default.edit.label" args="[entityName]" />
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
		<g:form url="[resource:entryInstance, action:'update']" method="PUT">
			<g:hiddenField name="version" value="${entryInstance?.version}" />

			<g:render template="form" />

			<div class="buttons">
				<span class="button"><g:actionSubmit class="save"
						action="update"
						value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
				<span class="button"><g:actionSubmit class="delete"
						action="delete"
						value="${message(code: 'default.button.delete.label', default: 'Delete')}"
						onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
			</div>
		</g:form>
	</div>
</body>
</html>