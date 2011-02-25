<div id="login" class="formPanel">
  <g:form controller="user" action="login" name="login_form" id="login_form">
    <div id="mess"> <g:if test="${flash.message}">
    <div class="message">${flash.message}</div>
  </g:if>
  <g:hasErrors bean="${userInstance}">
    <div class="errors">
      <g:renderErrors bean="${userInstance}" as="list"/>
    </div>
  </g:hasErrors></div>
    <table width="100%" border="0" cellspacing="0" cellpadding="4">
      <tr>
        <td align="right" valign="middle">&nbsp;</td>
        <td align="left" valign="middle"><h2>Sign in</h2></td>
      </tr>
      <tr>
        <td width="60" align="right" valign="middle">Email :</td>
        <td align="left" valign="middle"><label>
          <g:textField name="email" class="required email" />
        </label></td>
      </tr>
      <tr>
        <td align="right" valign="middle">Password:</td>
        <td align="left" valign="middle"><label>
          <g:passwordField name="password" class="required" />
        </label></td>
      </tr>
      <tr>
        <td align="right" valign="middle"></td>
        <td align="left" valign="middle"><label>
          %{--<g:checkBox name="loginRemember" value="${true}"/> Remember me</label></td>--}%
      </tr>
      <tr>
        <td align="right" valign="middle"></td>
        <td align="left" valign="middle"><label><a href="#" id="forgot" class="gray">forgot password</a></label></td>
      </tr>
      <tr>
        <td align="right" valign="middle"></td>
        <td align="left" valign="middle"><label><a href="#" id="newUser" class="gray">New User</a></label></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>
          <input type="button" name="loginButton" value="Login" id="loginButton"/>
     </td>
      </tr>
    </table>
  </g:form>
</div>
<script type="text/javascript">
  function validateForm(){
    var email=jQuery('#login_form').validate().element('#email');
    var password=jQuery('#login_form').validate().element('#password');
    return email && password;
  }
  function showMessage(){
//   mess= " succefuly Login"
//   }
//   ifelse
//   {
//     mess= "   Not validate User  "

   }
  var data = $('#login_form').serialize();
  var url = '${createLink(controller: "user", action: 'login')}';
  jQuery(function(){
    $('#loginButton').click(function(){
      getAjaxResponse(url,'mess',  data,  showMessage)
    });
  });
  function getAjaxResponse(url, divId, data) {
    $.post(url, data, function(ajaxResponse) {
      if (divId) {
        $("#" + divId).html(ajaxResponse);
      }
      $('#'+divId).text(ajaxResponse);
    })
  }

</script>