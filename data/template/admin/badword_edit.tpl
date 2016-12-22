<!--{include file="header.tpl"}-->

<div class="table clear">
<form name="form1" method="post" action="badword.php" onsubmit="return checkFormData();">
<input type="hidden" name="op" value="edit" />
<input type="hidden" name="id" value="<!--{$Badword.badword_id}-->" />
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader">编辑屏蔽关键字</td></tr>
  <tr class="alt1">
    <td align="right" width="30%">关键字</td>
    <td><input type="text" class="formInput" name="word" size="20" maxlength="20" value="<!--{$Badword.badword_name}-->" /></td>
  </tr>
  <tr>
    <td colspan="2" class="tfoot text_center">
    <input type="submit" class="formButton" accesskey="s" id="submit" value=" 编辑(S) " />
    <input type="reset" class="formButton" accesskey="r" value="重置(R)" />
    <input type="button" class="formButton" accesskey="n" value=" 返回(N) " onclick='javascript:history.back();' />
    </td>
  </tr>
</table>
</form>
</div>

<!--{include file="footer.tpl"}-->