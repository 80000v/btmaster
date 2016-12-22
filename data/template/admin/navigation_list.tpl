<!--{include file="header.tpl"}-->

<div class="table clear">
    <div class="f_nav">
    <input type="button" value="添加导航" onclick="window.location='navigation.php?act=add'" class="formButton" />
    <input type="button" value="顶部导航管理" <!--{if $Location eq "header"}-->disabled="disabled"<!--{else}-->onclick="window.location='navigation.php?location=header'"<!--{/if}--> class="formButton" />
    <input type="button" value="底部导航管理" <!--{if $Location eq "footer"}-->disabled="disabled"<!--{else}-->onclick="window.location='navigation.php?location=footer'"<!--{/if}--> class="formButton" />
    <input type="button" value="更新缓存" onclick="window.location='navigation.php?act=build_cache'" class="formButton" />
    </div>
</div>

<div class="table clear">
<form method="post">
<input type="hidden" name="op" value="rank" />
<input type="hidden" name="location" value="<!--{$Location}-->" />
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr>
    <td colspan="10" class="theader">自定义<!--{if $Location eq "header"}-->顶部<!--{else}-->底部<!--{/if}-->导航</td>
  </tr>
  <tr class="tcat text_center">
    <td width="10%">排序</td>
    <td width="15%" nowrap="nowrap">导航ID</td>
    <td width="*" nowrap="nowrap">导航名称</td>
    <td width="15%" nowrap="nowrap">操作</td>
  </tr>
<!--{if $NavigationData}-->
<!--{foreach item=row from=$NavigationData key=key}-->
  <tr id="row_<!--{$key}-->" onclick="setPointer(this, <!--{$key}-->, 'click');" class="alt<!--{cycle values='1,2'}-->" height="18" align="center">
    <td><input type="text" name="order[<!--{$row.navigation_id}-->]" value="<!--{$row.navigation_order}-->" size="4" maxlength="10" class="formInput text_center" /></td>
    <td nowrap="nowrap"><!--{$row.navigation_id}--></td>
    <td nowrap="nowrap"><a href="<!--{$row.navigation_url}-->" target="_blank"><!--{$row.navigation_name}--></a></td>
    <td nowrap="nowrap"><a href="navigation.php?act=edit&id=<!--{$row.navigation_id}-->"><img src="images/icon_edit.gif" title="编辑" /></a><a href="navigation.php?act=delete&id=<!--{$row.navigation_id}-->" onclick="return confirm('确定删除这个导航？');"><img src="images/icon_delete.gif" title="删除" /></a></td>
  </tr>
<!--{/foreach}-->
  <tr class="tcat">
    <td align="center"><input type="submit" value="排序" class="formButton" /></td><td colspan="3"></td>
  </tr>
<!--{else}-->
  <tr height="18">
    <td colspan="10" class="alt1 text_center">还没有添加<!--{if $Location eq "header"}-->顶部<!--{else}-->底部<!--{/if}-->导航！</td>
  </tr>
<!--{/if}-->
</table>
</form>
</div>

<!--{include file="footer.tpl"}-->