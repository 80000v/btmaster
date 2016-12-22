<!--{include file="header.tpl"}-->

<div class="tip">不指定搜索条件则显示所有发布资源</div>

<div class="table">
<form name="form1" method="get" action="data.php" onsubmit="return checkFormData();">
<input type="hidden" name="act" value="list" />
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader">搜索发布资源</td></tr>
  <tr class="alt1">
    <td align="right" width="30%">
    <select name="bound">
    <option value="title">资源名称包含</option>
    <option value="content">资源介绍包含</option>
    <option value="all">名称或介绍包含</option>
    </select></td>
    <td width="70%"><input type="text" class="formInput" name="keyword" size="40" /></td>
  </tr>
  <tr class="alt2">
    <td align="right">所属分类</td>
    <td><select name="sort_id"><option value="">所有分类</option><!--{$SortOption}--></select></td>
  </tr>
  <tr class="alt1">
    <td align="right"><select name="user_type"><option value="id">用户ID</option><option value="name">用户名</option></select></td>
    <td><input type="text" class="formInput" name="user_key" size="10" /></td>
  </tr>
  <tr class="alt2">
    <td align="right"><select name="team_type"><option value="id">联盟ID</option><option value="name">联盟名</option></select></td>
    <td><input type="text" class="formInput" name="team_key" size="10" /></td>
  </tr>
  <tr class="alt1">
    <td align="right">种子数</td>
    <td><select name="bound_seeder"><option value="more">大于</option><option value="less">小于</option><option value="equal">等于</option></select><input type="text" size="10" maxlength="10" name="seeder" class="formInput" /></td>
  </tr>
  <tr class="alt2">
    <td align="right">下载数</td>
    <td><select name="bound_leecher"><option value="more">大于</option><option value="less">小于</option><option value="equal">等于</option></select><input type="text" size="10" maxlength="10" name="leecher" class="formInput" /></td>
  </tr>
  <tr class="alt1">
    <td align="right">完成数</td>
    <td><select name="bound_completed"><option value="more">大于</option><option value="less">小于</option><option value="equal">等于</option></select><input type="text" size="10" maxlength="10" name="completed" class="formInput" /></td>
  </tr>
  <tr class="alt2">
    <td align="right">本地种子</td>
    <td><input type="radio" name="local" value="all" checked="checked" />任意&nbsp;<input type="radio" name="local" value="1" />是&nbsp;<input type="radio" name="local" value="0" />否</td>
  </tr>
  <tr class="alt1">
    <td align="right">推荐资源</td>
    <td><input type="radio" name="commend" value="all" checked="checked" />任意&nbsp;<input type="radio" name="commend" value="1" />是&nbsp;<input type="radio" name="commend" value="0" />否</td>
  </tr>
  <tr class="alt2">
    <td align="right">置顶资源</td>
    <td><input type="radio" name="top" value="all" checked="checked" />任意&nbsp;<input type="radio" name="top" value="1" />是&nbsp;<input type="radio" name="top" value="0" />否</td>
  </tr>
  <tr class="alt1">
    <td align="right">显示结果按照</td>
    <td><select name="by"><option value="rdate">发布日期</option><option value="udate">提升日期</option><option value="seeder">种子数</option><option value="leecher">下载数</option><option value="completed">完成数</option></select><select name="order"><option value="desc">降序排列</option><option value="asc">升序排列</option></select></td>
  </tr>
  <tr>
    <td colspan="2" class="tfoot text_center">
    <input type="submit" class="formButton" accesskey="s" id="submit" value=" 显示结果(S) " />
    <input type="reset" class="formButton" accesskey="r" value="重置(R)" />
    <input type="button" class="formButton" accesskey="n" value=" 返回(N) " onclick='javascript:history.back();' />
    </td>
  </tr>
</table>
</form>
</div>


<div class="table">
<form name="form2" method="get" action="data.php" onsubmit="return checkFormDataX();">
<input type="hidden" name="act" value="list" />
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader">搜索资源HASH</td></tr>
  <tr class="alt1">
    <td width="20%" align="right">HASH值</td>
    <td width="80%">
    <input type="text" class="formInput" id="hash" name="hash" size="40" maxlength="40" />
    <input type="submit" class="formButton" value=" 查找HASH " />
    </td>
  </tr>
</table>
</form>
<script type="text/javascript">
function checkFormDataX()
{
    var hash = $F('hash');
    if (false == /^[a-z0-9]{40}$/i.test(hash))
    {
        alert('不是一个合法的HASH值！');
        $('hash').focus();
        return false;
    }
    return true;
}
</script>
</div>

<!--{include file="footer.tpl"}-->