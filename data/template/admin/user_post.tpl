<!--{include file="header.tpl"}-->

<div class="table clear">
<form name="form1" method="post" onsubmit="return checkFormData();">
<input type="hidden" name="op" value="<!--{$Action}-->" />
<!--{if $Action eq "edit"}--><input type="hidden" name="id" value="<!--{$UserData.user_id}-->" /><!--{/if}-->
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader"><!--{if $Action eq "edit"}-->编辑<!--{else}-->添加本地<!--{/if}-->发布用户</td></tr>
  <tr class="alt1">
    <td align="right" width="30%">登录用户名</td>
    <td width="70%"><input type="text" class="formInput" name="username" size="30" maxlength="100" value="<!--{$UserData.user_name}-->" /><br /><span class="form_clue">长度在4 - 20个字符以内</span></td>
  </tr>
  <tr class="alt2">
    <td align="right">登录密码</td>
    <td><input type="text" class="formInput" name="password" size="30" maxlength="100" /><br /><span class="form_clue">密码长度不少于4个字符<!--{if $Action eq "edit"}-->，不修改密码请留空<!--{/if}--></span></td>
  </tr>
<!--{if $Action eq "edit"}-->
  <tr class="alt1">
    <td align="right" height="20">来自</td>
    <td><!--{if $UserData.node_name}--><a href="<!--{$UserData.node_site_url}-->" target="_blank"><!--{$UserData.node_name}--></a><!--{else}-->本地用户<!--{/if}--></td>
  </tr>
<!--{/if}-->
</table>
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader">用户权限</td></tr>
  <tr class="alt1">
    <td align="right" width="30%">允许发布资源</td>
    <td><input type="radio" name="can_add" value="1"<!--{if $UserData.can_add}--> checked="checked"<!--{/if}--> />是&nbsp;<input type="radio" name="can_add" value="0"<!--{if !$UserData.can_add}--> checked="checked"<!--{/if}--> />否</td>
  </tr>
  <tr class="alt2">
    <td align="right">允许编辑自己发布的</td>
    <td><input type="radio" name="can_edit" value="1"<!--{if $UserData.can_edit}--> checked="checked"<!--{/if}--> />是&nbsp;<input type="radio" name="can_edit" value="0"<!--{if !$UserData.can_edit}--> checked="checked"<!--{/if}--> />否</td>
  </tr>
  <tr class="alt1">
    <td align="right">允许删除自己发布的</td>
    <td><input type="radio" name="can_delete" value="1"<!--{if $UserData.can_delete}--> checked="checked"<!--{/if}--> />是&nbsp;<input type="radio" name="can_delete" value="0"<!--{if !$UserData.can_delete}--> checked="checked"<!--{/if}--> />否</td>
  </tr>
<!--{if $Action eq "edit"}-->
  <tr class="alt2">
    <td align="right">审核状态</td>
    <td><input type="radio" name="is_auditing" value="1"<!--{if $UserData.is_auditing}--> checked="checked"<!--{/if}--> />已审核&nbsp;<input type="radio" name="is_auditing" value="0"<!--{if !$UserData.is_auditing}--> checked="checked"<!--{/if}--> />未审核</td>
  </tr>
<!--{/if}-->
</table>
<!--{if $smarty.const.IS_PAY}-->
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader">联盟权限</td></tr>
<!--{if !$UserData.team_id || $UserData.create_user_id neq $UserData.user_id}-->
  <tr class="alt1">
    <td align="right" width="30%">加入联盟数字ID</td>
    <td><input type="text" name="team_id" value="<!--{$UserData.team_id|default:0}-->" size="10" maxlength="10" class="formInput" /></td>
  </tr>
  <tr class="alt2">
    <td align="right">允许编辑联盟资源</td>
    <td><input type="radio" name="team_can_edit" value="1"<!--{if $UserData.team_can_edit}--> checked="checked"<!--{/if}--> />是&nbsp;<input type="radio" name="team_can_edit" value="0"<!--{if !$UserData.team_can_edit}--> checked="checked"<!--{/if}--> />否</td>
  </tr>
  <tr class="alt1">
    <td align="right">允许删除联盟资源</td>
    <td><input type="radio" name="team_can_delete" value="1"<!--{if $UserData.team_can_delete}--> checked="checked"<!--{/if}--> />是&nbsp;<input type="radio" name="team_can_delete" value="0"<!--{if !$UserData.team_can_delete}--> checked="checked"<!--{/if}--> />否</td>
  </tr>
  <tr class="alt2">
    <td align="right">允许提升联盟资源</td>
    <td><input type="radio" name="team_can_upgrade" value="1"<!--{if $UserData.team_can_upgrade}--> checked="checked"<!--{/if}--> />是&nbsp;<input type="radio" name="team_can_upgrade" value="0"<!--{if !$UserData.team_can_upgrade}--> checked="checked"<!--{/if}--> />否</td>
  </tr>
  <tr class="alt1">
    <td align="right">允许管理联盟用户</td>
    <td><input type="radio" name="team_can_manage_user" value="1"<!--{if $UserData.team_can_manage_user}--> checked="checked"<!--{/if}--> />是&nbsp;<input type="radio" name="team_can_manage_user" value="0"<!--{if !$UserData.team_can_manage_user}--> checked="checked"<!--{/if}--> />否</td>
  </tr>
<!--{if $Action eq "edit" && $UserData.team_id}-->
  <tr class="alt2">
    <td align="right">加入状态</td>
    <td><input type="radio" name="join_auditing" value="1"<!--{if $UserData.join_auditing}--> checked="checked"<!--{/if}--> />已审核&nbsp;<input type="radio" name="join_auditing" value="0"<!--{if !$UserData.join_auditing}--> checked="checked"<!--{/if}--> />未审核</td>
  </tr>
<!--{/if}-->
<!--{else}-->
  <tr class="alt2 text_center">
    <td colspan="2" height="20">联盟创建者，不能修改联盟权限</td>
  </tr>
<!--{/if}-->
</table>
<!--{/if}-->
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr>
    <td colspan="2" class="tfoot text_center">
    <input type="submit" class="formButton" accesskey="s" id="submit" value=" <!--{if $Action eq 'edit'}-->编辑<!--{else}-->添加<!--{/if}-->(S) " />
    <input type="reset" class="formButton" accesskey="r" value="重置(R)" />
    <input type="button" class="formButton" accesskey="n" value=" 返回(N) " onclick='javascript:history.back();' />
<!--{if $Action eq "edit"}-->
    <input type="button" class="formButton" style="color:red;" onclick="deleteConfirm(<!--{$UserData.user_id}-->);" value="删除" />
<!--{/if}-->
    </td>
  </tr>
</table>
</form>
</div>

<script type="text/javascript">
function deleteConfirm(id)
{
    if (false == confirm('确定要删除这个用户？'))
    {
        return false;
    }

    location.href = 'user.php?act=delete&id='+ id;
}
</script>

<!--{include file="footer.tpl"}-->