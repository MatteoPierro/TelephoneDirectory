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
			<input type="text" name="search" onkeyup="jQuery.ajax({type:'POST',data:'searchValue='+encodeURIComponent(this.value), url:'${createLink (controller:'entry', action:'search')}',success:function(data,textStatus){jQuery('#searchresults').html(data);},error:function(XMLHttpRequest,textStatus,errorThrown){}});" />
		</div>

		<g:render template="searchResults" />
	</div>
</body>
</html>