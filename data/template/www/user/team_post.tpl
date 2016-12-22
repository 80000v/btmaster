<!--{include file="header.tpl"}-->

<!--{include file="user/nav.tpl"}-->

<div class="m_container">
<div class="m_inner">

<!--{include file="user/left.tpl"}-->

<script type="text/javascript">
function checkFormData()
{
    if ('' == $F('team_name'))
    {
        Window.alert('请输入联盟名称！');
        return false;
    }
    var team_name_length = cnLength($F('team_name'));
    if (24 < team_name_length || team_name_length < 4)
    {
        Window.alert('联盟名称长度请限制在4 - 24个字符以内！');
        return false;
    }

    $('submit').value = '数据正在提交';
    $('submit').disabled = true;
    return true;
}
</script>

<div class="box m_right">
    <h2 class="title"><!--{$Op.title}-->联盟</h2>
    <form name="form1" action="user.php?o=team&m=team" method="post" onsubmit="return checkFormData();">
    <input type="hidden" name="op" value="<!--{$Op.op}-->" />
    <table class="list_style">
      <tr class="alt1">
        <td class="text_right" width="30%">联盟名称</td>
        <td width="70%"><input type="text" id="team_name" name="team_name" size="30" maxlength="100" class="formInput" value="<!--{$UserInfo.team_name}-->" /><span class="form_clue">长度请限制在4 - 24个字符以内</span></td>
      </tr>
      <tr class="alt2">
        <td class="text_right">加入条件</td>
        <td><input type="radio" name="join_condition" value="any" <!--{if !$UserInfo.join_condition || $UserInfo.join_condition eq "any"}-->checked="checked"<!--{/if}--> />任何人可以加入&nbsp;<input type="radio" name="join_condition" value="auditing" <!--{if $UserInfo.join_condition eq "auditing"}-->checked="checked"<!--{/if}--> />加入需要审核&nbsp;<input type="radio" name="join_condition" value="close" <!--{if $UserInfo.join_condition eq "close"}-->checked="checked"<!--{/if}--> />禁止加入</td>
      </tr>
      <tr class="tfooter text_center">
        <td colspan="2">
        <input type="submit" id="submit" value="<!--{$Op.title}-->联盟" class="formButton" />
        </td>
      </tr>
    </table>
    </form>
</div>

<div class="clear"></div>
</div><!--{* manage inner *}-->
</div><!--{* manage container *}-->

<!--{include file="footer.tpl"}-->