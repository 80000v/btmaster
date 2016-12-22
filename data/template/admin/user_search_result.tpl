<!--{include file="header.tpl"}-->

<div class="table">
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr>
    <td colspan="10" class="theader">发布用户搜索结果(共&nbsp;<!--{$totalnum|default:0}-->&nbsp;条记录)</td>
  </tr>
  <tr class="tcat text_center">
    <td width="8%" nowrap="nowrap">用户ID</td>
    <td width="*" nowrap="nowrap">用户名</td>
    <td width="20%" nowrap="nowrap">来自</td>
    <td width="20%" nowrap="nowrap">所属联盟</td>
    <td width="10%" nowrap="nowrap">加入日期</td>
    <td width="10%" nowrap="nowrap">审核状态</td>
    <td width="10%" nowrap="nowrap">操作</td>
  </tr>
<!--{if $UserData}-->
<!--{foreach item=row from=$UserData key=key}-->
  <tr id="row_<!--{$key}-->" onclick="setPointer(this, <!--{$key}-->, 'click');" class="alt<!--{cycle values='1,2'}-->" height="18" align="center">
    <td nowrap="nowrap"><!--{$row.user_id}--></td>
    <td nowrap="nowrap"><!--{$row.user_name}--></td>
    <td nowrap="nowrap"><a href="user.php?act=list&node_id=<!--{$row.node_id}-->"><!--{$row.node_name|default:"本地用户"}--></a></td>
    <td nowrap="nowrap"><a href="user.php?act=list&team_id=<!--{$row.team_id}-->"><!--{$row.team_name|default:"无"}--></a></td>
    <td nowrap="nowrap"><!--{$row.dateline|date_format:"%Y-%m-%d %H:%M"}--></td>
    <td nowrap="nowrap"><!--{if $row.is_auditing}-->已审核<!--{else}--><span class="text_red">未审核</span><!--{/if}--></td>
    <td nowrap="nowrap"><a href="user.php?act=edit&id=<!--{$row.user_id}-->"><img src="images/icon_edit.gif" title="编辑" /></a><a href="user.php?act=delete&id=<!--{$row.user_id}-->" onclick="return confirm('与该用户相关的所有数据将一并被删除！\r\n\r\n确定要删除该用户？');"><img src="images/icon_delete.gif" title="删除" /></a></td>
  </tr>
<!--{/foreach}-->
  <tr>
    <td colspan="8" class="tcat text_left"><!--{$multipage|default:"只有一页"}--></td>
  </tr>
<!--{else}-->
  <tr height="18">
    <td colspan="8" class="alt1 text_center">没有匹配的记录！[<a href="javascript:history.back();">返回上一页</a>]</td>
  </tr>
<!--{/if}-->
</table>
</div>

<!--{include file="footer.tpl"}-->