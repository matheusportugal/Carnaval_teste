<%@ page import="carnaval.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nome', 'error')} required">
    <label for="nome">
        <g:message code="usuario.nome.label" default="Nome"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textArea name="nome" cols="40" rows="5" maxlength="255" required="" value="${usuarioInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'cpf', 'error')} required">
    <label for="cpf">
        <g:message code="usuario.cpf.label" default="Cpf"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="cpf" maxlength="45" required="" value="${usuarioInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'email', 'error')} required">
    <label for="email">
        <g:message code="usuario.email.label" default="Email"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="email" maxlength="200" required="" value="${usuarioInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'login', 'error')} required">
    <label for="login">
        <g:message code="usuario.login.label" default="Login"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="login" maxlength="45" required="" value="${usuarioInstance?.login}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'senha', 'error')} required">
    <label for="senha">
        <g:message code="usuario.senha.label" default="Senha"/>
        <span class="required-indicator">*</span>
    </label>
    <g:passwordField name="senha" maxlength="45" required="" value="${usuarioInstance?.senha}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'municipio', 'error')} required">
    <label for="municipio">
        <g:message code="usuario.municipio.label" default="Municipio"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="municipio" maxlength="150" required="" value="${usuarioInstance?.municipio}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'dataNascimento', 'error')} required">
    <label for="dataNascimento">
        <g:message code="usuario.dataNascimento.label" default="Data Nascimento"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="dataNascimento" precision="day" value="${usuarioInstance?.dataNascimento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'casado', 'error')} ">
    <label for="casado">
        <g:message code="usuario.casado.label" default="Casado"/>

    </label>
    <g:checkBox name="casado" value="${usuarioInstance?.casado}"/>

</div>

