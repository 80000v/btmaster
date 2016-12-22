<!--{include file="header.tpl"}-->

<script type="text/javascript">
var currentSortID = <!--{$SortData.sort_id}-->;
function enableSelect(v)
{
    if (1 == v)
    {
        $('aim_sort_id').disabled = false;
    }
    else
    {
        $('aim_sort_id').disabled = true;
    }
}
function checkFormData()
{
    var aim_sort_id = document.form1.aim_sort_id.value;
    if (document.getElementsByName('data_put')[0].checked!=true && document.getElementsByName('data_put')[1].checked!=true)
    {
        alert('错误：请为该分类下的数据选择一种处理方式！');
        return false;
    }

    if (document.getElementsByName('data_put')[1].checked && 0 == aim_sort_id)
    {
        alert('错误：请选择一个有效的目标分类！');
        return false;
    }

    if (currentSortID == aim_sort_id)
    {
        alert('错误：不能选择当前将要删除的分类！');
        return false;
    }

    $('submit').value = Lang['submit'];
    $('submit').disabled = true;
    return true;
}
</script>

<div class="table">
<form name="form1" method="post" action="sort.php" onsubmit="return checkFormData();">
<input type="hidden" name="op" value="delete" />
<input type="hidden" name="id" value="<!--{$SortData.sort_id}-->" />
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader">分类删除确认</td></tr>
  <tr><td colspan="2" class="alt1 text_center text_red" height="20">如果该分类存在子分类，子分类和子分类的数据将不会被一同处理，而是整体自动提升一级</td></tr>
  <tr class="alt2">
    <td align="right" width="30%" height="20">当前将要删除的分类</td>
    <td><!--{$SortData.sort_name}--></td>
  </tr>
  <tr class="alt1">
    <td align="right">将该分类下的数据</td>
    <td><input type="radio" name="data_put" value="delete" onclick="enableSelect(0);" />一并删除&nbsp<strong>或</strong>&nbsp转移<input type="radio" name="data_put" value="transfer" onclick="enableSelect(1);" />到<select id="aim_sort_id" name="aim_sort_id"><option value="0">请选择</option><!--{$SortOption}--></select></td>
  </tr>
  <tr>
    <td colspan="2" class="tfoot text_center">
    <input type="submit" class="formButton" accesskey="s" id="submit" value=" 确定删除(S) " />
    <input type="reset" class="formButton" accesskey="r" value="重置(R)" />
    <input type="button" class="formButton" accesskey="n" value=" 返回(N) " onclick='javascript:history.back();' />
    </td>
  </tr>
</table>
</form>
</div>

<script type="text/javascript">enableSelect(0);</script>

<!--{include file="footer.tpl"}-->