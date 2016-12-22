<!--{include file="header.tpl"}-->

<div class="table clear">
<form name="form1" method="post" onsubmit="return checkFormData();">
<input type="hidden" name="op" value="<!--{$Action}-->" />
<!--{if $Action eq "edit"}--><input type="hidden" name="id" value="<!--{$TeamData.team_id}-->" /><!--{/if}-->
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader"><!--{if $Action eq "edit"}-->编辑<!--{else}-->添加<!--{/if}-->联盟</td></tr>
  <tr class="alt1">
    <td align="right" width="30%">联盟名称</td>
    <td width="70%"><input type="text" class="formInput" name="team_name" size="30" maxlength="100" value="<!--{$TeamData.team_name}-->" /><br /><span class="form_clue">长度在4 - 24个字符以内</span></td>
  </tr>
  <tr class="alt2">
    <td align="right">指定创建者<br />(用户ID或用户名)</td>
    <td><input type="text" class="formInput" name="team_creater" size="30" maxlength="100" value="<!--{$TeamData.create_user_id}-->" /><br /><span class="form_clue">填写用户的数字ID或用户名均可<!--{if $Action eq "edit"}-->。如果重新指定联盟创建者，原创建者将被降为联盟普通管理员。<!--{/if}--></span></td>
  </tr>
  <tr class="alt1">
    <td align="right">加入条件</td>
    <td><input type="radio" name="join_condition" value="any"<!--{if $TeamData.join_condition eq "" or $TeamData.join_condition eq "any"}--> checked="checked"<!--{/if}--> />开放加入&nbsp;<input type="radio" name="join_condition" value="auditing"<!--{if $TeamData.join_condition eq "auditing"}--> checked="checked"<!--{/if}--> />加入需要审核&nbsp;<input type="radio" name="join_condition" value="close"<!--{if $TeamData.join_condition eq "close"}--> checked="checked"<!--{/if}--> />禁止加入</td>
  </tr>
  <tr class="alt2">
    <td align="right">显示在网站首页</td>
    <td><input type="radio" name="team_display" value="1"<!--{if $TeamData.team_display}--> checked="checked"<!--{/if}--> />显示<input type="radio" name="team_display" value="0"<!--{if !$TeamData.team_display}--> checked="checked"<!--{/if}--> />不显示</td>
  </tr>
  <tr>
    <td colspan="2" class="tfoot text_center">
    <input type="submit" class="formButton" accesskey="s" id="submit" value=" <!--{if $Action eq 'edit'}-->编辑<!--{else}-->添加<!--{/if}-->(S) " />
    <input type="reset" class="formButton" accesskey="r" value="重置(R)" />
    <input type="button" class="formButton" accesskey="n" value=" 返回(N) " onclick='javascript:history.back();' />
<!--{if $Action eq "edit"}-->
    <input type="button" class="formButton" style="color:red;" onclick="deleteConfirm(<!--{$TeamData.team_id}-->);" value="删除" />
<!--{/if}-->
    </td>
  </tr>
</table>
</form>
</div>

<script type="text/javascript">
function deleteConfirm(id)
{
    if (false == confirm('确定要删除这个联盟？'))
    {
        return false;
    }

    location.href = 'team.php?act=delete&id='+ id;
}
</script>

<!--{include file="footer.tpl"}-->