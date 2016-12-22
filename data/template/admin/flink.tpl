<!--{include file="header.tpl"}-->

<div class="table clear">
    <div class="f_nav">
    <input type="button" value="添加友情链接" onclick="window.location='flink.php?act=add'" class="formButton" />
    <input type="button" value="友情链接管理" onclick="window.location='flink.php'" class="formButton" />
    <input type="button" value="更新缓存" onclick="window.location='flink.php?act=build_cache'" class="formButton" />
    </div>
</div>

<div class="table clear">
<form name="form1" method="post">
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr>
    <td colspan="10" class="theader">友情链接列表</td>
  </tr>
  <tr class="tcat text_center">
    <td width="5%"></td>
    <td width="30%" nowrap="nowrap">站点名称</td>
    <td width="*" nowrap="nowrap">说明文字</td>
    <td width="10%" nowrap="nowrap">显示顺序</td>
  </tr>
<!--{if $FLink}-->
<!--{foreach item=row from=$FLink key=key}-->
  <tr id="row_<!--{$key}-->" onclick="setPointer(this, <!--{$key}-->, 'click');" class="alt<!--{cycle values='1,2'}-->" height="18" align="center">
    <td><input id="mark_box_<!--{$key}-->" name="data_id[]" type="checkbox" value="<!--{$row.link_id}-->" /></td>
    <td nowrap="nowrap"><a href="flink.php?act=edit&id=<!--{$row.link_id}-->" title="点击编辑"><!--{$row.link_name}--></a></td>
    <td align="left"><!--{$row.link_intro}--></td>
    <td nowrap="nowrap"><!--{$row.link_order}--></td>
  </tr>
<!--{/foreach}-->
  <tr>
    <td colspan="4" class="tcat text_left">
    <div class="left">
    <input type="button" value="全选" onclick='selectAll(true);' />
    <input type="button" value="全不选" onclick='selectAll(false);' />
    <input type="button" value="反选" onclick='againstSelect();' />
    <select name="op" onchange="executeOperate();">
    <option value="">将选中项</option>
    <option value="delete">删除</option>
    </select>
    </div>
    <div class="right" style="padding-top:4px;"><!--{$multipage|default:"只有一页"}--></div>
    </td>
  </tr>
<!--{else}-->
  <tr height="18" class="alt1 text_center">
    <td colspan="4">还没有添加任何友情链接！</td>
  </tr>
<!--{/if}-->
</table>
</form>
</div>

<!--{include file="footer.tpl"}-->