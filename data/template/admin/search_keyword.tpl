<!--{include file="header.tpl"}-->

<div class="table clear">
    <div class="f_nav">
    <form name="form2" onsubmit="return checkFormData();">
    <input type="hidden" name="act" value="keyword" />
    查找关键字:
    <input type="text" class="formInput" name="keyword" size="20" maxlength="20" />&nbsp;<input type="submit" class="formButton" id="submit" accessKey="s" value=" 查找(S) " />
    <input type="button" class="formButton" value=" 更新缓存 " onclick="window.location.href='search.php?act=force_update'" />
    </form>
    </div>
</div>

<div class="table clear">
<form name="form1" method="post">
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr>
    <td class="theader" colspan="10">热门搜索关键字(共 <!--{$totalnum}--> 条记录)</td>
  </tr>
  <tr class="tcat text_center">
    <td width="50"></td>
    <td width="80%">关键字</td>
    <td width="15%">搜索次数</td>
  </tr>
<!--{if $KeywordData}-->
<!--{foreach item=row from=$KeywordData key=key}-->
  <tr id="row_<!--{$key}-->" onclick="setPointer(this, <!--{$key}-->, 'click', 1);" class="alt<!--{cycle values='1,2'}-->" height="18" align="center">
    <td width="50"><input id="mark_box_<!--{$key}-->" name="data_id[]" type="checkbox" value="<!--{$row.search_keyword}-->" /></td>
    <td nowrap="nowrap"><!--{$row.search_keyword}--></td>
    <td><!--{$row.search_num}--></td>
  </tr>
<!--{/foreach}-->
  <tr>
    <td colspan="10" class="tcat text_left">
    <div class="left">
    <input type="button" value="全选" onclick='selectAll(true);' />
    <input type="button" value="全不选" onclick='selectAll(false);' />
    <input type="button" value="反选" onclick='againstSelect();' />
    <select name="op" onchange="executeOperate();">
    <option value="">将选中项</option>
    <option value="delete">删除</option>
    </select>
    </div>
    <div class="right" style="padding-top:4px;"><!--{$multipage|default:"只有一页"}--></div>
    </td>
  </tr>
<!--{else}-->
  <tr height="18" class="alt1 text_center">
    <td colspan="3">没有相关搜索关键字</td>
  </tr>
<!--{/if}-->
</table>
</form>
</div>

<!--{include file="footer.tpl"}-->