<!--{include file="header.tpl"}-->

<div class="tip">如果不清楚这些参数的含义，请不要修改。错误的修改可能会造成系统无法正常运行。<br />留空将使用默认设置</div>

<div class="table">
<form name="form1" method="post" onsubmit="return checkFormData();">
<input type="hidden" name="op" value="change_xbt" />
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader">XBT参数设置</td></tr>
  <tr class="alt1">
    <td align="right" width="30%">announce_interval</td>
    <td width="70%"><input type="text" class="formInput" name="config[announce_interval]" value="<!--{$XbtConfig.announce_interval}-->" maxlength="50" />(默认:1800)</td>
  </tr>
  <tr class="alt2">
    <td align="right">anonymous_connect</td>
    <td><input type="text" class="formInput" name="config[anonymous_connect]" value="<!--{$XbtConfig.anonymous_connect}-->" maxlength="50" />(默认:1)</td>
  </tr>
  <tr class="alt1">
    <td align="right">anonymous_announce</td>
    <td><input type="text" class="formInput" name="config[anonymous_announce]" value="<!--{$XbtConfig.anonymous_announce}-->" maxlength="50" />(默认:1)</td>
  </tr>
  <tr class="alt2">
    <td align="right">anonymous_scrape</td>
    <td><input type="text" class="formInput" name="config[anonymous_scrape]" value="<!--{$XbtConfig.anonymous_scrape}-->" maxlength="50" />(默认:1)</td>
  </tr>
  <tr class="alt1">
    <td align="right">auto_register</td>
    <td><input type="text" class="formInput" name="config[auto_register]" value="<!--{$XbtConfig.auto_register}-->" maxlength="50" />(默认:1)</td>
  </tr>
  <tr class="alt2">
    <td align="right">clean_up_interval</td>
    <td><input type="text" class="formInput" name="config[clean_up_interval]" value="<!--{$XbtConfig.clean_up_interval}-->" maxlength="50" />(默认:60)</td>
  </tr>
  <tr class="alt1">
    <td align="right">daemon</td>
    <td><input type="text" class="formInput" name="config[daemon]" value="<!--{$XbtConfig.daemon}-->" maxlength="50" />(默认:1)</td>
  </tr>
  <tr class="alt2">
    <td align="right">debug</td>
    <td><input type="text" class="formInput" name="config[debug]" value="<!--{$XbtConfig.debug}-->" maxlength="50" />(默认:0)</td>
  </tr>
  <tr class="alt1">
    <td align="right">full_scrape</td>
    <td><input type="text" class="formInput" name="config[full_scrape]" value="<!--{$XbtConfig.full_scrape}-->" maxlength="50" />(默认:1)</td>
  </tr>
  <tr class="alt2">
    <td align="right">gzip_announce</td>
    <td><input type="text" class="formInput" name="config[gzip_announce]" value="<!--{$XbtConfig.gzip_announce}-->" maxlength="50" />(默认:1)</td>
  </tr>
  <tr class="alt1">
    <td align="right">gzip_debug</td>
    <td><input type="text" class="formInput" name="config[gzip_debug]" value="<!--{$XbtConfig.gzip_debug}-->" maxlength="50" />(默认:1)</td>
  </tr>
  <tr class="alt2">
    <td align="right">gzip_scrape</td>
    <td><input type="text" class="formInput" name="config[gzip_scrape]" value="<!--{$XbtConfig.gzip_scrape}-->" maxlength="50" />(默认:1)</td>
  </tr>
  <tr class="alt1">
    <td align="right">listen_check</td>
    <td><input type="text" class="formInput" name="config[listen_check]" value="<!--{$XbtConfig.listen_check}-->" maxlength="50" />(默认:0)</td>
  </tr>
  <tr class="alt2">
    <td align="right">listen_ipa</td>
    <td><input type="text" class="formInput" name="config[listen_ipa]" value="<!--{$XbtConfig.listen_ipa}-->" maxlength="50" />(默认:*)</td>
  </tr>
  <tr class="alt1">
    <td align="right">listen_port</td>
    <td><input type="text" class="formInput" name="config[listen_port]" value="<!--{$XbtConfig.listen_port}-->" maxlength="50" />(默认:2710)<br /><span class="form_clue">多个端口之间请使用英文逗号(,)分隔开</td>
  </tr>
  <tr class="alt2">
    <td align="right">log_access</td>
    <td><input type="text" class="formInput" name="config[log_access]" value="<!--{$XbtConfig.log_access}-->" maxlength="50" />(默认:0)</td>
  </tr>
  <tr class="alt1">
    <td align="right">log_announce</td>
    <td><input type="text" class="formInput" name="config[log_announce]" value="<!--{$XbtConfig.log_announce}-->" maxlength="50" />(默认:0)</td>
  </tr>
  <tr class="alt2">
    <td align="right">log_scrape</td>
    <td><input type="text" class="formInput" name="config[log_scrape]" value="<!--{$XbtConfig.log_scrape}-->" maxlength="50" />(默认:0)</td>
  </tr>
  <tr class="alt1">
    <td align="right">offline_message</td>
    <td><input type="text" class="formInput" name="config[offline_message]" value="<!--{$XbtConfig.offline_message}-->" maxlength="50" />(默认:)</td>
  </tr>
  <tr class="alt2">
    <td align="right">pid_file</td>
    <td><input type="text" class="formInput" name="config[pid_file]" value="<!--{$XbtConfig.pid_file}-->" maxlength="50" />(默认:xbt_tracker.pid)</td>
  </tr>
  <tr class="alt1">
    <td align="right">read_config_interval</td>
    <td><input type="text" class="formInput" name="config[read_config_interval]" value="<!--{$XbtConfig.read_config_interval}-->" maxlength="50" />(默认:60)</td>
  </tr>
  <tr class="alt2">
    <td align="right">read_db_interval</td>
    <td><input type="text" class="formInput" name="config[read_db_interval]" value="<!--{$XbtConfig.read_db_interval}-->" maxlength="50" />(默认:60)</td>
  </tr>
  <tr class="alt1">
    <td align="right">redirect_url</td>
    <td><input type="text" class="formInput" name="config[redirect_url]" value="<!--{$XbtConfig.redirect_url}-->" maxlength="50" />(默认:)</td>
  </tr>
  <tr class="alt2">
    <td align="right">scrape_interval</td>
    <td><input type="text" class="formInput" name="config[scrape_interval]" value="<!--{$XbtConfig.scrape_interval}-->" maxlength="50" />(默认:0)</td>
  </tr>
  <tr class="alt1">
    <td align="right">write_db_interval</td>
    <td><input type="text" class="formInput" name="config[write_db_interval]" value="<!--{$XbtConfig.write_db_interval}-->" maxlength="50" />(默认:60)</td>
  </tr>
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