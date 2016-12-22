<!--{include file="header.tpl"}-->

<div class="tip">不指定搜索条件则显示全部数据</div>

<div class="table">
<form name="form1" method="get" action="user.php">
<input type="hidden" name="act" value="list" />
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader">用户搜索</td></tr>
  <tr class="alt1">
    <td align="right" width="30%">用户名</td>
    <td width="70%"><input type="text" class="formInput" name="name" size="30" maxlength="50" /><label><input type="checkbox" name="dark_match" value="1" />模糊匹配</label></td>
  </tr>
  <tr class="alt2">
    <td align="right">审核状态</td>
    <td><select name="auditing">
    <option value=""></option>
    <option value="1">已审核</option>
    <option value="0">未审核</option>
    </select></td>
  </tr>
  <tr class="alt1">
    <td align="right">来自</td>
    <td><select name="node_id">
        <option></option>
        <option value="0">本地用户</option>
        <!--{html_options options=$NodeSelect}-->
    </select></td>
  </tr>
  <tr class="alt2">
    <td align="right"><select name="team_type"><option value="id">联盟ID</option><option value="name">联盟名</option></select></td>
    <td><input type="text" class="formInput" name="team_key" size="30" maxlength="100" /></td>
  </tr>
  <tr class="alt1">
    <td align="right">显示结果按</td>
    <td><select><option value="">加入日期</option></select><select name="order"><option value="desc">降序排列</option><option value="asc">升序排列</option></select></td>
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