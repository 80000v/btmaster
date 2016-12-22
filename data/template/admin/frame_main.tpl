<!--{include file="header.tpl"}-->

<div class="table">
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader">系统信息</td></tr>
  <tr class="alt1" height="18">
    <td align="right" width="20%">操作系统及PHP版本</td>
    <td><!--{$smarty.const.PHP_OS}--> / PHP<!--{$smarty.const.PHP_VERSION}--></td>
  </tr>
  <tr class="alt2" height="18">
    <td align="right">MySql版本</td>
    <td><!--{$sysinfo.mysql_version}--></td>
  </tr>
  <tr class="alt1" height="18">
    <td align="right">服务器端信息</td>
    <td><!--{$sysinfo.service}-->[<a href="misc.php?act=phpinfo">详情</a>]</td>
  </tr>
  <tr class="alt2" height="18">
    <td align="right">文件上传限制</td>
    <td><!--{$sysinfo.max_upload}--></td>
  </tr>
  <tr class="alt1" height="18">
    <td align="right">程序最大执行时间</td>
    <td><!--{$sysinfo.max_ex_time}--></td>
  </tr>
  <tr class="alt2" height="18">
    <td align="right">服务器当前时间</td>
    <td><!--{$smarty.const.TIME_NOW|date_format:"%Y/%m/%d %H:%M:%S"}--></td>
  </tr>
  <tr class="alt1" height="18">
    <td align="right">网站数据库占用</td>
    <td><!--{$sysinfo.btm_db_size}--></td>
  </tr>
  <tr class="alt2" height="18">
    <td align="right">XBT数据库占用</td>
    <td><!--{$sysinfo.xbt_db_size}--></td>
  </tr>
</table>
</div>

<div class="tip">
    <div><strong>特别提醒</strong>：</div><div>未经BTMaster官方授权，严禁擅自去除(包括但不限于遮盖、隐藏)页脚部分的版权信息: Powered by <a href="http://www.btmaster.cn" target="_blank">BTMaster.cn</a>，并保留链接。否则BTMaster有权随时中止您的授权，而不需要另行通知。谢谢您的合作！</div>
</div>

<div class="table">
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader">开发团队</td></tr>
  <tr class="alt1" height="18">
    <td align="right" width="20%">官方网站</td>
    <td><a href="http://www.btmaster.cn" target="_blank">http://www.btmaster.cn</a></td>
  </tr>
  <tr class="alt2" height="18">
    <td align="right">联系方式</td>
    <td>QQ: 1145316697&nbsp;&nbsp;Email:support@btmaster.cn</td>
  </tr>
</table>
</div>

<!--{include file="footer.tpl"}-->