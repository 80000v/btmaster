<!--{include file="header.tpl"}-->

<div class="table clear">
    <div class="f_nav">
    <input type="button" value="数据库工具" onclick="window.location='database.php?act=tools'" class="formButton" />
    <input type="button" value="数据库备份" onclick="window.location='database.php?act=backup'" class="formButton" />
    <input type="button" value="数据库恢复" onclick="window.location='database.php?act=renew'" class="formButton" />
    </div>
</div>

<div class="tip">此功能在导入数据的同时，将覆盖现有数据。请确定是否需要恢复，以免造成数据丢失<br />数据恢复功能只能恢复由系统当前版本导出的备份文件，其他版本或软件导出的格式将无法识别<br />如果一个备份文件有多个分卷，只需选择其中一个，程序会自动导入其他分卷</div>

<div class="table clear">
<form name="form1" action="database.php" method="post">
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr>
    <td class="theader text_center" colspan="10">数据库备份文件</td>
  </tr>
  <tr class="tcat text_center">
    <td width="5%" nowrap="nowrap"></td>
    <td width="50%">文件名</td>
    <td width="10%">版本</td>
    <td width="30%">备份时间</td>
    <td width="10%">操作</td>
  </tr>
<!--{if $BackupFile}-->
<!--{foreach item=row from=$BackupFile key=key}-->
  <tr id="row_<!--{$key}-->" onclick="setPointer(this, <!--{$key}-->, 'click');" class="alt<!--{cycle values='1,2'}-->" height="18" align="center">
    <td><input id="mark_box_<!--{$key}-->" type="checkbox" name="data_id[]" value="<!--{$row.name}-->" /></td>
    <td nowrap="nowrap"><!--{$row.name}--></td>
    <td nowrap="nowrap"><span<!--{if $row.version neq $smarty.const.BTMASTER_VERSION}--> class="text_red"<!--{/if}-->><!--{$row.version}--></span></td>
    <td nowrap="nowrap"><!--{$row.time}--></td>
    <td nowrap="nowrap"><!--{if $row.version eq $smarty.const.BTMASTER_VERSION}--><a href="database.php?act=import&file=<!--{$row.base_name}-->" onclick="return confirm('该操作将清除现有数据库所有数据，确定要继续导入选择的备份数据？');">导入</a><!--{/if}--></td>
  </tr>
<!--{/foreach}-->
  <tr>
    <td colspan="5" class="tcat text_left">
    <input type="button" value="全选" onclick='selectAll(true);' />
    <input type="button" value="全不选" onclick='selectAll(false);' />
    <input type="button" value="反选" onclick='againstSelect();' />
    <select name="op" onchange="executeOperate();">
    <option value="">将选中项</option>
    <option value="delete">删除</option>
    </select>
    </td>
  </tr>
<!--{else}-->
  <tr height="18" class="alt1 text_center">
    <td colspan="5">没有备份文件</td>
  </tr>
<!--{/if}-->
</table>
</form>
</div>

<!--{include file="footer.tpl"}-->