<!--{include file="header.tpl"}-->

<div class="table">
<form name="form1" method="post" onsubmit="return checkFormData();">
<input type="hidden" name="op" value="change_website" />
<input type="hidden" name="type" value="<!--{$Type|default:'basic'}-->" />
<!--{if $Type eq "optimize"}-->
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader">性能优化</td></tr>
  <tr class="alt1">
    <td align="right" width="25%">使用伪HTML</td>
    <td width="75%"><label><input type="radio" name="config[use_url_rewrite]" value="1"<!--{if $Config.use_url_rewrite}--> checked="checked"<!--{/if}--> />开启</label>&nbsp;<label><input type="radio" name="config[use_url_rewrite]" value="0"<!--{if !$Config.use_url_rewrite}--> checked="checked"<!--{/if}--> />关闭</label><br /><span class="form_clue">如果开启，需要服务器支持<a href="http://www.btmaster.cn/help/url-rewrite.php" target="_blank">url rewrite</a>功能</span></td>
  </tr>
  <tr class="alt2">
    <td align="right">GZIP压缩输出</td>
    <td><label><input type="radio" name="config[gzip_enabled]" value="1"<!--{if $Config.gzip_enabled}--> checked="checked"<!--{/if}--> />开启</label>&nbsp;<label><input type="radio" name="config[gzip_enabled]" value="0"<!--{if !$Config.gzip_enabled}--> checked="checked"<!--{/if}--> />关闭</label><br /><span class="form_clue">可以很明显的降低带宽需求，但只有在客户端支持的情况下才可使用，并会增大服务器系统开销</span></td>
  </tr>
  <tr class="alt1">
    <td align="right">模板编译</td>
    <td><label><input type="radio" name="config[tpl_compile]" value="1"<!--{if $Config.tpl_compile}--> checked="checked"<!--{/if}--> />开启</label>&nbsp;<label><input type="radio" name="config[tpl_compile]" value="0"<!--{if !$Config.tpl_compile}--> checked="checked"<!--{/if}--> />关闭</label><br /><span class="form_clue">关闭有利于提高程序运行速度。修改模板后，需要将该项开启，修改生效再选择是否关闭</span></td>
  </tr>
  <tr class="alt2">
    <td align="right">开启缓存</td>
    <td><label><input type="radio" name="config[tpl_cache]" value="1"<!--{if $Config.tpl_cache}--> checked="checked"<!--{/if}--> />开启</label>&nbsp;<label><input type="radio" name="config[tpl_cache]" value="0"<!--{if !$Config.tpl_cache}--> checked="checked"<!--{/if}--> />关闭</label><br /><span class="form_clue">开启缓存将占用较多磁盘空间，但速度会有显著提升。在高流量情况下，强烈推荐开启该功能</span></td>
  </tr>
  <tr class="alt1">
    <td align="right">缓存有效期(列表页面)</td>
    <td><input type="text" class="formInput" name="config[tpl_cache_time_list]" maxlength="9" value="<!--{$Config.tpl_cache_time_list}-->" size="10" />秒<br /><span class="form_clue">设置值如果小于60将自动关闭该项缓存功能</span></td>
  </tr>
  <tr class="alt2">
    <td align="right">缓存有效期(单个数据显示页)</td>
    <td><input type="text" class="formInput" name="config[tpl_cache_time_show]" maxlength="9" value="<!--{$Config.tpl_cache_time_show}-->" size="10" />秒<br /><span class="form_clue">设置值如果小于60将自动关闭该项缓存功能</span></td>
  </tr>
  <tr class="alt1">
    <td align="right">列表每页显示数量</td>
    <td><input type="text" name="config[pagination_list_num]" class="formInput" size="10" maxlength="3" value="<!--{$Config.pagination_list_num}-->" /><br /><span class="form_clue">不包括用户管理的相关列表</span></td>
  </tr>
  <tr class="alt2">
    <td align="right">RSS源每页显示数量</td>
    <td><input type="text" name="config[pagination_rss_num]" class="formInput" size="10" maxlength="3" value="<!--{$Config.pagination_rss_num}-->" /><br /><span class="form_clue">设置为0将关闭RSS源</span></td>
  </tr>
</table>
<!--{elseif $Type eq "resource"}-->
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader">资源发布</td></tr>
  <tr class="alt1">
    <td align="right" width="25%" valign="top">本地Tracker</td>
    <td width="75%"><textarea cols="50" rows="6" name="config[local_tracker]" class="formTextarea"><!--{$Config.local_tracker}--></textarea><br /><span class="form_clue">每行只能设置一个Tracker地址</span></td>
  </tr>
  <tr class="alt2">
    <td align="right">上传文件最大允许</td>
    <td><input type="text" class="formInput" name="config[bt_file_size]" value="<!--{$Config.bt_file_size}-->" size="10" />KB<br /><span class="form_clue">最大不要超过2048KB</span></td>
  </tr>
  <tr class="alt1">
    <td align="right">非本地种子</td>
    <td><select name="config[bt_no_local]">
    <option value="tolocal" <!--{if $Config.bt_no_local eq "tolocal"}--> selected="selected"<!--{/if}-->>转换为本地</option>
    <option value="prohibition" <!--{if $Config.bt_no_local eq "prohibition"}--> selected="selected"<!--{/if}-->>禁止发布</option>
    <option value="allow" <!--{if $Config.bt_no_local eq "allow"}--> selected="selected"<!--{/if}-->>允许发布(不转换)</option>
    </select><br /><span class="form_clue">所谓"非本地种子"，是指上传的种子不包含您所设置的Tracker地址。</span></td>
  </tr>
  <tr class="alt2">
    <td align="right">种子文件防盗链</td>
    <td><label><input type="radio" name="config[bt_defense_daolian]" value="1"<!--{if $Config.bt_defense_daolian}--> checked="checked"<!--{/if}--> />开启</label>&nbsp;<label><input type="radio" name="config[bt_defense_daolian]" value="0"<!--{if !$Config.bt_defense_daolian}--> checked="checked"<!--{/if}--> />关闭</label><br /><span class="form_clue">如果开启防盗链功能，非本站来源的下载将自动跳转到首页</span></td>
  </tr>
  <tr class="alt1">
    <td align="right">eMule资源发布</td>
    <td><label><input type="radio" name="config[emule_allow]" value="1"<!--{if $Config.emule_allow}--> checked="checked"<!--{/if}--> />开启</label>&nbsp;<label><input type="radio" name="config[emule_allow]" value="0"<!--{if !$Config.emule_allow}--> checked="checked"<!--{/if}--> />关闭</label></td>
  </tr>
  <tr class="alt2">
    <td align="right">资源名称长度限制</td>
    <td><input type="text" class="formInput" name="config[bt_title_least]" value="<!--{$Config.bt_title_least|default:10}-->" size="5" /> - <input type="text" class="formInput" name="config[bt_title_max]" value="<!--{$Config.bt_title_max|default:100}-->" size="5" />字符以内<br /><span class="form_clue">最多允许200个字符</span></td>
  </tr>
  <tr class="alt1">
    <td align="right">资源介绍内容长度限制</td>
    <td><input type="text" class="formInput" name="config[bt_intro_maxlength]" value="<!--{$Config.bt_intro_maxlength|default:5000}-->" size="10" />个字符以内<br /><span class="form_clue">最多允许40000个字符</span></td>
  </tr>
  <tr class="alt2">
    <td align="right">允许上传NFO文件</td>
    <td><label><input type="radio" name="config[nfo_allow]" value="1"<!--{if $Config.nfo_allow}--> checked="checked"<!--{/if}--> />开启</label>&nbsp;<label><input type="radio" name="config[nfo_allow]" value="0"<!--{if !$Config.nfo_allow}--> checked="checked"<!--{/if}--> />关闭</label></td>
  </tr>
</table>
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader">资源下载</td></tr>
  <tr class="alt1">
    <td align="right" width="25%">下载Torrent文件命名方式</td>
    <td width="75%"><select name="config[down_torrent_naming]">
    <option value="infohash" <!--{if !$Config.down_torrent_naming || $Config.down_torrent_naming eq "infohash"}--> selected="selected"<!--{/if}-->>Info Hash</option>
    <option value="name" <!--{if $Config.down_torrent_naming eq "name"}--> selected="selected"<!--{/if}-->>资源名称</option>
    <option value="time" <!--{if $Config.down_torrent_naming eq "time"}--> selected="selected"<!--{/if}-->>当前时间</option>
    </select></td>
  </tr>
  <tr class="alt2">
    <td align="right">下载确认页</td>
    <td><label><input type="radio" name="config[down_confirm_page]" value="1"<!--{if $Config.down_confirm_page}--> checked="checked"<!--{/if}--> />开启</label>&nbsp;<label><input type="radio" name="config[down_confirm_page]" value="0"<!--{if !$Config.down_confirm_page}--> checked="checked"<!--{/if}--> />关闭</label><br /><span class="form_clue">开启后点击下载将显示一个浮动的下载界面</span></td>
  </tr>
  <tr class="alt1">
    <td align="right">下载确认页高宽</td>
    <td>高 <input type="text" class="formInput" name="config[down_confirm_page_height]" value="<!--{$Config.down_confirm_page_height|default:100}-->" size="5" />px<br />宽 <input type="text" class="formInput" name="config[down_confirm_page_width]" value="<!--{$Config.down_confirm_page_width|default:300}-->" size="5" />px</td>
  </tr>
</table>
<!--{elseif $Type eq "team"}-->
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader">发布用户注册</td></tr>
  <tr class="alt1">
    <td align="right" width="25%">本地发布用户注册</td>
    <td width="75%"><select name="config[self_reg]">
    <option value="close" <!--{if $Config.self_reg eq "close"}--> selected="selected"<!--{/if}-->>关闭本地注册</option>
    <option value="no_auditing" <!--{if $Config.self_reg eq "no_auditing"}--> selected="selected"<!--{/if}-->>开启本地注册(不需审核)</option>
    <option value="auditing" <!--{if $Config.self_reg eq "auditing"}--> selected="selected"<!--{/if}-->>开启本地注册(需要审核)</option>
    </select></td>
  </tr>
</table>
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader">联盟相关</td></tr>
  <tr class="alt1">
    <td align="right" width="25%">用户创建联盟</td>
    <td width="75%"><select name="config[team_create]">
    <option value="close" <!--{if $Config.team_create eq "close"}--> selected="selected"<!--{/if}-->>禁止</option>
    <option value="any" <!--{if $Config.team_create eq "any"}--> selected="selected"<!--{/if}-->>允许,不需要审核</option>
    <option value="auditing" <!--{if $Config.team_create eq "auditing"}--> selected="selected"<!--{/if}-->>允许,需要审核</option>
    </select></td>
  </tr>
  <tr class="alt2">
    <td align="right">联盟种子每天最多能提升</td>
    <td><input type="text" class="formInput" name="config[team_daily_upgrade_num]" value="<!--{$Config.team_daily_upgrade_num}-->" size="10" />次<br /><span class="form_clue">设置为0表示不允许提升</span></td>
  </tr>
  <tr class="alt1">
    <td align="right">提升条件限制</td>
    <td>两次提升间隔不能小于<input type="text" class="formInput" name="config[upgrade_space_time]" value="<!--{$Config.upgrade_space_time|default:1}-->" size="10" />小时(同一资源)<br />且资源种子数不能少于<input type="text" class="formInput" name="config[upgrade_least_seeder]" value="<!--{$Config.upgrade_least_seeder|default:0}-->" size="10" />个</td>
  </tr>
  <tr class="alt2">
    <td align="right">允许联盟创建者推荐联盟资源</td>
    <td><label><input type="radio" name="config[team_resource_commend]" value="1"<!--{if $Config.team_resource_commend}--> checked="checked"<!--{/if}--> />允许</label>&nbsp;<label><input type="radio" name="config[team_resource_commend]" value="0"<!--{if !$Config.team_resource_commend}--> checked="checked"<!--{/if}--> />禁止</label></td>
  </tr>
  <tr class="alt1">
    <td align="right">允许联盟创建者加亮资源标题</td>
    <td><label><input type="radio" name="config[team_resource_heightlight]" value="1"<!--{if $Config.team_resource_heightlight}--> checked="checked"<!--{/if}--> />允许</label>&nbsp;<label><input type="radio" name="config[team_resource_heightlight]" value="0"<!--{if !$Config.team_resource_heightlight}--> checked="checked"<!--{/if}--> />禁止</label></td>
  </tr>
</table>
<!--{elseif $Type eq "search"}-->
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader">搜索相关</td></tr>
  <tr class="alt1">
    <td align="right" width="25%">站内搜索</td>
    <td width="75%"><label><input type="radio" name="config[search_close]" value="0"<!--{if !$Config.search_close}--> checked="checked"<!--{/if}--> />开启</label>&nbsp;<label><input type="radio" name="config[search_close]" value="1"<!--{if $Config.search_close}--> checked="checked"<!--{/if}--> />关闭</label></td>
  </tr>
  <tr class="alt2">
    <td align="right">全文搜索</td>
    <td><label><input type="radio" name="config[search_full_text]" value="1"<!--{if $Config.search_full_text}--> checked="checked"<!--{/if}--> />开启</label>&nbsp;<label><input type="radio" name="config[search_full_text]" value="0"<!--{if !$Config.search_full_text}--> checked="checked"<!--{/if}--> />关闭</label><br /><span class="form_clue">开启全文搜索将允许用户搜索介绍内容</span></td>
  </tr>
  <tr class="alt1">
    <td align="right" width="25%">搜索统计延迟更新</td>
    <td width="75%"><label><input type="radio" name="config[search_stats_delayed]" value="1"<!--{if $Config.search_stats_delayed}--> checked="checked"<!--{/if}--> />开启</label>&nbsp;<label><input type="radio" name="config[search_stats_delayed]" value="0"<!--{if !$Config.search_stats_delayed}--> checked="checked"<!--{/if}--> />关闭</label></td>
  </tr>
  <tr class="alt2">
    <td align="right">关键字长度至少</td>
    <td><input type="text" class="formInput" name="config[search_keyword_least]" value="<!--{$Config.search_keyword_least|default:4}-->" size="10" />个字符<br /><span class="form_clue">最多不能超过20字符</span></td>
  </tr>
  <tr class="alt1">
    <td align="right">两次搜索间隔时间</td>
    <td><input type="text" class="formInput" name="config[search_space_time]" value="<!--{$Config.search_space_time|default:60}-->" size="10" />秒<br /><span class="form_clue">设置同一访客两次搜索间隔时间，设置为0表示不限制。</span></td>
  </tr>
  <tr class="alt2">
    <td align="right">热门关键字显示数量</td>
    <td><input type="text" name="config[search_top_num]" class="formInput" size="10" value="<!--{$Config.search_top_num}-->" /><br /><span class="form_clue">设置为0则不显示热门关键字</span></td>
  </tr>
</table>
<!--{elseif $Type eq "comment"}-->
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader">评论设置</td></tr>
  <tr class="alt1">
    <td align="right" width="25%">允许发表评论</td>
    <td width="75%"><label><input type="radio" name="config[comment_close]" value="0"<!--{if !$Config.comment_close}--> checked="checked"<!--{/if}--> />开启</label>&nbsp;<label><input type="radio" name="config[comment_close]" value="1"<!--{if $Config.comment_close}--> checked="checked"<!--{/if}--> />关闭</label></td>
  </tr>
  <tr class="alt2">
    <td align="right">评论需要审核</td>
    <td><label><input type="radio" name="config[comment_audit]" value="1"<!--{if $Config.comment_audit}--> checked="checked"<!--{/if}--> />开启</label>&nbsp;<label><input type="radio" name="config[comment_audit]" value="0"<!--{if !$Config.comment_audit}--> checked="checked"<!--{/if}--> />关闭</label><br /><span class="form_clue">开启后,所有发表的评论,需要经过审核后才会显示</span></td>
  </tr>
  <tr class="alt1">
    <td align="right">评论最多允许字符数</td>
    <td><input type="text" name="config[comment_length]" value="<!--{$Config.comment_length|default:1000}-->" size="5" maxlength="5" class="formInput" /></td>
  </tr>
  <tr class="alt2">
    <td align="right">允许使用的表情图片数量</td>
    <td><input type="text" name="config[comment_smilie_num]" value="<!--{$Config.comment_smilie_num|default:0}-->" size="5" maxlength="5" class="formInput" /><br /><span class="form_clue">设置为 0 则表示不允许使用表情图片</span></td>
  </tr>
  <tr class="alt1">
    <td align="right">两次评论发表间隔时间</td>
    <td><input type="text" name="config[comment_interval]" value="<!--{$Config.comment_interval|default:0}-->" size="10" maxlength="5" class="formInput" /> (单位:秒)<br /><span class="form_clue">设置为 0 则不限制</span></td>
  </tr>
  <tr class="alt2">
    <td align="right">列表每页显示评论数量</td>
    <td><input type="text" name="config[comment_perpage_num]" value="<!--{$Config.comment_perpage_num|default:20}-->" size="10" maxlength="5" class="formInput" /></td>
  </tr>
</table>
<!--{elseif $Type eq "page"}-->
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader">网站显示效果</td></tr>
  <tr class="alt1">
    <td align="right">网站页面总宽度</td>
    <td><input type="text" name="config[page_width]" value="<!--{$Config.page_width|default:'100'}-->" size="5" maxlength="5" class="formInput" /><select name="config[page_width_unit]"><option value="%"<!--{if $Config.page_width_unit eq '%'}--> selected="selected"<!--{/if}-->>百分比(%)</option><option value="px"<!--{if $Config.page_width_unit eq 'px'}--> selected="selected"<!--{/if}-->>像素(px)</option></select><br /><span class="form_clue">填写一个数字，设置网站页面总宽度</span></td>
  </tr>
  <tr class="alt2">
    <td align="right">图片自动缩小</td>
    <td><input type="text" name="config[image_auto_size]" value="<!--{$Config.image_auto_size|default:600}-->" size="5" maxlength="5" class="formInput" />px<br /><span class="form_clue">超过设置宽度的图片将被自动等比缩小，设置为0表示关闭图片自动缩小功能</span></td>
  </tr>
  <tr class="alt1">
    <td align="right">内容悬浮窗口</td>
    <td><label><input type="radio" name="config[float_window]" value="1"<!--{if $Config.float_window}--> checked="checked"<!--{/if}--> />开启</label>&nbsp;<label><input type="radio" name="config[float_window]" value="0"<!--{if !$Config.float_window}--> checked="checked"<!--{/if}--> />关闭</label><br /><span class="form_clue">开启此功能后，在资源列表页点击标题即可实现下载</span></td>
  </tr>
  <tr class="alt2">
    <td align="right">内容悬浮窗口高×宽</td>
    <td><input type="text" name="config[float_window_height]" value="<!--{$Config.float_window_height|default:300}-->" size="5" maxlength="5" class="formInput" />px&nbsp;×&nbsp;<input type="text" name="config[float_window_width]" value="<!--{$Config.float_window_width|default:400}-->" size="5" maxlength="5" class="formInput" />px</td>
  </tr>
  <tr class="alt1">
    <td align="right">首页联盟显示</td>
    <td><label><input type="radio" name="config[home_team_show]" value="1"<!--{if $Config.home_team_show}--> checked="checked"<!--{/if}--> />开启</label>&nbsp;<label><input type="radio" name="config[home_team_show]" value="0"<!--{if !$Config.home_team_show}--> checked="checked"<!--{/if}--> />关闭</label></td>
  </tr>
  <tr class="alt2">
    <td align="right">首页友情链接显示</td>
    <td><label><input type="radio" name="config[home_friend_show]" value="1"<!--{if $Config.home_friend_show}--> checked="checked"<!--{/if}--> />开启</label>&nbsp;<label><input type="radio" name="config[home_friend_show]" value="0"<!--{if !$Config.home_friend_show}--> checked="checked"<!--{/if}--> />关闭</label></td>
  </tr>
</table>
<!--{elseif $Type eq "other"}-->
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader">JS调用</td></tr>
  <tr class="alt1">
    <td align="right" width="25%">是否开启JS调用</td>
    <td width="75%"><label><input type="radio" name="config[js_transfer_open]" value="1"<!--{if $Config.js_transfer_open}--> checked="checked"<!--{/if}--> />开启</label>&nbsp;<label><input type="radio" name="config[js_transfer_open]" value="0"<!--{if !$Config.js_transfer_open}--> checked="checked"<!--{/if}--> />关闭</label><br /></td>
  </tr>
  <tr class="alt2">
    <td align="right">缓存更新时间</td>
    <td><input type="text" name="config[js_transfer_cache]" value="<!--{$Config.js_transfer_cache|default:600}-->" size="10" maxlength="10" class="formInput" />秒<br /><span class="form_clue">为了不影响系统性能，缓存更新时间不能低于300秒</span></td>
  </tr>
  <tr class="alt1">
    <td align="right">允许调用网站域名</td>
    <td><input type="text" name="config[js_transfer_domain]" value="<!--{$Config.js_transfer_domain}-->" size="40" class="formInput" /><br /><span class="form_clue">多个域名之间用","分隔，不要包含http://或其他非域名内容，留空不限制</span></td>
  </tr>
</table>
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader">其他设置</td></tr>
  <tr class="alt1">
    <td align="right" width="25%">启用图片验证码</td>
    <td width="75%">
        <label><input type="checkbox" name="config[verify_code_reg]"<!--{if $Config.verify_code_reg}--> checked="checked"<!--{/if}--> value="1" />用户注册</label>
        <label><input type="checkbox" name="config[verify_code_login]"<!--{if $Config.verify_code_login}--> checked="checked"<!--{/if}--> value="1" />前台登录</label>
        <label><input type="checkbox" name="config[verify_code_upload]"<!--{if $Config.verify_code_upload}--> checked="checked"<!--{/if}--> value="1" />发布资源</label>
        <label><input type="checkbox" name="config[verify_code_comment]"<!--{if $Config.verify_code_comment}--> checked="checked"<!--{/if}--> value="1" />发表评论</label>
        <label><input type="checkbox" name="config[verify_code_mlogin]"<!--{if $Config.verify_code_mlogin}--> checked="checked"<!--{/if}--> value="1" />后台登录</label>
    </td>
  </tr>
  <tr class="alt2">
    <td align="right">验证码使用字符</td>
    <td><input type="radio" name="config[verify_code_type]" value=""<!--{if !$Config.verify_code_type}--> checked="checked"<!--{/if}--> />字母加数字&nbsp;<input type="radio" name="config[verify_code_type]" value="letter"<!--{if $Config.verify_code_type eq "letter"}--> checked="checked"<!--{/if}--> />仅字母&nbsp;<input type="radio" name="config[verify_code_type]" value="numeric"<!--{if $Config.verify_code_type eq "numeric"}--> checked="checked"<!--{/if}--> />仅数字</td>
  </tr>
  <tr class="alt1">
    <td align="right">系统时区设置</td>
    <td><select name="config[timezone_offset]">
    <!--{html_options options=$timezone_offset selected=$Config.timezone_offset|default:8}-->
    </select></td>
  </tr>
  <tr class="alt2">
    <td align="right">数据库调试信息</td>
    <td><label><input type="radio" name="config[debug]" value="1"<!--{if $Config.debug}--> checked="checked"<!--{/if}--> />开启</label>&nbsp;<label><input type="radio" name="config[debug]" value="0"<!--{if !$Config.debug}--> checked="checked"<!--{/if}--> />关闭</label></td>
  </tr>
</table>
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader">禁止访问的IP</td></tr>
  <tr class="alt1">
    <td align="right" width="25%" valign="top">禁止A类IP请使用&nbsp;127.*.*.*&nbsp;的格式<br>禁止B类IP请使用&nbsp;127.0.*.*&nbsp;的格式<br />禁止C类IP请使用&nbsp;127.0.0.*&nbsp;的格式<br />禁止单个IP请使用&nbsp;127.0.0.1&nbsp;的格式</td></td>
    <td width="75%"><textarea cols="50" rows="6" name="config[bad_ip]" class="formTextarea"><!--{$Config.bad_ip}--></textarea><br /><span class="form_clue">每行只能设置一条IP规则</span></td>
  </tr>
</table>
<!--{else}--><!--{* basic *}-->
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader">基本参数</td></tr>
  <tr class="alt1">
    <td align="right" width="25%">关闭网站</td>
    <td width="75%"><label><input type="radio" name="config[site_stop]" value="0"<!--{if !$Config.site_stop}--> checked="checked"<!--{/if}--> />开放</label>&nbsp;<label><input type="radio" name="config[site_stop]" value="1"<!--{if $Config.site_stop}--> checked="checked"<!--{/if}--> />关闭</label><br /><span class="form_clue">关闭网站时管理后台仍然可以正常使用</span></td>
  </tr>
  <tr class="alt2">
    <td align="right" valign="top">网站关闭原因</td>
    <td><textarea cols="50" rows="4" name="config[site_stop_msg]" class="formTextarea"><!--{$Config.site_stop_msg}--></textarea><br /><span class="form_clue">支持使用HTML标签</span></td>
  </tr>
  <tr class="alt1">
    <td align="right">网站名称</td>
    <td><input type="text" class="formInput" name="config[site_name]" size="40" value="<!--{$Config.site_name}-->" maxlength="50" /></td>
  </tr>
  <tr class="alt2">
    <td align="right">网站地址</td>
    <td><input type="text" class="formInput" name="config[site_path]" size="40" value="<!--{$Config.site_path}-->" maxlength="50" /><br /><span class="form_clue">例如:http://www.btmaster.cn,结尾不包含 /</span></td>
  </tr>
  <tr class="alt1">
    <td align="right">网站ICP备案号</td>
    <td><input type="text" class="formInput" name="config[icp]" size="40" value="<!--{$Config.icp}-->" maxlength="50" /><br /><span class="form_clue">仅针对中国大陆地区，没有请留空</span></td>
  </tr>
  <tr class="alt2">
    <td align="right">Meta关键词</td>
    <td><input type="text" class="formInput" name="config[meet_keywords]" size="40" value="<!--{$Config.meet_keywords}-->" maxlength="50" /><br /><span class="form_clue">为所有页面输入 Meta 关键词,让搜索引擎更容易找到您的网站</span></td>
  </tr>
  <tr class="alt1">
    <td align="right">Meta描述</td>
    <td><input type="text" class="formInput" name="config[meet_description]" size="40" value="<!--{$Config.meet_description}-->" maxlength="50" /><br /><span class="form_clue">为所有页面输入 Meta 描述,以便能够在搜索引擎中正确搜索到您的网站</span></td>
  </tr>
  <tr class="alt2">
    <td align="right" valign="top">第三方统计代码</td>
    <td><textarea cols="50" rows="4" name="config[site_statcode]" class="formTextarea"><!--{$Config.site_statcode}--></textarea><br /><span class="form_clue">显示在页面底部的第三方统计代码</span></td>
  </tr>
</table>
<!--{/if}-->
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr>
    <td colspan="2" class="tfoot text_center">
    <input type="submit" class="formButton" accesskey="s" id="submit" value=" 保存设置(S) " />
    <input type="reset" class="formButton" accesskey="r" value="重置(R)" />
    <input type="button" class="formButton" accesskey="n" value=" 返回(N) " onclick='javascript:history.back();' />
    </td>
  </tr>
</table>
</form>
</div>

<!--{include file="footer.tpl"}-->