<!--{include file="header.tpl"}-->

<div class="table" style="width:380px;margin:60px auto 0 auto;">
<form name="form1" action="index.php" method="post">
<input type="hidden" name="op" value="login" />
<input type="hidden" name="url" value="<!--{$smarty.const.CURRENT_URL|urlencode}-->" />
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader text_bold"><img src="images/icon_login.gif" />&nbsp;管理员登录</td></tr>
  <tr class="alt1">
    <td class="text_right" width="120">用户名</td>
    <td width="230"><input type="text" id="username" name="username" class="formInput" size="25" maxlength="30" /></td>
  </tr>
  <tr class="alt2">
    <td class="text_right">密&nbsp;&nbsp;码</td>
    <td><input type="password" name="password" class="formInput" size="25" /></td>
  </tr>
<!--{if $Config.verify_code_mlogin}-->
  <tr class="alt1">
    <td class="text_right">验证码</td>
    <td><input type="text" name="vcode" class="formInput" size="4" maxlength="4" /><img src="vimg.php?n=mlogin" align="absmiddle" alt="图片验证码" /></td>
  </tr>
<!--{/if}-->
  <tr>
    <td class="tfoot text_center" colspan="2"><input type="submit" id="submit" class="formButton" value=" 登 录 " /></td>
  </tr>
</table>
</form>
</div>

<script type="text/javascript">
$('username').focus();
</script>

<!--{include file="footer.tpl"}-->