<!--{include file="header.tpl"}-->

<div class="table">
<form name="form1" method="post" action="merger.php" onsubmit="return checkFormData();">
<input type="hidden" name="op" value="sort" />
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader">合并分类数据</td></tr>
  <tr class="alt1">
    <td align="right" width="30%">原分类</td>
    <td width="70%"><select id="origin_sort_id" name="origin_sort_id"><option value="0">请选择</option><!--{$OriginSortOption}--></select></td>
  </tr>
  <tr class="alt2">
    <td align="right">目标分类</td>
    <td><select id="aim_sort_id" name="aim_sort_id"><option value="0">请选择</option><!--{$AimSortOption}--></select></td>
  </tr>
  <tr>
    <td colspan="2" class="tfoot text_center">
    <input type="submit" class="formButton" accesskey="s" id="submit" value=" 开始合并分类(S) " />
    <input type="reset" class="formButton" accesskey="r" value="重置(R)" />
    </td>
  </tr>
</table>
</form>
</div>

<div class="table">
<form name="form2" method="post" action="merger.php" onsubmit="return checkFormData();">
<input type="hidden" name="op" value="team" />
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader">合并联盟数据</td></tr>
  <tr class="alt1">
    <td align="right" width="30%">原联盟数字ID</td>
    <td width="70%"><input type="text" class="formInput" name="origin_team_id" size="10" maxlength="10" /><span class="form_clue">将一并合并该联盟的所有用户到目标联盟</td>
  </tr>
  <tr class="alt2">
    <td align="right">目标联盟数字ID</td>
    <td><input type="text" class="formInput" name="aim_team_id" size="10" maxlength="10" /></td>
  </tr>
  <tr>
    <td colspan="2" class="tfoot text_center">
    <input type="submit" class="formButton" accesskey="s" id="submit" value=" 开始合并联盟(S) " />
    <input type="reset" class="formButton" accesskey="r" value="重置(R)" />
    </td>
  </tr>
</table>
</form>
</div>

<div class="table">
<form name="form3" method="post" action="merger.php" onsubmit="return checkFormData();">
<input type="hidden" name="op" value="user" />
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader">合并用户数据</td></tr>
  <tr class="alt1">
    <td align="right" width="30%">原用户数字ID</td>
    <td width="70%"><input type="text" class="formInput" name="origin_user_id" size="10" maxlength="10" /></td>
  </tr>
  <tr class="alt2">
    <td align="right">目标用户数字ID</td>
    <td><input type="text" class="formInput" name="aim_user_id" size="10" maxlength="10" /></td>
  </tr>
  <tr>
    <td colspan="2" class="tfoot text_center">
    <input type="submit" class="formButton" id="submit" accessKey="s" value=" 开始合并用户(S) " />
    <input class="formButton" accessKey="r" type="reset" value="重置(R)" />
    </td>
  </tr>
</table>
</form>
</div>

<!--{include file="footer.tpl"}-->