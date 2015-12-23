<%@ page import="carnaval.Integrante" %>



<div class="fieldcontain ${hasErrors(bean: integranteInstance, field: 'peso', 'error')} required">
	<label for="peso">
		<g:message code="integrante.peso.label" default="Peso" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="peso" value="${fieldValue(bean: integranteInstance, field: 'peso')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: integranteInstance, field: 'sapato', 'error')} required">
	<label for="sapato">
		<g:message code="integrante.sapato.label" default="Sapato" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="sapato" type="number" value="${integranteInstance.sapato}" required=""/>

</div>

