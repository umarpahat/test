<div id="register" class="formPanel">
<g:form controller="user" method="post" name="signUpForm" action="save">
  <div class="dialog">
    <table width="100%" border="0" cellspacing="0" cellpadding="4">
      <tbody>
      <tr class="prop">
        <td align="center" colspan="2"><h2><g:message code="engine.type.label" default="Sign Up"/></h2></td>
      </tr>
      <tr class="prop">
        <td valign="top" class="name">
          <label for="firstName"><g:message code="user.firstName.label" default="First Name"/></label>
        </td>
        <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'firstName', 'errors')}">
          <g:textField name="firstName" class="required" value="${userInstance?.firstName}"/>
        </td>
      </tr>
      <tr class="prop">
        <td valign="top" class="name">
          <label for="lastName"><g:message code="user.lastName.label" default="Last Name"/></label>
        </td>
        <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'lastName', 'errors')}">
          <g:textField name="lastName" class="required" value="${userInstance?.lastName}"/>
        </td>
      </tr>
      <tr class="prop">
        <td valign="top" class="name">
          <label for="password"><g:message code="user.password.label" default="Password"/></label>
        </td>
        <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'password', 'errors')}">
          <g:passwordField name="password" id="password" class="required password" value="${userInstance?.password}"/>
        </td>
      </tr>
      <tr class="prop">
        <td valign="top" class="name">
          <label for="confirm"><g:message code="user.confirm.label" default="confirm"/></label>
        </td>
        <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'confirm', 'errors')}">
          <g:passwordField name="confirm" class="required password equalTo" equalTo="#password" />
        </td>
      </tr>
      <tr class="prop">
        <td valign="top" class="name">
          <label for="phone"><g:message code="user.phone.label" default="Phone"/></label>
        </td>
        <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'phone', 'errors')}">
          <g:textField name="phone" class="required digits" value="${fieldValue(bean: userInstance, field: 'phone')}"/>
        </td>
      </tr>
      <tr class="prop">
        <td valign="top" class="name">
          <label for="address"><g:message code="user.address.label" default="Address"/></label>
        </td>
        <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'address', 'errors')}">
          <g:textField name="address" class="required" value="${userInstance?.address}"/>
        </td>
      </tr>
      <tr class="prop">
        <td valign="top" class="name">
          <label for="city"><g:message code="user.city.label" default="City"/></label>
        </td>
        <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'city', 'errors')}">
          <g:textField name="city" class="required"  value="${userInstance?.city}"/>
        </td>
      </tr>
      <tr class="prop">
        <td valign="top" class="name">
          <label for="country"><g:message code="user.country.label" default="Country"/></label>
        </td>
        <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'country', 'errors')}">
          <g:countrySelect name="country" class="required" value="${country}" style="width:150px;" noSelection="['':'-Choose Country -']"></g:countrySelect>
        </td>
      </tr>
      <tr class="prop">
        <td valign="top" class="name">
          <label for="state"><g:message code="user.state.label" default="State"/></label>
        </td>
        <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'state', 'errors')}">
          <g:textField name="state" class="required" value="${userInstance?.state}"/>
        </td>
      </tr>
      <tr class="prop">
        <td valign="top" class="name">
          <label for="email"><g:message code="user.email.label" default="Email"/></label>
        </td>
        <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'email', 'errors')}">
          <g:textField name="email" class="required email" value="${userInstance?.email}"/>
        </td>
      </tr>
      <tr>
        <td colspan="2" align="center"><div class="buttons">
          <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.submit.label', default: 'Submit')}"/></span>
        </div></td>
      </tr>
      </tbody>
    </table>
  </div>
</g:form>
</div>
<script type="text/javascript">
  jQuery(function (){
    jQuery('#signUpForm').validate({
      submitHandler: function(form) {
         // some other code
         // maybe disabling submit button
         // then:
         form.submit();
       }

    });
  });

</script>