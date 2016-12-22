<!--{include file="header.tpl"}-->

<div class="table clear">
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr>
    <td colspan="10" class="theader">联盟搜索结果(共&nbsp;<!--{$totalnum}-->&nbsp;条记录)</td>
  </tr>
  <tr class="tcat text_center">
    <td width="10%" nowrap="nowrap">联盟ID</td>
    <td width="*" nowrap="nowrap">联盟名称</td>
    <td width="15%" nowrap="nowrap">创建者</td>
    <td width="15%" nowrap="nowrap">创建日期</td>
    <td width="10%" nowrap="nowrap">操作</td>
  </tr>
<!--{if $TeamData}-->
<!--{foreach item=row from=$TeamData key=key}-->
  <tr id="row_<!--{$key}-->" onclick="setPointer(this, <!--{$key}-->, 'click');" class="alt<!--{cycle values='1,2'}-->" height="18" align="center">
    <td nowrap="nowrap"><!--{$row.team_id}--></td>
    <td nowrap="nowrap"><!--{$row.team_name}--></td>
    <td nowrap="nowrap"><!--{$row.user_name}--></td>
    <td nowrap="nowrap"><!--{$row.create_date|date_format:"%Y-%m-%d %H:%M"}--></td>
    <td nowrap="nowrap"><a href="team.php?act=edit&id=<!--{$row.team_id}-->"><img src="images/icon_edit.gif" title="编辑" /></a><a href="team.php?act=delete&id=<!--{$row.team_id}-->" onclick="return confirm('确定删除这个联盟？');"><img src="images/icon_delete.gif" title="删除" /></a><!--{if !$row.create_auditing}--><a href="team.php?act=auditing&id=<!--{$row.team_id}-->"><img src="images/icon_auditing.gif" title="审核" /></a><!--{/if}--></td>
  </tr>
<!--{/foreach}-->
  <tr height="18">
    <td colspan="10" class="tcat text_left"><!--{$multipage|default:"只有一页"}--></td>
  </tr>
<!--{else}-->
  <tr height="18">
    <td colspan="10" class="alt1 text_center">没有匹配的记录！[<a href="javascript:history.back();">返回上一页</a>]</td>
  </tr>
<!--{/if}-->
</table>
</div>

<!--{include file="footer.tpl"}-->