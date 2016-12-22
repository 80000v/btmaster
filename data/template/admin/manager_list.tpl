<!--{include file="header.tpl"}-->

<div class="table clear">
    <div class="f_nav">
    <input type="button" value="添加管理员" onclick="window.location='manager.php?type=manager&act=add'" class="formButton" />
    <input type="button" value="管理员列表" onclick="window.location='manager.php?type=manager'" class="formButton" />
    </div>
</div>

<div class="table clear">
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr>
    <td colspan="10" class="theader">现有管理员(共&nbsp;<!--{$totalnum}-->&nbsp;个)</td>
  </tr>
  <tr class="tcat text_center">
    <td width="50%" nowrap="nowrap">管理员</td>
    <td width="30%">添加日期</td>
    <td width="20%" nowrap="nowrap"></td>
  </tr>
<!--{if $ManagerData}-->
<!--{foreach item=row from=$ManagerData key=key}-->
  <tr id="row_<!--{$key}-->" onclick="setPointer(this, <!--{$key}-->, 'click');" class="alt<!--{cycle values='1,2'}-->" height="18" align="center">
    <td nowrap="nowrap"><a href="manager.php?type=log&id=<!--{$row.manager_id}-->"><span<!--{if $row.is_super_manager}--> class="text_red"<!--{/if}-->><!--{$row.manager_name}--></span></td>
    <td nowrap="nowrap"><!--{$row.dateline|date_format:"%Y-%m-%d %H:%M:%S"}--></td>
    <td nowrap="nowrap"><a href="manager.php?type=manager&act=edit&id=<!--{$row.manager_id}-->"><img src="images/icon_edit.gif" title="编辑" /></a><a href="manager.php?type=manager&act=delete&id=<!--{$row.manager_id}-->" onclick="return confirm('确定要删除这个管理员？');"><img src="images/icon_delete.gif" title="删除" /></a></td>
  </tr>
<!--{/foreach}-->
  <tr height="18">
    <td colspan="3" class="tcat text_left"><!--{$multipage|default:"只有一页"}--></td>
  </tr>
<!--{else}-->
  <tr height="18">
    <td colspan="3" class="alt1 text_center">没有找到符合查找条件的管理员[<a href="javascript:history.back();">返回上一页</a>]</td>
  </tr>
<!--{/if}-->
</table>
</div>

<!--{include file="footer.tpl"}-->