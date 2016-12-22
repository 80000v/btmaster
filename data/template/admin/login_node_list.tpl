<!--{include file="header.tpl"}-->

<div class="tip clear">
    <li><a href="login_node.php?act=add">添加登录节点</a></li>
    <li>暂停节点将使该节点的所有用户无法登录发布系统</li>
</div>

<div class="table clear">
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr>
    <td colspan="10" class="theader">已设置的登录节点</td>
  </tr>
  <tr class="tcat text_center">
    <td width="10%" nowrap="nowrap">节点ID</td>
    <td width="50%" nowrap="nowrap">节点名称</td>
    <td width="15%" nowrap="nowrap">字符编码</td>
    <td width="15%" nowrap="nowrap">当前状态</td>
    <td width="10%"></td>
  </tr>
<!--{foreach item=row from=$Node key=key}-->
  <tr id="row_<!--{$key}-->" onclick="setPointer(this, <!--{$key}-->, 'click');" class="alt<!--{cycle values='1,2'}-->" height="18" align="center">
    <td><!--{$row.node_id}--></td>
    <td><a href="<!--{$row.node_site_url}-->" target="_blank"><!--{$row.node_name}--></td>
    <td nowrap="nowrap"><!--{$row.node_encoding}--></td>
    <td nowrap="nowrap"><!--{if $row.is_pause}--><span class="text_red">暂停</span><!--{else}-->正常<!--{/if}--></td>
    <td nowrap="nowrap"><!--{if $row.is_pause}--><a href="login_node.php?act=unpause&id=<!--{$row.node_id}-->"><img src="images/icon_unpause.gif" title="恢复" /></a><!--{else}--><a href="login_node.php?act=pause&id=<!--{$row.node_id}-->"><img src="images/icon_pause.gif" title="暂停" /></a><!--{/if}--><a href="login_node.php?act=edit&id=<!--{$row.node_id}-->"><img src="images/icon_edit.gif" title="编辑" /></a><a href="login_node.php?act=delete&id=<!--{$row.node_id}-->" onclick="return confirm('删除后不可恢复，确定要删除该节点？');"><img src="images/icon_delete.gif" title="删除" /></a></td>
  </tr>
<!--{foreachelse}-->
  <tr height="18">
    <td colspan="5" class="alt1 text_center">还没有设置任何登录节点！[<a href="javascript:history.back();">返回上一页</a>]</td>
  </tr>
<!--{/foreach}-->
</table>
</form>
</div>

<!--{include file="footer.tpl"}-->