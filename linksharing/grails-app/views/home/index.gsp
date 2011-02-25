<%@ page import="com.intelligrape.linkSharing.User" contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Welcome to Login </title>
  <meta name="layout" content="main" />
</head>
<body>
<div class="body">
  <g:if test="${flash.message}">
    <div class="message">${flash.message}</div>
  </g:if>
  <g:form  name="login_form" controller="home" action="login" >
    <table width="150" cellpadding="0" cellspacing="0" align="center">
      <tr>
        <td align="center"><g:textField name="email" value="email" onblur="javascript:if(this.value==''){this.value='email'}" onfocus="javascript:if(this.value=='email'){this.value=''}" class="comment-pad5"/></td>
      </tr>
      <tr>
        <td align="center"><input name="password" value="password"  type="text" onblur="javascript:if(this.value==''){this.value='password',this.type='text'} else {this.type='password'}" onfocus="javascript:if(this.value=='password'){this.value=''} {this.type='password'}" /> </td>
      </tr>
      <tr>
        <td align="center"><g:submitButton name="submit" value="Login" /> <input type="reset" name="reset" value="cancel" /></td>
      </tr>
    </table>
  </g:form>
</div>
</body>
</html>