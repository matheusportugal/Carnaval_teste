<%@ page import="carnaval.Escola" %>



<div class="fieldcontain ${hasErrors(bean: escolaInstance, field: 'sigla', 'error')} required">
	<label for="sigla">
		<g:message code="escola.sigla.label" default="Sigla" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="sigla" maxlength="45" required="" value="${escolaInstance?.sigla}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: escolaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="escola.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="nome" cols="40" rows="5" maxlength="255" required="" value="${escolaInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: escolaInstance, field: 'anoFundacao', 'error')} required">
	<label for="anoFundacao">
		<g:message code="escola.anoFundacao.label" default="Ano Fundacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="anoFundacao" type="number" value="${escolaInstance.anoFundacao}" required=""/>

</div>

