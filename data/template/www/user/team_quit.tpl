<!--{include file="header.tpl"}-->

<!--{include file="user/nav.tpl"}-->

<div class="m_container">
<div class="m_inner">

<!--{include file="user/left.tpl"}-->

<div class="box m_right">
    <h2 class="title">确认您的退出操作</h2>
    <form name="form1" action="user.php?o=team&m=team" method="post" onsubmit="return checkFormData();">
    <input type="hidden" name="op" value="quit" />
    <table class="list_style">
      <tr class="alt1">
        <td class="text_right" width="30%">当前加入的联盟</td>
        <td width="70%"><span class="text_bold"><!--{$UserInfo.team_name}--></span></td>
      </tr>
      <!--{if $UserInfo.team_create_user_id eq $UserInfo.user_id}-->
      <tr class="alt2">
        <td class="text_center text_red text_14" colspan="2">注意：您是该联盟的创建者，退出将从系统彻底删除该联盟。</td>
      </tr>
      <!--{/if}-->
      <tr class="tfooter text_center">
        <td colspan="2">
        <input type="submit" id="submit" value="确定退出联盟" class="formButton" />
        </td>
      </tr>
    </table>
    </form>
</div>

<div class="clear"></div>
</div><!--{* manage inner *}-->
</div><!--{* manage container *}-->

<!--{include file="footer.tpl"}-->