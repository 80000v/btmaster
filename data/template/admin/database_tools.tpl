<!--{include file="header.tpl"}-->

<div class="table clear">
    <div class="f_nav">
    <input type="button" value="数据库工具" onclick="window.location='database.php?act=tools'" class="formButton" />
    <input type="button" value="数据库备份" onclick="window.location='database.php?act=backup'" class="formButton" />
    <input type="button" value="数据库恢复" onclick="window.location='database.php?act=renew'" class="formButton" />
    </div>
</div>

<div class="table clear">
<form name="form1" action="database.php?act=tools" method="post">
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr>
    <td class="theader" colspan="10">选择要操作的数据库表</td>
  </tr>
  <tr class="tcat text_center">
    <td width="20"></td>
    <td width="58%" class="text_left">表名</td>
    <td width="10%">记录</td>
    <td width="10%">类型</td>
    <td width="10%">大小</td>
    <td width="10%">多余</td>
  </tr>
<!--{foreach item=row from=$TableData key=key}-->
  <tr id="row_<!--{$key}-->" onclick="setPointer(this, <!--{$key}-->, 'click');" class="alt<!--{cycle values='1,2'}-->" height="18">
    <td><input id="mark_box_<!--{$key}-->" type="checkbox" name="data_id[]" value="<!--{$row.name}-->" /></td>
    <td nowrap="nowrap" class="text_left"><!--{$row.name}--></td>
    <td nowrap="nowrap" align="center"><!--{$row.rows}--></td>
    <td nowrap="nowrap" align="center"><!--{$row.type}--></td>
    <td nowrap="nowrap" align="center"><!--{$row.size}--></td>
    <td nowrap="nowrap" align="center"><!--{$row.spilth}--></td>
  </tr>
<!--{/foreach}-->
  <tr class="tcat">
    <td colspan="4">
    <input type="button" value="全选" onclick='selectAll(true);' />
    <input type="button" value="全不选" onclick='selectAll(false);' />
    <input type="button" value="反选" onclick='againstSelect();' />
    <select name="op" onchange="executeOperate();">
    <option value="">- 执行操作 -</option>
    <option value="optimize">优化表</option>
    <option value="repair">修复表</option>
    </select>
    <td class="text_center"><!--{$TotalSize}--></td>
    <td></td>
  </tr>
</table>
</form>
</div>

<!-- 
<div class="table clear">
<form name="form2" action="database.php" onsubmit="return checkFormData();">
<input type="hidden" name="act" value="query" />
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr>
    <td class="theader" colspan="2">手工查询</td>
  </tr>
  <tr class="alt1">
    <td width="150"><span class="text_red">此操作存在一定的风险，仅供熟练用户使用</span></td>
    <td><textarea id="sql" name="sql" style="width:98%;height:80px;word-break:break-all;" class="formTextarea"></textarea></td>
  </tr>
  <tr>
    <td colspan="2" class="tfoot text_center"><input type="submit" value="执行查询" class="formButton"></td>
  </tr>
</table>
</form>
</div>

<script type="text/javascript">
var sql_do_confirm_0 = new RegExp('^DROP\\s+(IF EXISTS\\s+)?(TABLE|DATABASE)\\s', 'i');
var sql_do_confirm_1 = new RegExp('^ALTER\\s+TABLE\\s+((`[^`]+`)|([A-Za-z0-9_$]+))\\s+DROP\\s', 'i');
var sql_do_confirm_2 = new RegExp('^DELETE\\s+FROM\\s', 'i');
function checkFormData()
{
    var sql = $F('sql');
    if ('' == sql)
    {
        return false;
    }
    if (sql_do_confirm_0.test(sql) || sql_do_confirm_1.test(sql) || sql_do_confirm_2.test(sql))
    {
        if (false == confirm('此条SQL语句可能会对现有数据有所修改，一旦执行将无法恢复！\r\n\r\n您真的要:\r\n'+sql))
        {
            return false;
        }
    }
}
</script>
-->

<!--{include file="footer.tpl"}-->