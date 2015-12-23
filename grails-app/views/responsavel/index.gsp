
<%@ page import="carnaval.Responsavel" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'responsavel.label', default: 'Responsavel')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-responsavel" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-responsavel" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="inicioPeriodo" title="${message(code: 'responsavel.inicioPeriodo.label', default: 'Inicio Periodo')}" />
					
						<g:sortableColumn property="terminoPeriodo" title="${message(code: 'responsavel.terminoPeriodo.label', default: 'Termino Periodo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${responsavelInstanceList}" status="i" var="responsavelInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${responsavelInstance.id}">${fieldValue(bean: responsavelInstance, field: "inicioPeriodo")}</g:link></td>
					
						<td><g:formatDate date="${responsavelInstance.terminoPeriodo}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${responsavelInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
