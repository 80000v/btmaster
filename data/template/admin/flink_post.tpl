<!--{include file="header.tpl"}-->

<div class="table clear">
    <div class="f_nav">
    <input type="button" value="添加友情链接" onclick="window.location='flink.php?act=add'" class="formButton" />
    <input type="button" value="友情链接管理" onclick="window.location='flink.php'" class="formButton" />
    </div>
</div>

<div class="table clear">
<form name="form1" method="post" onsubmit="return checkFormData();">
<input type="hidden" name="op" value="<!--{$Action}-->" />
<input type="hidden" name="id" value="<!--{$FLink.link_id}-->" />
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader"><!--{if $Action eq 'edit'}-->编辑<!--{else}-->添加<!--{/if}-->友情链接</td></tr>
  <tr class="alt1">
    <td align="right" width="20%">站点名称</td>
    <td width="80%"><input type="text" class="formInput" name="name" size="50" maxlength="200" value="<!--{$FLink.link_name|escape:'html'}-->" /></td>
  </tr>
  <tr class="alt2">
    <td align="right">说明文字</td>
    <td><input type="text" class="formInput" name="intro" size="50" maxlength="200" value="<!--{$FLink.link_intro}-->" /></td>
  </tr>
  <tr class="alt1">
    <td align="right">链接地址</td>
    <td><input type="text" class="formInput" name="url" size="50" maxlength="200" value="<!--{$FLink.link_url}-->" /></td>
  </tr>
  <tr class="alt2">
    <td align="right">站点LOGO</td>
    <td><input type="text" class="formInput" name="logo" size="50" maxlength="200" value="<!--{$FLink.link_logo}-->" /><br /><span class="form_clue">如果是添加文字链接此项请留空。LOGO规格:88×31</span></td>
  </tr>
  <tr class="alt1">
    <td align="right">显示顺序</td>
    <td><input type="text" class="formInput" name="order" size="50" maxlength="200" value="<!--{$FLink.link_order}-->" /><br /><span class="form_clue">如果值小于0将独占一行显示，默认为0</span></td>
  </tr>
  <tr>
    <td colspan="2" class="tfoot text_center">
    <input type="submit" class="formButton" accesskey="s" id="submit" value=" <!--{if $Action eq 'edit'}-->编辑<!--{else}-->添加<!--{/if}-->(S) " />
    <input type="reset" class="formButton" accesskey="r" value="重置(R)" />
    <input type="button" class="formButton" accesskey="n" value=" 返回(N) " onclick='javascript:history.back();' />
    </td>
  </tr>
</table>
</form>
</div>

<!--{include file="footer.tpl"}-->