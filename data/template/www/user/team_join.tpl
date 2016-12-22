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
        Window.alert('请输入搜索的联盟名称！');
        return false;
    }

    $('submit').value = '数据正在提交';
    $('submit').disabled = true;
    return true;
}
</script>

<div class="box m_right">
    <h2 class="title">加入联盟</h2>
    <form name="form1" action="user.php" method="get" onsubmit="return checkFormData();">
    <input type="hidden" name="o" value="team" />
    <input type="hidden" name="m" value="team" />
    <input type="hidden" name="act" value="list" />
    <table class="list_style">
      <tr class="alt1">
        <td class="text_right" width="30%">第一步，搜索联盟名称</td>
        <td width="70%"><input type="text" id="team_name" name="team_name" size="30" maxlength="100" class="formInput" /><span class="form_clue">搜索长度不能少于4个字符</span></td>
      </tr>
      <tr class="tfooter text_center">
        <td colspan="2">
        <input type="submit" id="submit" value="搜索联盟" class="formButton" />
        </td>
      </tr>
    </table>
    </form>
</div>

<div class="clear"></div>
</div><!--{* manage inner *}-->
</div><!--{* manage container *}-->

<!--{include file="footer.tpl"}-->