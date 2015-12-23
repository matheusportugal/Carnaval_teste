<%@ page import="carnaval.Pontuacao" %>



<div class="fieldcontain ${hasErrors(bean: pontuacaoInstance, field: 'posicao', 'error')} required">
	<label for="posicao">
		<g:message code="pontuacao.posicao.label" default="Posicao" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="posicao" type="number" value="${pontuacaoInstance.posicao}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pontuacaoInstance, field: 'valor', 'error')} required">
	<label for="valor">
		<g:message code="pontuacao.valor.label" default="Valor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valor" type="number" value="${pontuacaoInstance.valor}" required=""/>

</div>

