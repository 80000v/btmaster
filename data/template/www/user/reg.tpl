<!--{include file="header.tpl"}-->

<script type="text/javascript">
Config['verify_code_reg'] = <!--{$Config.verify_code_reg|default:0}-->;
function checkFormData()
{
    if ('' == $F('username'))
    {
        Window.alert('请输入登录用户名！');
        return false;
    }
    if ('' == $F('password'))
    {
        Window.alert('请输入登录密码！');
        return false;
    }
    if ('' == $F('r_password'))
    {
        Window.alert('请输入确认密码！');
        return false;
    }
    if ($F('password') != $F('r_password'))
    {
        Window.alert('两次输入的密码不匹配！');
        return false;
    }
    if (1 == Config['verify_code_reg'] && '' == $F('vcode'))
    {
        Window.alert('请填写验证码！');
        return false;
    }

    $('submit').value = '数据正在提交';
    $('submit').disabled = true;
    return true;
}
</script>

<div class="box">
    <h2 class="title">新用户注册</h2>
    <form name="form1" action="user.php?o=reg" method="post" onsubmit="return checkFormData();">
    <input type="hidden" name="op" value="reg" />
    <table class="list_style">
      <tr class="alt1">
        <td class="text_right" width="30%">用户名</td>
        <td width="70%"><input type="text" id="username" name="username" class="formInput" size="30" maxlength="30" /><span class="form_clue">用户名长度请限制在4-20个字符以内</span></td>
      </tr>
      <tr class="alt2">
        <td class="text_right">登录密码</td>
        <td><input type="password" id="password" name="password" class="formInput" size="30" maxlength="30" /><span class="form_clue">密码长度不能少于4个字符</span></td>
      </tr>
      <tr class="alt1">
        <td class="text_right">确认密码</td>
        <td><input type="password" id="r_password" name="r_password" class="formInput" size="30" maxlength="30" /><span class="form_clue">重复输入一次密码</span></td>
      </tr>
    <!--{if $Config.verify_code_reg}-->
      <tr class="alt2">
        <td class="text_right">验证码</td>
        <td><input type="text" name="vcode" class="formInput" size="4" maxlength="4" /><img id="vimg" src="vimg.php?n=reg" align="absmiddle" alt="图片验证码" />(<a href="javascript:void(0);" onclick="imgRefresh('reg');return false;">看不清,换一张</a>)</td>
      </tr>
    <!--{/if}-->
      <tr class="tfooter text_center">
        <td colspan="2"><input type="submit" id="submit" class="formButton" value=" 注 册 " />&nbsp;&nbsp;<a href="user.php?o=login">已注册用户？</a></td>
      </tr>
    </table>
    </form>
</div>

<!--{include file="footer.tpl"}-->