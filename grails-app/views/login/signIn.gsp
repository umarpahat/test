<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta name="layout" content="main"/>
  <title>ProdStore : Login</title>

</head>
<body>
<div id="wrapper">
  <table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td width="18" height="18" align="left" valign="top"><img src="${resource(dir: 'images', file: 'left-top-corn.png')}" alt="corner" width="18" height="18"/></td>
      <td class="topShadow"></td>
      <td width="18" height="18" align="left" valign="top"><img src="${resource(dir: 'images', file: 'right-top-corn.png')}" alt="corner" width="18" height="18"/></td>
    </tr>
    <tr>
      <td class="leftShadow"></td>
      <td align="center" valign="middle" bgcolor="#FFFFFF">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="center" valign="top">
              <div class="enterPrizes">
                <g:form method="post" action="signIn" name="login_form">
                  <table width="100%" border="0" cellspacing="5" cellpadding="4" align="center">
                    <tr>
                      <td align="right" valign="middle">&nbsp;</td>
                      <td align="left" valign="middle"><h2>Sign in</h2></td>
                    </tr>
                    <tr>
                      <td width="40%" align="right" valign="middle">Email :</td>
                      <td align="left" valign="middle"><label>
                        <g:textField name="email" class="required email"/>
                      </label></td>
                    </tr>
                    <tr>
                      <td align="right" valign="middle">Password:</td>
                      <td align="left" valign="middle"><label>
                        <g:passwordField name="password" class="required"/>
                      </label></td>
                    </tr>
                    <tr>
                      <td align="right" valign="middle"></td>
                      <td align="left" valign="middle"><label>
                        <g:checkBox name="loginRemember" value="${true}"/> Remember me</label>  &nbsp; |  &nbsp; <a href="#" id="forgot" class="gray">forgot password</a></label></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td>
                        <g:submitButton name="button" value="Login"/>
                      </td>
                    </tr>
                  </table>
                </g:form>
              </div>
            </td>
          </tr>
        </table>
      </td>
      <td class="rightShadow"></td>
    </tr>
    <tr>
      <td width="18" height="18" align="left" valign="top"><img src="${resource(dir: 'images', file: 'left-bot-corn.png')}" alt="Corner" width="18" height="18"/></td>
      <td class="botShadow"></td>
      <td width="18" height="18" align="left" valign="top"><img src="${resource(dir: 'images', file: 'right-bot-corn.png')}" alt="corner" width="18" height="18"/></td>
    </tr>
  </table>
</div>
<script type="text/javascript">

  jQuery(function (){
     jQuery('#login_form').validate()
  });

</script>
</body>
</html>
