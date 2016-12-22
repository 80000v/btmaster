<!--{include file="header.tpl"}-->

<div class="table clear">
    <div class="f_nav">
    <input type="button" value="添加分类" onclick="window.location='sort.php?act=add'" class="formButton" />
    <input type="button" value="分类列表" onclick="window.location='sort.php'" class="formButton" />
    </div>
</div>

<div class="table clear">
<form name="form1" method="post" onsubmit="return checkFormData();">
<input type="hidden" name="op" value="<!--{$Action}-->" />
<!--{if $Action eq "edit"}--><input type="hidden" name="id" value="<!--{$SortData.sort_id}-->" /><!--{/if}-->
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader"><!--{if $Action eq "edit"}-->编辑<!--{else}-->添加<!--{/if}-->分类</td></tr>
<!--{if $smarty.const.ISPay}-->
  <tr class="alt1">
    <td align="right" width="30%">父分类</td>
    <td width="70%"><select id="parent_sort_id" name="parent_sort_id"><option value="0">无父分类</option><!--{$SortOption}--></select><br /><span class="form_clue">如果不选择父分类，该分类将作为顶级分类存在</span></td>
  </tr>
<!--{/if}-->
  <tr class="alt2">
    <td align="right">分类名称</td>
    <td><input type="text" class="formInput" name="sort_name" size="50" maxlength="100" value="<!--{$SortData.sort_name|escape:'html'}-->" /><br /><span class="form_clue">长度请限制在50个字符以内，允许使用HTML标签</span></td>
  </tr>
  <tr>
    <td colspan="2" class="tfoot text_center">
    <input type="submit" class="formButton" accesskey="s" id="submit" value=" <!--{if $Action eq 'edit'}-->编辑<!--{else}-->添加<!--{/if}-->分类(S) " />
    <input type="reset" class="formButton" accesskey="r" value="重置(R)" />
    <input type="button" class="formButton" accesskey="n" value=" 返回(N) " onclick='javascript:history.back();' />
    </td>
  </tr>
</table>
</form>
</div>

<!--{include file="footer.tpl"}-->