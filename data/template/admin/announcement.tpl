<!--{include file="header.tpl"}-->

<div class="table clear">
    <div class="f_nav">
    <input type="button" value="发布公告" onclick="window.location='announcement.php?act=add'" class="formButton" />
    <input type="button" value="公告列表" onclick="window.location='announcement.php'" class="formButton" />
    </div>
</div>

<div class="table clear">
<form name="form1" method="post">
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr>
    <td colspan="10" class="theader">已发布公告</td>
  </tr>
  <tr class="tcat text_center">
    <td width="5%"></td>
    <td width="*" nowrap="nowrap">标题</td>
    <td width="15%" nowrap="nowrap">开始日期</td>
    <td width="15%" nowrap="nowrap">结束日期</td>
    <td width="15%" nowrap="nowrap">管理员</td>
  </tr>
<!--{if $Announcement}-->
<!--{foreach item=row from=$Announcement key=key}-->
  <tr id="row_<!--{$key}-->" onclick="setPointer(this, <!--{$key}-->, 'click');" class="alt<!--{cycle values='1,2'}-->" height="18" align="center">
    <td><input id="mark_box_<!--{$key}-->" name="data_id[]" type="checkbox" value="<!--{$row.announcement_id}-->" /></td>
    <td align="left"><a href="announcement.php?act=edit&id=<!--{$row.announcement_id}-->" title="点击编辑"><!--{$row.announcement_title}--></a></td>
    <td nowrap="nowrap"><!--{$row.start_time|date_format:"%Y-%m-%d"}--></td>
    <td nowrap="nowrap"><!--{$row.end_time|date_format:"%Y-%m-%d"}--></td>
    <td nowrap="nowrap"><!--{$row.manager_name}--></td>
  </tr>
<!--{/foreach}-->
  <tr>
    <td colspan="5" class="tcat text_left">
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
    <td colspan="5">还没有发布任何公告！</td>
  </tr>
<!--{/if}-->
</table>
</form>
</div>

<!--{include file="footer.tpl"}-->