<!--{include file="header.tpl"}-->

<div class="table">
<form method="post">
<input type="hidden" name="op" value="rank" />
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr>
    <td colspan="10" class="theader">首页联盟列表</td>
  </tr>
  <tr class="tcat text_center">
    <td width="40"></td>
    <td width="40">排序</td>
    <td width="*" nowrap="nowrap">联盟名称</td>
    <td width="15%" nowrap="nowrap">创建者</td>
    <td width="15%" nowrap="nowrap">创建日期</td>
    <td width="10%" nowrap="nowrap">操作</td>
  </tr>
<!--{if $TeamData}-->
<!--{foreach item=row from=$TeamData key=key}-->
  <tr id="row_<!--{$key}-->" onclick="setPointer(this, <!--{$key}-->, 'click');" class="alt<!--{cycle values='1,2'}-->" height="18" align="center">
    <td width="40"><input type="text" name="order[<!--{$row.team_id}-->]" value="<!--{$row.display_order}-->" size="4" maxlength="10" class="formInput text_center" /></td>
    <td width="40">
    <a href="team.php?act=up&id=<!--{$row.team_id}-->"><img src="images/icon_up.gif" title="上移一位" /></a>
    <a href="team.php?act=down&id=<!--{$row.team_id}-->"><img src="images/icon_down.gif" title="下移一位" /></a>
    </td>
    <td align="left"><!--{$row.team_name}--></td>
    <td nowrap="nowrap"><!--{$row.user_name}--></td>
    <td nowrap="nowrap"><!--{$row.create_date|date_format:"%Y-%m-%d %H:%M"}--></td>
    <td nowrap="nowrap"><a href="team.php?act=edit&id=<!--{$row.team_id}-->"><img src="images/icon_edit.gif" title="编辑" /></a><a href="team.php?act=delete&id=<!--{$row.team_id}-->" onclick="return confirm('确定删除这个联盟？');"><img src="images/icon_delete.gif" title="删除" /></a><!--{if !$row.create_auditing}--><a href="team.php?act=auditing&id=<!--{$row.team_id}-->"><img src="images/icon_auditing.gif" title="审核" /></a><!--{/if}--></td>
  </tr>
<!--{/foreach}-->
  <tr class="tcat">
    <td align="center"><input type="submit" value="排序" class="formButton" /></td><td colspan="9"></td>
  </tr>
<!--{else}-->
  <tr>
    <td colspan="10" class="alt1 text_center">只有显示在首页的联盟才能够使用排序功能，目前没有需要排序的联盟![<a href="javascript:history.back();">返回上一页</a>]</td>
  </tr>
<!--{/if}-->
</table>
</form>
</div>

<!--{include file="footer.tpl"}-->