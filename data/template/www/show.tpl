<!--{include file="header.tpl"}-->

<style type="text/css">
<!--{if 0 lt $Config.image_auto_size}-->
.intro img{max-width:expression(imgResize(this,<!--{$Config.image_auto_size|default:600}-->));max-width:<!--{$Config.image_auto_size|default:600}-->px;max-height:<!--{$Config.image_auto_size|default:600}-->px;}
<!--{/if}-->
</style>

<div id="report" class="box" style="display:none;">
    <h2 class="title" id="report_title">
        <span class="left">举报</span>
        <span class="right"><a href="javascript:void(0);" onclick="Window.close('report');return false;" title="关闭"><img src="images/close.gif" alt="关闭" /></a></span>
    </h2>
    <table class="list_style">
      <tr class="alt1">
        <td class="text_right">联系方式</td>
        <td><input type="text" id="report_contact" class="formInput" maxlength="100" style="width:300px;" /><span class="form_clue">留下您的常用联系方式[选填]</span></td>
      </tr>
      <tr class="alt2">
        <td class="text_right" valign="top">举报原因</td>
        <td><textarea id="report_content" class="formInput" rows="6" style="width:300px;"></textarea></td>
      </tr>
      <tr class="tfooter text_center">
        <td colspan="2"><input type="button" id="submit" value="提 交" class="formButton" onclick="submitReport();" /></td>
      </tr>
    </table>
</div>

<!--{if $Config.down_confirm_page}-->
<!--{* 下载确认界面 *}-->
<div id="down_confirm" class="box" style="display:none;">
    <h2 class="title" id="down_confirm_title">
        <span class="left">下载资源</span>
        <span class="right"><a href="javascript:void(0);" onclick="Window.close('down_confirm');return false;" title="关闭"><img src="images/close.gif" alt="关闭" /></a></span>
    </h2>
    <div style="text-align:center;padding-top:30px;">
        <a href="down.php?date=<!--{$BtData.release_date}-->&hash=<!--{$BtData.hash_id}-->">点击此处下载种子</a>
    </div>
</div>
<script type="text/javascript">
window.addEvent('domready', function(){
    $('download').addEvent('click', function(event){
        event.stop();
        Window.box('down_confirm',
            {width:<!--{$Config.down_confirm_page_width|default:300}-->,height:<!--{$Config.down_confirm_page_height|default:100}-->}
        );return false;
    });
});
</script>
<!--{/if}-->

<div class="slayout">
    <div class="inner">
        <div class="c1">
            <div class="box">
                <h2 class="title">基本信息</h2>
                <div class="basic_info">
                    <p>共享用户: <a href="index.php?user_id=<!--{$BtData.user_id}-->"><!--{$BtData.user_name}--></a></p>
                    <p><!--{if $BtData.node_name neq ""}-->来自: <a href="<!--{$BtData.node_site_url}-->" target="_blank"><!--{$BtData.node_name}--></a><!--{/if}--></p>
                    <p><!--{if $BtData.team_name neq ""}-->所属联盟: <a href="index.php?team_id=<!--{$BtData.team_id}-->"><!--{$BtData.team_name}--></a><!--{/if}--></p>
                    <p>发布时间: <!--{$BtData.release_date|date_format:"%Y/%m/%d %H:%M:%S"}--></p>
                    <p>更新时间: <!--{if $BtData.release_date eq $BtData.upgrade_date}-->无更新<!--{else}--><!--{$BtData.upgrade_date|date_format:"%Y/%m/%d %H:%M:%S"}--><!--{/if}--></p>
                    <p>分享情况: 做种 <!--{$BtData.seeders|default:"-"}-->, 下载 <!--{$BtData.leechers|default:"-"}-->, 完成 <!--{$BtData.completed|default:"-"}--></p>
                    <p>健 康 度: <img src="images/health/<!--{$BtData.health}-->.png" align="absmiddle" alt="<!--{$BtData.health}-->" /></p>
                    <p class="original download"><a id="download" href="down.php?date=<!--{$BtData.release_date}-->&hash=<!--{$BtData.hash_id}-->">点击此处下载种子</a></p>
                    <p class="original magnet"><a id="magnet" href="magnet:?xt=urn:btih:<!--{$BtData.hash_id}-->&tr=<!--{$TorrentInfo.tracker.announce}-->">使用磁力链下载</a></p>
                    <ul>
                        <li><a href="#file">文件信息</a></li>
                        <li><a href="#emule">eMule资源</a></li>
                        <li><a href="#comment">网友评论(<span id="comment_total1"><!--{$BtData.total_comment}--></span>)</a></li>
                        <li><a href="javascript:void(0);" onclick="Window.box('report',{width:400,height:255});return false;">我要举报</a></li>
                    </ul>
                </div>
            </div>
            <!--{if $Ads.tracker_top}-->
            <div class="box" style="overflow:hidden;"><!--{$Ads.tracker_top}--></div>
            <!--{/if}-->
            <div class="box">
                <h2 class="title">Tracker信息</h2>
                <div class="tracker">
                    <!--{if $TorrentInfo.tracker.announce}-->
                    <div>Announce:
                        <p title="<!--{$TorrentInfo.tracker.announce}-->"><!--{$TorrentInfo.tracker.announce}--></p>
                    </div>
                    <!--{/if}-->
                    <!--{if $TorrentInfo.tracker.scrape}-->
                    <div>Scrape:
                        <p title="<!--{$TorrentInfo.tracker.scrape}-->"><!--{$TorrentInfo.tracker.scrape}--></p>
                    </div>
                    <!--{/if}-->
                    <!--{if $TorrentInfo.tracker.announcelist}-->
                    <div>Announce list:
                        <ul>
                            <!--{foreach item=announce from=$TorrentInfo.tracker.announcelist}-->
                            <li title="<!--{$announce}-->"><!--{$announce}--></li>
                            <!--{/foreach}-->
                        </ul>
                    </div>
                    <!--{/if}-->
                </div>
            </div>
            <!--{if $Ads.tracker_below}-->
            <div class="box" style="overflow:hidden;"><!--{$Ads.tracker_below}--></div>
            <!--{/if}-->
        </div>
        <div class="c2">
            <div class="box">
                <a name="intro"></a>
                <h2 class="title">资源介绍</h2>
                <div class="intro">
                    <!--{if $Ads.intro_inner}-->
                    <div class="clear intro_inner"><!--{$Ads.intro_inner}--></div>
                    <!--{/if}-->
                    <!--{$BtData.bt_data_intro}-->
                </div>
            </div>
            <!--{if $Ads.intro_below}-->
            <div class="clear" style="margin-bottom:10px;"><!--{$Ads.intro_below}--></div>
            <!--{/if}-->
            <div class="box">
                <a name="file"></a>
                <h2 class="title">
                    <span class="left">文件信息</span>
                    <span class="right text_normal">文件总数：<!--{$TorrentInfo.file.total}-->，文件总大小：<!--{$BtData.bt_data_file_size}--></span>
                </h2>
                <div style="line-height:6px;height:6px;">&nbsp;</div>
                <div class="torrent_files"><!--{$TorrentInfo.file.list}--></div>
                <div style="line-height:6px;height:6px;">&nbsp;</div>
            </div>
			<!--{if $Config.nfo_allow && $BtData.nfo}-->
            <div class="box">
                <a name="file"></a>
                <h2 class="title">
                    <span class="left">NFO信息</span>
                </h2>
                <div style="line-height:6px;height:6px;">&nbsp;</div>
                <div class="torrent_files nfo"><!--{$BtData.nfo}--></div>
                <div style="line-height:6px;height:6px;">&nbsp;</div>
            </div>
			<!--{/if}-->
            <!--{if $BtData.emule.resource}-->
            <script type="text/javascript" src="javascripts/emule.js?v20080417"></script>
            <div class="box">
                <a name="emule"></a>
                <h2 class="title">eMule资源</h2>
                <table class="list_style">
                  <tr class="alt1">
                    <td>
                    <table border="0" cellpadding="0" cellspacing="1" width="100%">
                      <tr class="alt2">
                        <td align="center" colspan="2"><a href="http://www.emule.org.cn/download/" target="_blank">下面是用户共享的文件列表，安装eMule后，您可以点击这些文件名进行下载</a></td>
                      </tr>
                <!--{foreach item=row from=$BtData.emule.resource key=key}-->
                      <tr class="alt<!--{cycle values='1,2'}-->">
                        <td><input type="checkbox" name="em_data" value="<!--{$row.url}-->" checked="checked" onclick="file_size();" />&nbsp;<a href="<!--{$row.url}-->"><!--{$row.name}--></a></td>
                        <td nowrap="nowrap"><!--{$row.size}--></td>
                      </tr>
                <!--{/foreach}-->
                      <tr class="tfooter">
                        <td width="90%"><label><input type="checkbox" id="checkall_em_data" checked="checked" onclick="checkAll(this.checked);" />&nbsp;全选</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="下载选中的文件" onclick="download(0, 1);" />&nbsp;<input type="button" value="复制选中的链接" onclick="copy();" /></td>
                        <td width="10%" nowrap="nowrap"><span id="size_em_data"><!--{$BtData.emule.size}--></span></td>
                      </tr>
                    </table>
                    </td>
                  </tr>
                </table>
            </div>
            <!--{/if}-->
            <!--{if !$Config.comment_close}--><!--{include file="show_comment.tpl"}--><!--{/if}-->
        </div>
        <div class="clear"></div>
    </div>
</div>

<!--{include file="footer.tpl"}-->