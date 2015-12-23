<%@ page import="carnaval.Carnaval" %>



<div class="fieldcontain ${hasErrors(bean: carnavalInstance, field: 'uf', 'error')} required">
	<label for="uf">
		<g:message code="carnaval.uf.label" default="Uf" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="uf" from="${carnaval.UF?.values()}" keys="${carnaval.UF.values()*.name()}" required="" value="${carnavalInstance?.uf?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: carnavalInstance, field: 'ano', 'error')} required">
	<label for="ano">
		<g:message code="carnaval.ano.label" default="Ano" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="ano" precision="day"  value="${carnavalInstance?.ano}"  />

</div>

