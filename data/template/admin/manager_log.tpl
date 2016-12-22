<!--{include file="header.tpl"}-->

<div class="tip clear">
<li>不能删除七天以内的数据</li>
<li><a href="manager.php?type=log&act=clear">清除多余的数据</a></li>
</div>

<div class="table clear">
    <div class="f_nav">
    <form name="form2" method="get">
    <input type="hidden" name="type" value="log" />
    查找管理日志:
    <input type="text" class="formInput" name="keyword" maxlength="100" />
    <input type="submit" class="formButton" id="submit" accessKey="s" value=" 查找(S) " />
    </form>
    </div>
</div>

<div class="table">
<form name="form1" method="post">
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr>
    <td colspan="10" class="theader">管理日志(共&nbsp;<!--{$totalnum}-->&nbsp;条记录)</td>
  </tr>
  <tr class="tcat text_center">
    <td width="5%"></td>
    <td width="15%" nowrap="nowrap">日期</td>
    <td width="10%" nowrap="nowrap">管理员</td>
    <td width="*" nowrap="nowrap">动作</td>
    <td width="15%" nowrap="nowrap">IP地址</td>
  </tr>
<!--{if $LogData}-->
<!--{foreach item=row from=$LogData key=key}-->
  <tr id="row_<!--{$key}-->" onclick="setPointer(this, <!--{$key}-->, 'click');" class="alt<!--{cycle values='1,2'}-->" height="18" align="center">
    <td><!--{if $ValidDelTime > $row.dateline}--><input id="mark_box_<!--{$key}-->" name="data_id[]" type="checkbox" value="<!--{$row.log_id}-->" /><!--{/if}--></td>
    <td nowrap="nowrap"><!--{$row.dateline|date_format:"%Y-%m-%d %H:%M:%S"}--></td>
    <td nowrap="nowrap"><a href="manager.php?type=log&id=<!--{$row.manager_id}-->"><!--{$row.manager_name}--></a></td>
    <td align="left"<!--{if !$row.manager_id}--> class="text_red"<!--{/if}-->><!--{$row.action}--></td>
    <td nowrap="nowrap"><!--{$row.client_ip}--></td>
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
  <tr height="18">
    <td colspan="5" class="alt1 text_center">没有匹配的日志记录！[<a href="javascript:history.back();">返回上一页</a>]</td>
  </tr>
<!--{/if}-->
</table>
</form>
</div>

<!--{include file="footer.tpl"}-->