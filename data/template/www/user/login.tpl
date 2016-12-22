<!--{include file="header.tpl"}-->

<script type="text/javascript">
Config['verify_code_login'] = <!--{$Config.verify_code_login|default:0}-->;
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
    if (1 == Config['verify_code_login'] && '' == $F('vcode'))
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
    <!--{if $LoginNotice neq ""}-->
    <div class="text_center text_red text_bold" style="margin: 10px;">*<!--{$LoginNotice}--></div>
    <!--{/if}-->
    <h2 class="title">登录发布系统</h2>
    <form name="form1" action="user.php?o=login" method="post" onsubmit="return checkFormData();">
    <input type="hidden" name="op" value="login" />
    <input type="hidden" name="url" value="<!--{$GotoURL|urlencode}-->" />
    <table class="list_style">
      <tr class="alt1">
        <td class="text_right" width="30%">用户名</td>
        <td width="70%"><input type="text" id="username" name="username" class="formInput" size="25" maxlength="30" /></td>
      </tr>
      <tr class="alt2">
        <td class="text_right">密&nbsp;&nbsp;码</td>
        <td><input type="password" id="password" name="password" class="formInput" size="25" maxlength="30" /></td>
      </tr>
      <tr class="alt1">
        <td class="text_right">来自</td>
        <td><select name="node">
        <option value="0">本地用户</option>
        <!--{html_options options=$NodeSelect}-->
        </select></td>
      </tr>
      <tr class="alt2">
        <td class="text_right">登录有效期</td>
        <td><select name="cookietime" class="formInput">
        <option value="0">浏览器进程</option>
        <option value="2592000">保存一月</option>
        <option value="86400">保存一天</option>
        <option value="315360000">永久有效</option>
        </select></td>
      </tr>
    <!--{if $Config.verify_code_login}-->
      <tr class="alt1">
        <td class="text_right">验证码</td>
        <td><input type="text" name="vcode" class="formInput" size="4" maxlength="4" /><img id="vimg" src="vimg.php?n=login" align="absmiddle" alt="图片验证码" />(<a href="javascript:void(0);" onclick="imgRefresh('login');return false;">看不清,换一张</a>)</td>
      </tr>
    <!--{/if}-->
      <tr class="tfooter text_center">
        <td colspan="2"><input type="submit" id="submit" class="formButton" value=" 登 录 " /><!--{if $Config.self_reg neq "close"}-->&nbsp;&nbsp;<a href="user.php?o=reg">没有注册？</a><!--{/if}--></td>
      </tr>
    </table>
    </form>
</div>

<!--{include file="footer.tpl"}-->