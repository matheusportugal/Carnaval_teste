
<%@ page import="carnaval.Escola" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'escola.label', default: 'Escola')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-escola" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-escola" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list escola">
			
				<g:if test="${escolaInstance?.sigla}">
				<li class="fieldcontain">
					<span id="sigla-label" class="property-label"><g:message code="escola.sigla.label" default="Sigla" /></span>
					
						<span class="property-value" aria-labelledby="sigla-label"><g:fieldValue bean="${escolaInstance}" field="sigla"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${escolaInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="escola.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${escolaInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${escolaInstance?.anoFundacao}">
				<li class="fieldcontain">
					<span id="anoFundacao-label" class="property-label"><g:message code="escola.anoFundacao.label" default="Ano Fundacao" /></span>
					
						<span class="property-value" aria-labelledby="anoFundacao-label"><g:fieldValue bean="${escolaInstance}" field="anoFundacao"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:escolaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${escolaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
