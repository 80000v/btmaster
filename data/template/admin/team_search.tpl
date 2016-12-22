<!--{include file="header.tpl"}-->

<div class="tip">不指定搜索条件则显示全部数据</div>

<div class="table">
<form name="form1" method="get" action="team.php">
<input type="hidden" name="act" value="list" />
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader">搜索联盟</td></tr>
  <tr class="alt1">
    <td align="right" width="30%">联盟名称</td>
    <td width="70%"><input type="text" class="formInput" name="title" size="30" /><label><input type="checkbox" name="dark_match" value="1" />模糊匹配</label></td>
  </tr>
  <tr class="alt2">
    <td align="right">是否通过验证</td>
    <td><input type="radio" name="auditing" value="all" checked="checked" />不限&nbsp;<input type="radio" name="auditing" value="1" />是&nbsp;<input type="radio" name="auditing" value="0" />否&nbsp;</td>
  </tr>
  <tr class="alt1">
    <td align="right">显示结果按</td>
    <td><select><option value="">创建日期</option></select><select name="order"><option value="desc">降序排列</option><option value="asc">升序排列</option></select></td>
  </tr>
  <tr>
    <td colspan="2" class="tfoot text_center">
    <input type="submit" class="formButton" accesskey="s" id="submit" value=" 显示结果(S) " />
    <input type="reset" class="formButton" accesskey="r" value="重置(R)" />
    <input type="button" class="formButton" accesskey="n" value=" 返回(N) " onclick='javascript:history.back();' />
    </td>
  </tr>
</table>
</form>
</div>

<!--{include file="footer.tpl"}-->