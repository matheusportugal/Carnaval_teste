
<%@ page import="carnaval.Responsavel" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'responsavel.label', default: 'Responsavel')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-responsavel" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-responsavel" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list responsavel">
			
				<g:if test="${responsavelInstance?.inicioPeriodo}">
				<li class="fieldcontain">
					<span id="inicioPeriodo-label" class="property-label"><g:message code="responsavel.inicioPeriodo.label" default="Inicio Periodo" /></span>
					
						<span class="property-value" aria-labelledby="inicioPeriodo-label"><g:formatDate date="${responsavelInstance?.inicioPeriodo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${responsavelInstance?.terminoPeriodo}">
				<li class="fieldcontain">
					<span id="terminoPeriodo-label" class="property-label"><g:message code="responsavel.terminoPeriodo.label" default="Termino Periodo" /></span>
					
						<span class="property-value" aria-labelledby="terminoPeriodo-label"><g:formatDate date="${responsavelInstance?.terminoPeriodo}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:responsavelInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${responsavelInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
