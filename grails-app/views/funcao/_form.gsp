<%@ page import="carnaval.Funcao" %>



<div class="fieldcontain ${hasErrors(bean: funcaoInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="funcao.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" required="" value="${funcaoInstance?.descricao}"/>

</div>

