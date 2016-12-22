<!--{include file="header.tpl"}-->

<!--{include file="user/nav.tpl"}-->

<div class="m_container">
<div class="m_inner">

<!--{include file="user/left.tpl"}-->

<div class="box m_right">
    <h2 class="title"><!--{if $Action eq "edit"}-->编辑<!--{else}-->添加<!--{/if}-->联盟成员</h2>
    <form name="form1" action="user.php?o=team&m=member" method="post" onsubmit="return checkFormData();">
    <input type="hidden" name="op" value="<!--{$Action}-->" />
    <input type="hidden" name="id" value="<!--{$MemberData.user_id}-->" />
    <table class="list_style">
      <tr class="alt1">
        <td class="text_right" width="30%">成员用户名：</td>
        <td width="70%"><input type="text" class="formInput" name="username" size="30" maxlength="20" value="<!--{$MemberData.user_name}-->" <!--{if $Action eq "edit"}-->readonly="readonly"<!--{/if}--> /><span class="form_clue">长度请限制在4 - 20个字符以内</span></td>
      </tr>
      <tr class="alt2">
        <td class="text_right">登录密码：</td>
        <td><input type="password" name="password" class="formInput" size="30" maxlength="20" /><span class="form_clue">密码长度不能少于4个字符<!--{if $Action eq "edit"}-->。不修改密码请留空</span><!--{/if}--></td>
      </tr>
      <tr class="alt1">
        <td class="text_right">审核状态：</td>
        <td><input type="radio" name="join_auditing" value="1"<!--{if $MemberData.join_auditing}--> checked="checked"<!--{/if}--> />是&nbsp;<input type="radio" name="join_auditing" value="0"<!--{if !$MemberData.join_auditing}--> checked="checked"<!--{/if}--> />否</td>
      </tr>
      <tr class="tcat">
        <td colspan="2">联盟权限分配</td>
      </tr>
      <tr class="alt1">
        <td class="text_right">允许编辑联盟数据：</td>
        <td><input type="radio" name="can_edit" value="1"<!--{if $MemberData.team_can_edit}--> checked="checked"<!--{/if}--> />是&nbsp;<input type="radio" name="can_edit" value="0"<!--{if !$MemberData.team_can_edit}--> checked="checked"<!--{/if}--> />否</td>
      </tr>
      <tr class="alt2">
        <td class="text_right">允许删除联盟数据：</td>
        <td><input type="radio" name="can_delete" value="1"<!--{if $MemberData.team_can_delete}--> checked="checked"<!--{/if}--> />是&nbsp;<input type="radio" name="can_delete" value="0"<!--{if !$MemberData.team_can_delete}--> checked="checked"<!--{/if}--> />否</td>
      </tr>
      <tr class="alt1">
        <td class="text_right">允许提升联盟数据：</td>
        <td><input type="radio" name="can_upgrade" value="1"<!--{if $MemberData.team_can_upgrade}--> checked="checked"<!--{/if}--> />是&nbsp;<input type="radio" name="can_upgrade" value="0"<!--{if !$MemberData.team_can_upgrade}--> checked="checked"<!--{/if}--> />否</td>
      </tr>
    <!--{if $UserInfo.team_create_user_id eq $UserInfo.user_id}-->
      <tr class="alt2">
        <td class="text_right">允许管理联盟成员：</td>
        <td><input type="radio" name="can_manage_user" value="1"<!--{if $MemberData.team_can_manage_user}--> checked="checked"<!--{/if}--> />是&nbsp;<input type="radio" name="can_manage_user" value="0"<!--{if !$MemberData.team_can_manage_user}--> checked="checked"<!--{/if}--> />否</td>
      </tr>
    <!--{/if}-->
      <tr class="tfooter text_center">
        <td colspan="2">
        <input type="submit" id="submit" value="<!--{if $Action eq 'edit'}--> 编 辑 <!--{else}--> 添 加 <!--{/if}-->" class="formButton" />
        <input type="button" value="返回上一页" class="formButton" onclick="javascript:history.back();" />
        </td>
      </tr>
    </table>
    </form>
</div>

<div class="clear"></div>
</div><!--{* manage inner *}-->
</div><!--{* manage container *}-->

<!--{include file="footer.tpl"}-->