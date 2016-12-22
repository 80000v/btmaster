<!--{include file="header.tpl"}-->

<!--{include file="user/nav.tpl"}-->

<div class="m_container">
<div class="m_inner">

<!--{include file="user/left.tpl"}-->

<div class="box m_right">
    <h2 class="title">
        <span class="left"><!--{$multipage|default:"只有一页"}--></span>
        <span class="right text_normal">[<a href="user.php?o=team&m=member&act=add">添加新成员</a>]&nbsp;[<a href="user.php?o=team&m=member">显示全部</a>]&nbsp;[<a href="user.php?o=team&m=member&bound=member">正式成员</a>]&nbsp;[<a href="user.php?o=team&m=member&bound=auditing">待审核成员</a>]</span>
    </h2>
    <table class="list_style">
      <thead class="tcat text_center">
      <tr>
        <th width="*" align="left">用户名</th>
        <th width="25%">来自</th>
        <th width="10%">加入日期</th>
        <th width="10%">加入状态</th>
        <th width="10%">操作</th>
      </tr>
      </thead>
      <tbody class="tbody">
    <!--{foreach item=row from=$MemberData key=key}-->
      <tr class="alt1 text_center">
        <td align="left"><!--{$row.user_name}--></td>
        <td><!--{if $row.node_name neq ""}--><a href="<!--{$row.node_site_url}-->" target="_blank"><!--{$row.node_name}--></a><!--{else}-->本地用户<!--{/if}--></td>
        <td nowrap="nowrap"><!--{$row.join_date|date_format:"%Y/%m/%d %H:%M:%S"}--></td>
        <td nowrap="nowrap"><!--{if $row.join_auditing}-->正式成员<!--{else}-->待审核<!--{/if}--></td>
        <td nowrap="nowrap"><!--{if !$row.join_auditing}--><a href="user.php?o=team&m=member&id=<!--{$row.user_id}-->&act=auditing">批准</a><!--{/if}-->&nbsp;<a href="user.php?o=team&m=member&id=<!--{$row.user_id}-->&act=edit" title="编辑联盟用户">修改</a>&nbsp;<a href="user.php?o=team&m=member&id=<!--{$row.user_id}-->&act=kick" title="踢出联盟" onclick="return confirm('确定要将联盟成员 <!--{$row.user_name|escape:'javascript'}--> 踢出联盟？');">踢出</a></td>
      </tr>
    <!--{foreachelse}-->
      <tr class="alt1 text_center"><td colspan="10">没有符合条件的记录！</td></tr>
    <!--{/foreach}-->
      </tbody>
    </table>
    <h2 class="title"><!--{$multipage|default:"只有一页"}--></h2>
</div>

<div class="clear"></div>
</div><!--{* manage inner *}-->
</div><!--{* manage container *}-->

<!--{include file="footer.tpl"}-->