<!--{include file="header.tpl"}-->

<div class="table">
<form name="form1" method="post" onsubmit="return checkFormData();">
<input type="hidden" name="op" value="<!--{$Action}-->" />
<input type="hidden" name="id" value="<!--{$Node.node_id}-->" />
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader"><!--{if $Action eq 'edit'}-->编辑<!--{else}-->添加<!--{/if}-->登录节点</td></tr>
  <tr class="alt1">
    <td align="right" width="30%">节点名称</td>
    <td width="70%"><input type="text" class="formInput" name="node_name" size="50" maxlength="50" value="<!--{$Node.node_name}-->" /><br /><span class="form_clue">为该节点设置一个名称，用户在登录时将看到。</span></td>
  </tr>
  <tr class="alt2">
    <td align="right">站点地址</td>
    <td><input type="text" class="formInput" name="node_site_url" size="50" maxlength="200" value="<!--{$Node.node_site_url}-->" /><br /><span class="form_clue">节点网站的地址。</span></td>
  </tr>
  <tr class="alt1">
    <td align="right">登录验证地址</td>
    <td><input type="text" class="formInput" name="node_verify_url" size="50" maxlength="200" value="<!--{$Node.node_verify_url}-->" /><br /><span class="form_clue">节点用户首次登录发布系统时，将到该地址进行验证。</span></td>
  </tr>
  <tr class="alt2">
    <td align="right">验证密码</td>
    <td><input type="text" class="formInput" name="node_key" size="20" maxlength="50" value="<!--{$Node.node_key}-->" /><br /><span class="form_clue">设置校验密码，将使数据传输更安全。建议设置一个较为复杂的密码。</span></td>
  </tr>
  <tr class="alt1">
    <td align="right">字符编码</td>
    <td><input type="text" class="formInput" name="node_encoding" size="20" maxlength="20" value="<!--{$Node.node_encoding}-->" /><br /><span class="form_clue">目标网站使用的编码，编码名称必须是一个有效且书写正确的编码。例如: gb2312或utf-8。如果您不清楚怎么设置，请联系我们。</span></td>
  </tr>
  <tr class="alt2">
    <td align="right">注册后多少天后才允许发布</td>
    <td><input type="text" class="formInput" name="node_condition" size="10" maxlength="10" value="<!--{$Node.node_condition}-->" />天<br /><span class="form_clue">设置为 -1 将禁止该节点增加新发布用户，设置为 0 表示不限制。</span></td>
  </tr>
  <tr>
    <td colspan="2" class="tfoot text_center">
    <input type="submit" class="formButton" accesskey="s" id="submit" value=" <!--{if $Action eq 'edit'}-->编辑<!--{else}-->添加<!--{/if}-->登录节点(S) " />
    <input type="reset" class="formButton" accesskey="r" value="重置(R)" />
    <input type="button" class="formButton" accesskey="n" value=" 返回(N) " onclick='javascript:history.back();' />
    </td>
  </tr>
</table>
</form>
</div>

<!--{include file="footer.tpl"}-->