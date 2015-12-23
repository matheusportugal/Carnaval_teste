
<%@ page import="carnaval.Carnaval" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'carnaval.label', default: 'Carnaval')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-carnaval" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-carnaval" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="uf" title="${message(code: 'carnaval.uf.label', default: 'Uf')}" />
					
						<g:sortableColumn property="ano" title="${message(code: 'carnaval.ano.label', default: 'Ano')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${carnavalInstanceList}" status="i" var="carnavalInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${carnavalInstance.id}">${fieldValue(bean: carnavalInstance, field: "uf")}</g:link></td>
					
						<td><g:formatDate date="${carnavalInstance.ano}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${carnavalInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
