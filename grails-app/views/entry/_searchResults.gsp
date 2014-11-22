<div id="searchresults">
	<br />
	<h3>Entries</h3>
	<div class="list">
		<table>
			<thead>
				<tr>
					<th><g:message code="entry.firstname.label"
							default="First Name" /></th>
					<th><g:message code="entry.lastname.label" default="Last Name" /></th>
					<th><g:message code="entry.phonenumber.label"
							default="Phone Number" /></th>
				</tr>
			</thead>
			<tbody>
				<g:each in="${searchresults}" status="i" var="entryInstance">
					<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
						<td><g:link controller="entry" action="show"
								id="${entryInstance.id}">
								${fieldValue(bean: entryInstance, field: "firstName")}
							</g:link></td>
						<td>
							${fieldValue(bean: entryInstance, field: "lastName")}
						</td>
						<td>
							${fieldValue(bean: entryInstance, field: "phoneNumber")}
						</td>
					</tr>
				</g:each>
			</tbody>
		</table>
	</div>
</div>