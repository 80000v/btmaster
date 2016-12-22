<!--{include file="header.tpl"}-->

<!--{include file="user/nav.tpl"}-->

<div class="m_container">
<div class="m_inner">

<!--{include file="user/left.tpl"}-->

<script type="text/javascript">
function checkFormData()
{
    if ('' == $F('current_pw'))
    {
        Window.alert('没有输入当前密码！');
        return false;
    }
    if ('' == $F('new_pw'))
    {
        Window.alert('没有输入新密码！');
        return false;
    }
    if ($F('new_pw') != $F('repeat_new_pw'))
    {
        Window.alert('两次输入的新密码不一致！');
        return false;
    }

    $('submit').value = '数据正在提交';
    $('submit').disabled = true;
    return true;
}
</script>

<div class="box m_right">
    <h2 class="title">修改登录密码</h2>
    <form name="form1" action="user.php?o=profile" method="post" onsubmit="return checkFormData();">
    <input type="hidden" name="op" value="change_pw" />
    <table class="list_style">
      <tr class="alt1">
        <td class="text_right" width="20%">当前密码</td>
        <td width="80%"><input type="password" id="current_pw" name="current_pw" size="30" maxlength="30" class="formInput" /><span class="form_clue">当前正在使用的密码</span></td>
      </tr>
      <tr class="alt2">
        <td class="text_right">新密码</td>
        <td><input type="password" id="new_pw" name="new_pw" size="30" maxlength="30" class="formInput" /><span class="form_clue">密码长度不能少于4个字符</span></td>
      </tr>
      <tr class="alt1">
        <td class="text_right">确认新密码</td>
        <td><input type="password" id="repeat_new_pw" name="repeat_new_pw" size="30" maxlength="30" class="formInput" /><span class="form_clue">重复输入上面的新密码</span></td>
      </tr>
      <tr class="tfooter text_center">
        <td colspan="2">
        <input type="submit" id="submit" value="修改密码" class="formButton" />
        </td>
      </tr>
    </table>
    </form>
</div>

<div class="clear"></div>
</div><!--{* manage inner *}-->
</div><!--{* manage container *}-->

<!--{include file="footer.tpl"}-->