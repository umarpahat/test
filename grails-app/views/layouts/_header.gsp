<div id="header">
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td height="25" align="center" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="50%" align="left" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="25" align="left" valign="middle">
                <img src="${resource(dir: 'images', file: 'telephone-iocn.png')}" alt="Grails" border="0"/></td>
              <td align="left" valign="middle" class="fontSide11"><g:message code="user.firstName.label" default="Contact Us :  + 91 991 075 864 1"/></td>
            </tr>
          </table></td>
          <td align="right" valign="middle" class="fontSide11">
            <g:if test="${session?.user}">
              Welcome : ${session?.user.firstName} ${session?.user.lastName} |  <g:link controller="login" action="logout" class="gray"><g:message code="user.logout.label" default="Logout"/></g:link>
            </g:if>
            <g:else>
              <g:link controller="login" class="gray">Sign In</g:link> &nbsp; |   &nbsp; <a href="#"  id="singUp" class="gray">Sign Up</a>
            </g:else>
          &nbsp;   <a href="#" class="blue cart">Cart(<span class="black">1</span>)</a></td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td height="110" valign="bottom">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="30%" height="110" align="left" valign="middle"><a href="#"><img src="${resource(dir: 'images', file: 'logo.png')}" alt="ProdStore" border="0"/></a></td>
          <td align="center" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="55" align="right" valign="middle">
                %{--<g:form name="searchForm" method="post" action="">--}%
                <label>
                  <g:textField name="search" class="searchBg" value="Search Keyword" onfocus="if(this.value=='Search Keyword')this.value=''" onblur="if(this.value=='')this.value='Search Keyword'"/>
                </label>
                %{--</g:form>--}%
              </td>
            </tr>
            <tr>
              <td height="55" align="right" valign="bottom"><div id="menu"><ul>
                <li><a href="${createLink(url: '/prodStore')}"><span>Contact Us</span></a></li>
                <li><a href="${createLink(url: '/prodStore')}"><span>About Us</span></a></li>
                <li><a href="${createLink(url: '/prodStore')}" class="current"><span>Home</span></a></li>
              </ul></div></td>
            </tr>
          </table></td>
        </tr>
      </table>
      </td>
    </tr>
  </table>
      %{--<g:render template="/layouts/forgot"/>--}%
      <g:render template="/layouts/signUp"/>
</div>