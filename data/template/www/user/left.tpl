<div class="m_left">
    <div class="box control">
        <h2 class="title">用户控制面板</h2>
        <a href="user.php?o=upload">发布资源</a>
        <a href="user.php?o=data">管理发布资源</a>
        <!--{* 空白行 *}-->
        <div style="height:10px;"></div>
        <!--{if $UserInfo.team_id}-->
            <a href="user.php?o=data&type=team">联盟发布资源</a>
            <!--{if $UserInfo.team_can_manage_user}-->
            <a href="user.php?o=team&m=member">联盟成员</a>
            <!--{/if}-->
            <!--{if $UserInfo.team_create_user_id eq $UserInfo.user_id}-->
            <a href="user.php?o=team&m=team&act=edit">编辑联盟资料</a>
            <!--{/if}-->
            <a href="user.php?o=team&m=team&act=quit">退出加入的联盟</a>
        <!--{else}-->
            <!--{if $Config.team_create neq "close"}-->
            <a href="user.php?o=team&m=team&act=create">创建联盟</a>
            <!--{/if}-->
            <a href="user.php?o=team&m=team&act=search">加入联盟</a>
        <!--{/if}-->
        <!--{* 空白行 *}-->
        <div style="height:10px;"></div>
        <a href="user.php?o=profile&act=change_pw">修改登录密码</a>
        <a href="user.php?o=login&act=logout" onclick="return confirm('确定要退出登录？');">退出登录</a>
    </div>
</div>