
<%@ page import="carnaval.Escola" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'escola.label', default: 'Escola')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-escola" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-escola" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="sigla" title="${message(code: 'escola.sigla.label', default: 'Sigla')}" />
					
						<g:sortableColumn property="nome" title="${message(code: 'escola.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="anoFundacao" title="${message(code: 'escola.anoFundacao.label', default: 'Ano Fundacao')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${escolaInstanceList}" status="i" var="escolaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${escolaInstance.id}">${fieldValue(bean: escolaInstance, field: "sigla")}</g:link></td>
					
						<td>${fieldValue(bean: escolaInstance, field: "nome")}</td>
					
						<td>${fieldValue(bean: escolaInstance, field: "anoFundacao")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${escolaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
