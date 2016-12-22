<!--{include file="header.tpl"}-->
<script src="javascripts/calendar.js" type="text/javascript"></script>

<div class="table clear">
    <div class="f_nav">
    <input type="button" value="发布公告" onclick="window.location='announcement.php?act=add'" class="formButton" />
    <input type="button" value="公告列表" onclick="window.location='announcement.php'" class="formButton" />
    </div>
</div>

<div class="table clear">
<form name="form1" method="post" onsubmit="return checkFormData();">
<input type="hidden" name="op" value="<!--{$Action}-->" />
<input type="hidden" name="id" value="<!--{$Announcement.announcement_id}-->" />
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader"><!--{if $Action eq 'edit'}-->编辑<!--{else}-->发布<!--{/if}-->网站公告</td></tr>
  <tr class="alt1">
    <td align="right" width="20%">公告标题</td>
    <td><input type="text" class="formInput" name="title" size="50" maxlength="200" value="<!--{$Announcement.announcement_title}-->" /></td>
  </tr>
  <tr class="alt2">
    <td align="right">指定链接</td>
    <td><input type="text" class="formInput" name="url" size="50" maxlength="200" value="<!--{$Announcement.announcement_url}-->" /><br /><span class="form_clue">可将公告指向其他地址。如果此处填写，内容就不需要填写了</span></td>
  </tr>
  <tr class="alt1">
    <td align="right">开始日期</td>
    <td><input type="text" class="formInput" id="start_time" name="start_time" size="20" readonly="readonly" value="<!--{$Announcement.start_time|date_format:'%Y-%m-%d'}-->" onclick="showCalendar(this, $('start_time'), 'yyyy-mm-dd');" /></td>
  </tr>
  <tr class="alt2">
    <td align="right">结束日期</td>
    <td><input type="text" class="formInput" id="end_time" name="end_time" size="20" readonly="readonly" value="<!--{$Announcement.end_time|date_format:'%Y-%m-%d'}-->" onclick="showCalendar(this, $('end_time'), 'yyyy-mm-dd');" /><br /><span class="form_clue">留空为永久公告</span></td>
  </tr>
  <tr class="alt1">
    <td align="right" valign="top">公告内容</td>
    <td><input type="hidden" id="content" name="content" value="<!--{$Announcement.announcement_content|escape:'html'}-->" /><input type="hidden" id="content___Config" value="AutoDetectLanguage=false&amp;DefaultLanguage=zh-cn" /><iframe id="content___Frame" src="<!--{$Config.site_path}-->/images/htmleditor/editor/fckeditor.html?InstanceName=content&amp;Toolbar=Basic" width="95%" height="300" frameborder="no" scrolling="no"></iframe></td>
  </tr>
  <tr>
    <td colspan="2" class="tfoot text_center">
    <input type="submit" class="formButton" accesskey="s" id="submit" value=" <!--{if $Action eq 'edit'}-->编辑<!--{else}-->发布<!--{/if}-->公告(S) " />
    <input type="reset" class="formButton" accesskey="r" value="重置(R)" />
    <input type="button" class="formButton" accesskey="n" value=" 返回(N) " onclick='javascript:history.back();' />
    </td>
  </tr>
</table>
</form>
</div>

<!--{include file="footer.tpl"}-->