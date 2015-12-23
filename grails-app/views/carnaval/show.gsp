
<%@ page import="carnaval.Carnaval" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'carnaval.label', default: 'Carnaval')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-carnaval" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-carnaval" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list carnaval">
			
				<g:if test="${carnavalInstance?.uf}">
				<li class="fieldcontain">
					<span id="uf-label" class="property-label"><g:message code="carnaval.uf.label" default="Uf" /></span>
					
						<span class="property-value" aria-labelledby="uf-label"><g:fieldValue bean="${carnavalInstance}" field="uf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carnavalInstance?.ano}">
				<li class="fieldcontain">
					<span id="ano-label" class="property-label"><g:message code="carnaval.ano.label" default="Ano" /></span>
					
						<span class="property-value" aria-labelledby="ano-label"><g:formatDate date="${carnavalInstance?.ano}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:carnavalInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${carnavalInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
