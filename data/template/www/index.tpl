<!--{include file="header.tpl"}-->

<!--{if $smarty.const.IN_SCRIPT neq "search" && $TeamData}-->
<div class="box clear">
    <h2 class="title"><span class="left">联盟列表</span><a href="javascript:void(0);" onclick="panelDeploy('team', 1);return false;" class="right"><img src="images/collapse.gif" id="panel_team_button" alt="icon" /></a></h2>
    <table class="list_style table_fixed">
      <tbody id="panel_team">
    <!--{foreach item=row from=$TeamData key=key}-->
      <!--{if $key%8 eq 0}--><tr class="alt<!--{cycle values='1,2'}-->"><!--{/if}-->
      <td width="12%"><!--{if $row.team_name neq ""}--><a href="index.php?team_id=<!--{$row.team_id}-->"><!--{$row.team_name}--></a><!--{/if}--></td>
      <!--{if ($key+1)%8 eq 0}--></tr><!--{/if}-->
    <!--{/foreach}-->
      </tbody>
    </table>
</div>
<script type="text/javascript">panelDeploy('team', 0);</script>
<!--{/if}-->

<!--{if $Announcement}-->
<div class="announcement clear">
    <div class="annlist">
        <!--{foreach item=row from=$Announcement key=key}-->
        <!--{capture name=num}--><!--{$key+1}--><!--{/capture}-->
        <div id="announcement<!--{$smarty.capture.num}-->" style="display:<!--{if $key eq 0}-->block<!--{else}-->none<!--{/if}-->;"><strong><a href="announcement.php">公告</a>：</strong><!--{if $row.announcement_url}--><a href="<!--{$row.announcement_url}-->" target="_blank"><!--{else}--><a href="announcement.php#<!--{$row.announcement_id}-->"><!--{/if}--><!--{$row.announcement_title}--></a>(<!--{$row.start_time|date_format:"%Y-%m-%d"}-->)</div>
        <!--{/foreach}-->
    </div>
    <div class="annfunc">
        <div id="annpageshow">1/<!--{$smarty.capture.num}--></div>
        <div><a title="上一条" href="javascript:void(0);" onclick="rollAnnouncement(-1);return false;"><img src="images/icon_pre.gif" alt="上一条" /></a><a title="下一条" href="javascript:void(0);" onclick="rollAnnouncement(1);return false;"><img src="images/icon_next.gif" alt="下一条" /></a></div>
    </div>
</div>
<script type="text/javascript">
var anndelay=5000,anntotal=<!--{$smarty.capture.num}-->,anndefault=1,annst=null;
rollAnnouncement.delay(anndelay, this, 1);
</script>
<!--{/if}-->

<!--{if $Config.float_window}-->
<div id="float_div" class="box">
    <h2 class="title">
        <span class="left">资源介绍&nbsp;&nbsp;<span id="f_info"></span></span>
        <span class="right"><a href="javascript:void(0);" onclick="hideTooltip(); return false;" title="关闭"><img src="images/close.gif" alt="关闭" /></a></span>
    </h2>
    <div id="float_div_title"></div>
    <div id="float_div_content" class="alt2 intro" style="overflow:auto;margin:4px;"></div>
</div>
<script type="text/javascript">
Config['float_window_height'] = <!--{$Config.float_window_height|default:300}-->;
Config['floatWindowWidth'] = <!--{$Config.float_window_width|default:400}-->;
</script>
<script type="text/javascript" src="javascripts/tooltip.js?v20080416"></script>
<!--{/if}-->

<div class="box clear">
<h2 class="title">
    <!--{if $smarty.const.IN_SCRIPT neq "search"}-->
    <div class="left"><!--{$ListTitle|default:"资源分享"}-->&nbsp;<a href="<!--{$RssUrl}-->" target="_blank"><img src="images/icon_rss1.gif" alt="RSS" align="absmiddle" /></a></div>
    <div class="right text_normal"><a href="index.php?o=today">本日新增</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="index.php?o=weekly">本周新增</a></div>
    <!--{else}-->
    <span class="text_bold"><!--{$SiteTitle}-->&nbsp;共找到<!--{$totalnum}-->条匹配资源</span>
    <!--{/if}-->
</h2>
<!--{* 数据列表 *}-->
<div class="clear">
<table id="listTable" class="list_style table_fixed">
  <thead class="tcat">
      <tr>
        <th axis="string" class="l1">发布时间</th>
        <th axis="string" class="l2">分类</th>
        <th axis="string" class="l3">资源名称</th>
        <th axis="size" class="l4">大小</th>
        <th axis="number" class="l5">种子</th>
        <th axis="number" class="l6">下载</th>
        <th axis="number" class="l7">完成</th>
        <th axis="string" class="l8">发布者/联盟</th>
      </tr>
  </thead>
  <tbody class="tbody" id="data_list">
    <!--{foreach item=row from=$BtData key=key}-->
    <!--{if $AdMiddlePlace && $key eq $AdMiddlePlace && $Ads.list_middle}-->
      <tr id="ad_list_middle"><td colspan="8" class="text_center"><!--{$Ads.list_middle}--></td></tr>
    <!--{/if}-->
      <tr class="alt<!--{cycle values='1,2'}-->">
        <td nowrap="nowrap"><!--{$row.release_date|date_format:"%m/%d %H:%M"}--></td>
        <td><a href="index.php?sort_id=<!--{$row.sort_id}-->"><!--{$row.sort_name}--></a></td>
        <td style="text-align:left;">
        <!--{if $row.put_top && $smarty.const.IN_SCRIPT neq "search"}-->
        <img src="images/icon_sticky.gif" alt="置顶" title="置顶" align="absmiddle" />&nbsp;
        <!--{/if}-->
        <!--{if $row.is_commend}--><span class="commend">[<a href="index.php?o=commend">荐</a>]</span><!--{/if}-->
        <!--{if $Config.float_window}-->
        <a<!--{if $row.title_style}--> style="<!--{$row.title_style}-->"<!--{/if}--> id="h_<!--{$row.bt_data_id}-->" onmouseover="showContent(event, <!--{$row.bt_data_id}-->, '<!--{$row.hash_id}-->');" href="down.php?date=<!--{$row.release_date}-->&hash=<!--{$row.hash_id}-->">
        <!--{else}-->
        <a<!--{if $row.title_style}--> style="<!--{$row.title_style}-->"<!--{/if}--> href="show.php?hash=<!--{$row.hash_id}-->" target="_blank">
        <!--{/if}--><!--{$row.bt_data_title}--></a>
        <!--{if $row.bt_data_discuss_url neq ""}-->[<a href="<!--{$row.bt_data_discuss_url|urldecode}-->" target="_blank">讨论</a>]<!--{/if}-->
        </td>
        <td><!--{$row.bt_data_file_size}--></td>
        <td nowrap="nowrap">
            <span class="bts_<!--{if 3 lt $row.seeders}-->1<!--{elseif 0 lt $row.seeders}-->2<!--{else}-->3<!--{/if}-->"><!--{$row.seeders|default:"-"}--></span>
        </td>
        <td nowrap="nowrap">
            <span class="btl_<!--{if 3 lt $row.leechers}-->1<!--{elseif 0 lt $row.leechers}-->2<!--{else}-->3<!--{/if}-->"><!--{$row.leechers|default:"-"}--></span>
        </td>
        <td nowrap="nowrap">
            <span class="btc_<!--{if 3 lt $row.completed}-->1<!--{elseif 0 lt $row.completed}-->2<!--{else}-->3<!--{/if}-->"><!--{$row.completed|default:"-"}--></span>
        </td>
        <td><!--{$row.post_user}--></td>
      </tr>
    <!--{foreachelse}-->
      <tr class="alt1 text_center">
        <td colspan="8">没有可显示资源</td>
      </tr>
    <!--{/foreach}-->
  </tbody>
</table>
</div>
<!--{* 数据列表结束 *}-->
</div>
<!--{if $Multipage.page}--><div class="pages clear"><!--{$Multipage.page}--></div><!--{/if}-->

<!--{if $PageTotalnum gt 2}-->
<script type="text/javascript" src="javascripts/tablesort.js?v20081028"></script>
<script type="text/javascript">
window.addEvent('domready', function(){new SortableTable($('listTable'))});
</script>
<!--{/if}-->

<!--{if $smarty.const.IN_SCRIPT neq "search" && $FriendlyLink}-->
<div class="box clear flink">
    <h2 class="title">
        <span class="left">友情链接</span>
        <span class="right"><a href="javascript:void(0);" onclick="panelDeploy('flink', true);return false;" class="right"><img src="images/collapse.gif" id="panel_flink_button" /></a></span>
    </h2>
    <table class="list_style" cellpadding="0" cellspacing="0">
        <tbody id="panel_flink">
            <!--{foreach item=link from=$FriendlyLink.exclusive}-->
              <tr class="alt1">
                <td><!--{$link}--></td>
              </tr>
            <!--{/foreach}-->
            <!--{if $FriendlyLink.inclusive.img}-->
              <tr class="alt1">
                <td><!--{foreach item=link from=$FriendlyLink.inclusive.img}--><!--{$link}--> <!--{/foreach}--></td>
              </tr>
            <!--{/if}-->
            <!--{if $FriendlyLink.inclusive.txt}-->
              <tr class="alt1">
                <td class="ftext"><!--{foreach item=link from=$FriendlyLink.inclusive.txt}-->[<!--{$link}-->]&nbsp;&nbsp;<!--{/foreach}--></td>
              </tr>
            <!--{/if}-->
        </tbody>
    </table>
</div>
<script type="text/javascript">panelDeploy('flink', 0);</script>
<!--{/if}-->

<!--{include file="footer.tpl"}-->