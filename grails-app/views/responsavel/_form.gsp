<%@ page import="carnaval.Responsavel" %>



<div class="fieldcontain ${hasErrors(bean: responsavelInstance, field: 'inicioPeriodo', 'error')} required">
	<label for="inicioPeriodo">
		<g:message code="responsavel.inicioPeriodo.label" default="Inicio Periodo" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="inicioPeriodo" precision="day"  value="${responsavelInstance?.inicioPeriodo}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: responsavelInstance, field: 'terminoPeriodo', 'error')} required">
	<label for="terminoPeriodo">
		<g:message code="responsavel.terminoPeriodo.label" default="Termino Periodo" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="terminoPeriodo" precision="day"  value="${responsavelInstance?.terminoPeriodo}"  />

</div>

