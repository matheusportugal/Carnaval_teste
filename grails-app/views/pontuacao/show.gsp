
<%@ page import="carnaval.Pontuacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pontuacao.label', default: 'Pontuacao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-pontuacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-pontuacao" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list pontuacao">
			
				<g:if test="${pontuacaoInstance?.posicao}">
				<li class="fieldcontain">
					<span id="posicao-label" class="property-label"><g:message code="pontuacao.posicao.label" default="Posicao" /></span>
					
						<span class="property-value" aria-labelledby="posicao-label"><g:fieldValue bean="${pontuacaoInstance}" field="posicao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pontuacaoInstance?.valor}">
				<li class="fieldcontain">
					<span id="valor-label" class="property-label"><g:message code="pontuacao.valor.label" default="Valor" /></span>
					
						<span class="property-value" aria-labelledby="valor-label"><g:fieldValue bean="${pontuacaoInstance}" field="valor"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:pontuacaoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${pontuacaoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
