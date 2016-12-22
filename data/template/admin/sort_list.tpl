<!--{include file="header.tpl"}-->

<div class="table clear">
    <div class="f_nav">
    <input type="button" value="添加分类" onclick="window.location='sort.php?act=add'" class="formButton" />
    <input type="button" value="分类列表" onclick="window.location='sort.php'" class="formButton" />
    <input type="button" value="更新缓存" onclick="window.location='sort.php?act=build_cache'" class="formButton" />
    </div>
</div>

<div class="table clear">
<form action="sort.php" method="post">
<input type="hidden" name="op" value="order" />
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr>
    <td colspan="10" class="theader">已添加资源分类列表</td>
  </tr>
  <tr class="alt1" align="left"><td class="sort_list"><!--{$SortData|default:"还没有添加任何分类！"}--></td></tr>
  <tr><td class="tfoot text_center"><input type="submit" class="formButton" value="保存分类顺序" /></td></tr>
</table>
</form>
</div>

<!--{include file="footer.tpl"}-->