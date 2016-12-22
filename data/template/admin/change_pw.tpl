<!--{include file="header.tpl"}-->

<div class="table">
<form name="form1" method="post" onsubmit="return checkFormData();">
<input type="hidden" name="op" value="change_pw" />
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader">修改登录密码</td></tr>
  <tr class="alt1">
    <td align="right" width="30%">当前使用密码</td>
    <td width="70%"><input type="password" class="formInput" name="c_pw" size="30" maxlength="30" /></td>
  </tr>
  <tr class="alt2">
    <td align="right">新密码</td>
    <td><input type="password" class="formInput" name="n_pw" size="30" maxlength="30" /><br /><span class="form_clue">密码长度不得少于6个字符</span></td>
  </tr>
  <tr class="alt1">
    <td align="right">重复输入新密码</td>
    <td><input type="password" class="formInput" name="r_n_pw" size="30" maxlength="30" /></td>
  </tr>
  <tr>
    <td colspan="2" class="tfoot text_center">
    <input type="submit" class="formButton" id="submit" accesskey="s" value=" 提交修改(S) " />
    <input type="reset" class="formButton" accesskey="r" value="重置(R)" />
    <input type="button" class="formButton" accesskey="n" value=" 返回(N) " onclick='javascript:history.back();' />
    </td>
  </tr>
</table>
</form>
</div>

<!--{include file="footer.tpl"}-->