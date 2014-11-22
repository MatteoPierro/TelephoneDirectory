<%@ page import="telephoneDirectory.Entry"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="main" />
<title>Telephone Directory</title>
</head>
<body>
	<div class="dialog">
		<g:if test="${flash.message}">
			<div class="message">
				${flash.message}
			</div>
		</g:if>
		<br /> <br />
		<div id="searchbox">
			Search:
			<g:remoteField name="search" paramName="searchValue"
				controller="entry" action="search" update="searchresults" />
		</div>

		<g:render template="searchResults" />
	</div>
</body>
</html>