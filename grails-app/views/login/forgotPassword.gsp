<%--
  Created by IntelliJ IDEA.
  User: umar
  Date: 28/2/11
  Time: 2:08 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head><title>Simple GSP page</title></head>
  <body><div id="forgotpassword" class="formPanel">
  <g:form name="gorgotPassword" action="forgotPassword">
    <table width="100%" border="0" cellspacing="0" cellpadding="4">
      <tr>
        <td align="right" valign="middle">&nbsp;</td>
        <td align="left" valign="middle"><h2>Forgot Password</h2></td>
      </tr>
      <tr>
        <td width="60" align="right" valign="middle">Email :</td>
        <td align="left" valign="middle"><label>
          <g:textField name="forgotemail"/>
        </label></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><label>
          <g:submitButton name="sendemail" value="Send"/>
        </label></td>
      </tr>
    </table>
  </g:form>
</div></body>
</html>