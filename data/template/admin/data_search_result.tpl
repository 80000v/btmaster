<!--{include file="header.tpl"}-->

<div class="table clear">
<form name="form1" method="post">
<input type="hidden" name="op" value="batch" />
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr>
    <td colspan="10" class="theader">发布资源搜索结果(共&nbsp;<!--{$totalnum}-->&nbsp;条记录)</td>
  </tr>
  <tr class="tcat text_center">
    <td width="10"></td>
    <td width="8%">分类</td>
    <td width="*">标题</td>
    <td width="5%" nowrap="nowrap">种子</td>
    <td width="5%" nowrap="nowrap">下载</td>
    <td width="5%" nowrap="nowrap">完成</td>
    <td width="5%" nowrap="nowrap">评论</td>
    <td width="10%">发布者</td>
    <td width="50">操作</td>
  </tr>
<!--{if $BtData}-->
<!--{foreach item=row from=$BtData key=key}-->
  <tr id="row_<!--{$key}-->" onclick="setPointer(this, <!--{$key}-->, 'click');" class="alt<!--{cycle values='1,2'}-->" align="center">
    <td width="10"><input type="checkbox" id="mark_box_<!--{$key}-->" name="data_id[]" value="<!--{$row.bt_data_id}-->" /></td>
    <td><a href="data.php?act=list&sort_id=<!--{$row.sort_id}-->"><!--{$row.sort_name}--></a></td>
    <td align="left" style="line-height:140%;"><!--{if $row.is_commend}--><span class="list_commend">[荐]</span><!--{/if}--><a<!--{if $row.title_style}--> style="<!--{$row.title_style}-->"<!--{/if}--> href="<!--{$Config.site_path}-->/show.php?hash=<!--{$row.hash_id}-->" target="_blank"><!--{$row.bt_data_title}--></a><br /><span class="list_data">发布日期:<!--{$row.release_date|date_format:"%m-%d %H:%M"}-->&nbsp;&nbsp;IP:<!--{$row.ipaddress}--></span></td>
    <td nowrap="nowrap"><!--{$row.seeders|default:"-"}--></td>
    <td nowrap="nowrap"><!--{$row.leechers|default:"-"}--></td>
    <td nowrap="nowrap"><!--{$row.completed|default:"-"}--></td>
    <td nowrap="nowrap"><a href="comment.php?act=list&data_id=<!--{$row.bt_data_id}-->"><!--{$row.total_comment}--></a></td>
    <td><a href="data.php?act=list&user_id=<!--{$row.user_id}-->"><!--{$row.user_name}--></a></td>
    <td><a href="data.php?act=edit&id=<!--{$row.bt_data_id}-->"><img src="images/icon_edit.gif" title="编辑" /></a></td>
  </tr>
<!--{/foreach}-->
  <tr>
    <td colspan="10" class="text_left" style="padding:0;"><!--{include file="data_manage.tpl"}--></td>
  </tr>
  <tr height="18">
    <td colspan="10" class="tcat text_left"><!--{$multipage|default:"只有一页"}--></td>
  </tr>
<!--{else}-->
  <tr height="18">
    <td colspan="10" class="alt1 text_center">没有匹配的记录！[<a href="javascript:history.back();">返回上一页</a>]</td>
  </tr>
<!--{/if}-->
</table>
</form>
</div>

<!--{include file="footer.tpl"}-->