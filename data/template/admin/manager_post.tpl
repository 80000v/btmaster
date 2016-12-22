<!--{include file="header.tpl"}-->

<div class="table clear">
    <div class="f_nav">
    <input type="button" value="添加管理员" onclick="window.location='manager.php?type=manager&act=add'" class="formButton" />
    <input type="button" value="管理员列表" onclick="window.location='manager.php?type=manager'" class="formButton" />
    </div>
</div>

<div class="table clear">
<form name="form1" method="post" action="manager.php?type=manager" onsubmit="return checkFormData();">
<input type="hidden" name="op" value="<!--{$Action}-->" />
<input type="hidden" name="id" value="<!--{$Manager.manager_id}-->" />
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader"><!--{if $Action eq 'edit'}-->编辑<!--{else}-->添加<!--{/if}-->管理员</td></tr>
  <tr class="alt1">
    <td align="right" width="30%">用户名</td>
    <td width="70%"><input type="text" class="formInput" name="username" size="30" maxlength="50" value="<!--{$Manager.manager_name}-->" /></td>
  </tr>
  <tr class="alt2">
    <td align="right">登录密码</td>
    <td><input type="password" class="formInput" name="password" size="30" maxlength="50" /><br /><span class="form_clue">密码最少4个字符，只能由英文、数字和下划线组成<!--{if $Action eq 'edit'}-->。如果不修改密码此项请留空<!--{/if}--></span></td>
  </tr>
</table>

<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader">权限分配</td></tr>
  <tr class="alt1">
    <td align="right" width="30%">允许登录</td>
    <td width="70%"><input type="radio" name="can_login" value="1" <!--{if $Manager.can_login}-->checked="checked"<!--{/if}--> />允许&nbsp;<input type="radio" name="can_login" value="0" <!--{if !$Manager.can_login}-->checked="checked"<!--{/if}--> />禁止</td>
  </tr>
  <tr class="alt2">
    <td align="right">是超级管理员</td>
    <td><input type="checkbox" name="is_super_manager" value="1" <!--{if $Manager.is_super_manager}-->checked="checked"<!--{/if}--> /><br /><span class="form_clue">超级管理员可以管理后台所有内容，请不要随意赋予此权限</span></td>
  </tr>
  <tr class="alt1">
    <td align="right">允许管理发布的资源</td>
    <td><input type="radio" name="can_manage_bt" value="1" <!--{if $Manager.can_manage_bt}-->checked="checked"<!--{/if}--> />允许&nbsp;<input type="radio" name="can_manage_bt" value="0" <!--{if !$Manager.can_manage_bt}-->checked="checked"<!--{/if}--> />禁止<br /><span class="form_clue">也包括对资源评论的管理</span></td>
  </tr>
  <tr class="alt2">
    <td align="right">允许管理资源分类</td>
    <td><input type="radio" name="can_manage_sort" value="1" <!--{if $Manager.can_manage_sort}-->checked="checked"<!--{/if}--> />允许&nbsp;<input type="radio" name="can_manage_sort" value="0" <!--{if !$Manager.can_manage_sort}-->checked="checked"<!--{/if}--> />禁止</td>
  </tr>
  <tr class="alt1">
    <td align="right">允许管理联盟</td>
    <td><input type="radio" name="can_manage_team" value="1" <!--{if $Manager.can_manage_team}-->checked="checked"<!--{/if}--> />允许&nbsp;<input type="radio" name="can_manage_team" value="0" <!--{if !$Manager.can_manage_team}-->checked="checked"<!--{/if}--> />禁止</td>
  </tr>
  <tr class="alt2">
    <td align="right">允许管理发布用户</td>
    <td><input type="radio" name="can_manage_user" value="1" <!--{if $Manager.can_manage_user}-->checked="checked"<!--{/if}--> />允许&nbsp;<input type="radio" name="can_manage_user" value="0" <!--{if !$Manager.can_manage_user}-->checked="checked"<!--{/if}--> />禁止</td>
  </tr>
  <tr>
    <td colspan="2" class="tfoot text_center">
    <input type="submit" class="formButton" accesskey="s" id="submit" value=" <!--{if $Action eq 'edit'}-->编辑<!--{else}-->添加<!--{/if}-->(S) " />
    <input type="reset" class="formButton" accesskey="r" value="重置(R)" />
    <input type="button" class="formButton" accesskey="n" value=" 返回(N) " onclick='javascript:history.back();' />
<!--{if $Action eq "edit"}-->
    <input class="formButton" type="button" style="color:red;" onclick="deleteConfirm(<!--{$Manager.manager_id}-->);" value="删除" />
<!--{/if}-->
    </td>
  </tr>
</table>
</form>
</div>

<script type="text/javascript">
function checkFormData()
{
    if (true == document.form1.is_super_manager.checked)
    {
        if (false == confirm('确定添加为超级管理员？'))
        {
            return false;
        }
    }

    $('submit').value = Lang['submit'];
    $('submit').disabled = true;
    return true;
}
function deleteConfirm(id)
{
    if (false == confirm('确定要删除这个管理员？'))
    {
        return false;
    }

    location.href = 'manager.php?type=manager&act=delete&id='+ id;
}
</script>

<!--{include file="footer.tpl"}-->