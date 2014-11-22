<%@ page import="telephoneDirectory.Entry"%>



<table>
	<tbody>

		<tr class="prop">
			<td valign="top" class="name"><label for="firstName"><g:message
						code="entry.firstname.label" default="First Name" /></label></td>
			<td valign="top"
				class="value ${hasErrors(bean: entryInstance, field: 'firstName', 'errors')}">
				<g:textField name="firstName" value="${entryInstance?.firstName}" />
			</td>
		</tr>

		<tr class="prop">
			<td valign="top" class="name"><label for="lastName"><g:message
						code="entry.lastname.label" default="Last Name" /></label></td>
			<td valign="top"
				class="value ${hasErrors(bean: entryInstance, field: 'lastName', 'errors')}">
				<g:textField name="lastName" value="${entryInstance?.lastName}" />
			</td>
		</tr>

		<tr class="prop">
			<td valign="top" class="name"><label for="phoneNumber"><g:message
						code="entry.phonenumber.label" default="Phone Number" /></label></td>
			<td valign="top"
				class="value ${hasErrors(bean: entryInstance, field: 'phoneNumber', 'errors')}">
				<g:textField name="phoneNumber"
					value="${entryInstance?.phoneNumber}" />
			</td>
		</tr>

	</tbody>
</table>

