<!--{include file="header.tpl"}-->

<!--{include file="user/nav.tpl"}-->

<div class="m_container">
<div class="m_inner">

<!--{include file="user/left.tpl"}-->

<div class="m_right">
    <div class="box">
    <h2 class="title" style="clear:right;">
        <span class="left"><!--{$multipage|default:"只有一页"}--></span>
        <span class="right">
        <form onsubmit="return checkFormData(this);">
        <input type="hidden" name="o" value="data" />
        <input type="hidden" name="type" value="<!--{$Type}-->" />
        <input type="text" class="formInput" style="margin-top:-5px;" id="keyword" name="keyword" value="<!--{$keyword|default:'搜索发布的资源'}-->" /><input type="submit" value="搜索" class="formButton" style="margin-top:-5px;height:23px;" />
        </form>
        </span>
    </h2>
    <form name="form1" method="post">
    <input type="hidden" name="op" value="batch" />
    <table class="list_style">
    <!--{if $BtData}-->
      <thead class="tcat text_center">
      <tr>
        <th class="l1">发布时间</th>
        <th class="l2">分类</th>
        <th class="l3">标题</th>
        <th class="l4">文件大小</th>
        <th class="l5">种子</th>
        <th class="l6">下载</th>
        <th class="l7">完成</th>
        <!--{if $Type eq "team"}--><th class="l8">发布者</th><!--{/if}-->
        <!--{if $CanEdit || $ManageSelect}--><th>操作</th><!--{/if}-->
      </tr>
      </thead>
    <!--{foreach item=row from=$BtData key=key}-->
      <tr class="alt<!--{cycle values='1,2'}--> text_center">
        <td nowrap="nowrap"><!--{$row.release_date|date_format:"%Y/%m/%d"}--></td>
        <td><a href="index.php?sort_id=<!--{$row.sort_id}-->" target="_blank"><!--{$row.sort_name}--></a></td>
        <td class="text_left"><!--{if $row.is_commend}--><span class="commend">[荐]</span><!--{/if}--><a<!--{if $row.title_style}--> style="<!--{$row.title_style}-->"<!--{/if}--> href="show.php?hash=<!--{$row.hash_id}-->" target="_blank"><!--{$row.bt_data_title}--></a><!--{if $row.bt_data_discuss_url neq ""}-->[<a href="<!--{$row.bt_data_discuss_url|urldecode}-->" target="_blank">讨论</a>]<!--{/if}--></td>
        <td><!--{$row.bt_data_file_size}--></td>
        <td><!--{$row.seeders|default:"-"}--></td>
        <td><!--{$row.leechers|default:"-"}--></td>
        <td><!--{$row.completed|default:"-"}--></td>
        <!--{if $Type eq "team"}--><td><a href="index.php?user_id=<!--{$row.user_id}-->"><!--{$row.user_name}--></a></td><!--{/if}-->
        <!--{if $CanEdit || $ManageSelect}--><td><input type="checkbox" id="multi_election" name="data_id[]" value="<!--{$row.bt_data_id}-->" />&nbsp;<a href="user.php?o=data&act=edit&id=<!--{$row.bt_data_id}-->&type=<!--{$Type}-->"><img src="images/icon_edit.gif" align="absmiddle" alt="编辑" /></a></td><!--{/if}-->
      </tr>
    <!--{/foreach}-->
    <!--{if $ManageSelect}-->
      <tr class="text_right">
        <td colspan="9" style="padding:0;"><!--{include file="user/data_manage.tpl"}--></td>
      </tr>
    <!--{/if}-->
    <!--{else}-->
      <tr class="alt1 text_center">
        <td>没有可显示数据！</td>
      </tr>
    <!--{/if}-->
    </table>
    </form>
    </div>
    <!--{if $Multipage.page}--><div class="pages clear"><!--{$Multipage.page}--></div><!--{/if}-->
</div>

<div class="clear"></div>
</div><!--{* manage inner *}-->
</div><!--{* manage container *}-->

<script type="text/javascript">
function checkFormData(o)
{
    var keyword = $F('keyword');
    if ('' == keyword || keyword == '搜索发布的资源')
    {
        Window.alert('没有填写搜索关键字');
        return false;
    }

    $('submit').disabled = true;
    return true;
}
</script>

<!--{include file="footer.tpl"}-->