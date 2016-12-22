<!--{include file="header.tpl"}-->

<div class="topbody">
    <div class="left"><img src="images/logo.gif" /></div>
    <div class="nav right">
    <a href="<!--{$Config.site_path}-->" target="_blank">网站首页</a>
    <a href="misc.php?act=change_pw" target="main">修改密码(<!--{$ManagerInfo.name}-->)</a>
    <a href="misc.php?act=license" target="main">更新授权</a>
    <a href="index.php?act=logout" onclick="return confirm('确定退出登录？');" title="安全退出！" target="_top">退出登录</a>
    </div>
</div>

<div class="pagetitle clear">
    <div class="left top_nav">
    <a href="index.php?act=main" target="main">管理首页</a>
    <!--{foreach item=group from=$ManageMenuGroup key=key}-->
    <a id="a_<!--{$key}-->" href="javascript:void(0);" onfocus="this.blur();" onclick="showMenu('<!--{$key}-->');"><!--{$group}--></a>
    <!--{/foreach}-->
    </div>
    <div class="right top_tool">
    <a href="javascript:void(0);" onfocus="this.blur();" onclick="parent.main.history.go(-1);return false;"><img src="images/back.gif" title="后退" /></a>
    <a href="javascript:void(0);" onfocus="this.blur();" onclick="parent.main.history.go(1);return false;"><img src="images/forward.gif" title="前进" /></a>
    <a href="javascript:void(0);" onfocus="this.blur();" onclick="parent.main.location.reload();return false;"><img src="images/reload.gif" title="刷新" /></a>
    </div>
    <div class="clear"></div>
</div>

<script type="text/javascript">
var menu_ = new Array();
<!--{counter start=0 skip=1 print=false assign=num}-->
<!--{foreach item=group from=$ManageMenuGroup key=key}-->
menu_[<!--{$num}-->] = '<!--{$key}-->';
<!--{counter}-->
<!--{/foreach}-->
if (menu_[0])
{
    window.onload = function(){activateMenu(menu_[0])};
}
function showMenu(type)
{
    for (var i = 0; i < menu_.length; i++)
    {
        if (menu_[i] == type)
        {
            window.parent.frames.nav.$(menu_[i]).style.display = '';
        }
        else
        {
            window.parent.frames.nav.$(menu_[i]).style.display = 'none';
        }
    }
    activateMenu(type);
}
function activateMenu(type)
{
    for (var i = 0; i < menu_.length; i++)
    {
        if (menu_[i] == type)
        {
            window.top.frames.top_nav.$('a_'+ menu_[i]).style.background = 'url("images/nav_bg_hover.gif") repeat-x';
            window.top.frames.top_nav.$('a_'+ menu_[i]).focus();
        }
        else
        {
            window.top.frames.top_nav.$('a_'+ menu_[i]).style.background = '';
        }
    }
}
</script>

</div>

</body>
</html>