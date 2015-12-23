
<%@ page import="carnaval.Integrante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'integrante.label', default: 'Integrante')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-integrante" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-integrante" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="peso" title="${message(code: 'integrante.peso.label', default: 'Peso')}" />
					
						<g:sortableColumn property="sapato" title="${message(code: 'integrante.sapato.label', default: 'Sapato')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${integranteInstanceList}" status="i" var="integranteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${integranteInstance.id}">${fieldValue(bean: integranteInstance, field: "peso")}</g:link></td>
					
						<td>${fieldValue(bean: integranteInstance, field: "sapato")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${integranteInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
