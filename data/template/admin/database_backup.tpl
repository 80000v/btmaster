<!--{include file="header.tpl"}-->

<div class="table clear">
    <div class="f_nav">
    <input type="button" value="数据库工具" onclick="window.location='database.php?act=tools'" class="formButton" />
    <input type="button" value="数据库备份" onclick="window.location='database.php?act=backup'" class="formButton" />
    <input type="button" value="数据库恢复" onclick="window.location='database.php?act=renew'" class="formButton" />
    </div>
</div>

<div class="tip clear">备份文件将保存到 <!--{$BackupDir.name}--> 目录，文件名将随机命名<br />备份的数据可以使用 <a href="database.php?act=renew">数据库恢复</a> 功能进行恢复<br />备份的数据请尽量不要手工修改，以免造成备份数据无法恢复<br />如果有条件，建议以打包数据库目录的方式进行备份，更为可靠(需要暂时停止MySql服务)</div>

<div class="table clear">
<form name="form1" action="database.php" method="post" onsubmit="return checkFormData();">
<input type="hidden" name="op" value="backup" />
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr>
    <td class="theader" colspan="10">选择要备份的数据库表</td>
  </tr>
  <tr class="tcat">
    <td width="20" class="text_center"></td>
    <td width="89%">表名</td>
    <td width="10%" class="text_center">记录</td>
  </tr>
<!--{foreach item=row from=$TableData key=key}-->
  <tr id="row_<!--{$key}-->" onclick="setPointer(this, <!--{$key}-->, 'click');" class="alt<!--{cycle values='1,2'}-->" height="18" align="center">
    <td class="text_center"><input id="mark_box_<!--{$key}-->" type="checkbox" name="data_id[]" value="<!--{$row.Name}-->" /></td>
    <td nowrap="nowrap" align="left"><!--{$row.Name}--></td>
    <td nowrap="nowrap" class="text_center"><!--{$row.Rows}--></td>
  </tr>
<!--{/foreach}-->
  <tr class="tcat">
    <td class="text_left" colspan="3">
    <input type="button" value="全选" onclick='selectAll(true);' />
    <input type="button" value="全不选" onclick='selectAll(false);' />
    <input type="button" value="反选" onclick='againstSelect();' />
    </td>
  </tr>
  <tr class="alt1">
    <td colspan="3">分卷备份:
    <input type="text" name="volume_size" value="2048" class="formInput" size="10" />(单位:KB)<span class="form_clue">每个分卷文件长度，最小值不能低于1024</span></td>
  </tr>
  <tr>
    <td colspan="3" class="tfoot text_center">
    <input type="submit" name="submit" value=" <!--{if !$Config.site_stop}-->备份数据库请先关闭网站<!--{elseif !$BackupDir.state}-->备份目录不可写，请调整该目录属性<!--{else}-->开始备份<!--{/if}--> " class="formButton"<!--{if !$Config.site_stop || !$BackupDir.state}--> disabled="disabled"<!--{/if}--> /></td>
  </tr>
</table>
</form>
</div>

<!--{include file="footer.tpl"}-->