<!--{include file="header.tpl"}-->

<div class="table clear">
    <form action="comment.php">
    <input type="hidden" name="act" value="list" />
    <div class="f_nav">
        <select name="bound">
        <option value="">评论内容</option>
        <option value="ip"<!--{if $SearchBound eq "ip"}--> selected="selected"<!--{/if}-->>发表者IP</option>
        </select>
        <input type="text" class="formInput" name="keyword" value="<!--{$keyword}-->" size="20" maxlength="50" />
        <input type="submit" value=" 显示 " class="formButton" />
        <input type="button" value="未审核评论" onclick="window.location='comment.php?unaudit=1'" class="formButton" />
        <input type="button" value="被举报评论" onclick="window.location='comment.php?report=1'" class="formButton" />
    </div>
    </form>
</div>

<div class="table clear comment">
<form name="form1" method="post">
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr>
    <td class="theader">网友评论(共&nbsp;<!--{$totalnum}-->&nbsp;条记录)</td>
  </tr>
<!--{if $CommentData}-->
<!--{foreach item=row from=$CommentData key=key}-->
  <tr id="row_<!--{$key}-->" onclick="setPointer(this, <!--{$key}-->, 'click');" class="alt<!--{cycle values='1,2'}-->" height="18">
    <td>
        <div class="userinfo"><input id="mark_box_<!--{$key}-->" name="data_id[]" type="checkbox" value="<!--{$row.comment_id}-->" />&nbsp;&nbsp;<a href="<!--{$Config.site_path}-->/show.php?hash=<!--{$row.hash_id}-->#comment" target="_blank">查看</a>&nbsp;&nbsp;|&nbsp;&nbsp;<!--{$row.client_location}--> IP:<!--{$row.client_ip}-->&nbsp;&nbsp;|&nbsp;&nbsp;<!--{$row.comment_date|date_format:"%Y-%m-%d %H:%M:%S"}-->&nbsp;&nbsp;|&nbsp;&nbsp;支持:<!--{$row.agree_num}-->&nbsp;反对:<!--{$row.oppose_num}-->&nbsp;举报: <span style="<!--{if $row.report_num}-->color:red;<!--{/if}-->"><!--{$row.report_num}--></span><!--{if !$row.is_audit}-->&nbsp;&nbsp;|&nbsp;&nbsp;<span style="color:red;">未审核</span><!--{/if}--></div>
        <div class="comment"><!--{$row.comment_content}--></div>
    </td>
  </tr>
<!--{/foreach}-->
  <tr>
    <td class="tcat text_left">
    <div class="left">
    <input name="button" type="button" value="全选" onClick='selectAll(true);' />
    <input name="button" type="button" value="全不选" onClick='selectAll(false);' />
    <input name="button" type="button" value="反选" onClick='againstSelect();' />
    <select name="op" onchange="executeOperate();">
    <option value="">将选中项</option>
    <option value="audit">通过审核</option>
    <option value="unaudit">取消审核</option>
    <option value="delete">删除</option>
    </select>
    </div>
    <div class="right" style="padding-top:4px;"><!--{$multipage|default:"只有一页"}--></div>
    </td>
  </tr>
<!--{else}-->
  <tr height="18">
    <td colspan="4" class="alt1 text_center">没有匹配的记录！[<a href="javascript:history.back();">返回上一页</a>]</td>
  </tr>
<!--{/if}-->
</table>
</form>
</div>

<!--{include file="footer.tpl"}-->