<!--{include file="header.tpl"}-->

<div class="table clear">
    <div class="f_nav">
    <input type="button" value="添加文件类型" onclick="window.location='file_type.php?act=add'" class="formButton" />
    <input type="button" value="文件类型管理" onclick="window.location='file_type.php'" class="formButton" />
    <input type="button" value="更新缓存" onclick="window.location='file_type.php?act=build_cache'" class="formButton" />
    </div>
</div>

<!--{if $Action}-->
<div class="table clear">
<form name="form1" method="post" onsubmit="return checkFormData();">
<input type="hidden" name="op" value="<!--{$Action}-->" />
<!--{if $Action eq "edit"}--><input type="hidden" name="id" value="<!--{$FileType.type_id}-->" /><!--{/if}-->
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader"><!--{if $Action eq "edit"}-->编辑<!--{else}-->添加<!--{/if}-->文件类型</td></tr>
  <tr class="alt1">
    <td align="right" width="20%">简要描述信息</td>
    <td width="70%"><input type="text" class="formInput" name="intro" size="50" maxlength="50" value="<!--{$FileType.type_intro}-->" /><br /><span class="form_clue">针对此类文件类型的简短描述，长度不能超过50字符</span></td>
  </tr>
  <tr class="alt2">
    <td align="right">类型图标文件名</td>
    <td><input type="text" class="formInput" name="image" size="50" maxlength="50" value="<!--{$FileType.type_image}-->" /><br /><span class="form_clue">图标文件必须是存放在 images/icons 目录，不能使用中文文件名</span></td>
  </tr>
  <tr class="alt1">
    <td align="right" valign="top">包含的扩展名</td>
    <td><textarea class="formInput" style="width:300px;height:100px;" name="ext"><!--{$FileType.type_ext}--></textarea><br /><span class="form_clue">多个扩展名之间以英文逗号分隔</span></td>
  </tr>
  <tr>
    <td colspan="2" class="tfoot text_center">
    <input type="submit" class="formButton" accesskey="s" id="submit" value=" <!--{if $Action eq 'edit'}-->编辑<!--{else}-->添加<!--{/if}-->(S) " />
    <input type="reset" class="formButton" accesskey="r" value="重置(R)" />
    <input type="button" class="formButton" accesskey="n" value=" 返回(N) " onclick='javascript:history.back();' />
    </td>
  </tr>
</table>
</form>
</div>

<!--{else}-->

<div class="table">
<form name="form1" method="post">
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr>
    <td colspan="10" class="theader">已添加文件类型(共&nbsp;<!--{$totalnum}-->&nbsp;条记录)</td>
  </tr>
  <tr class="tcat text_center">
    <td width="5%" nowrap="nowrap"></td>
    <td width="10%" nowrap="nowrap">图标</td>
    <td width="30%" nowrap="nowrap">描述</td>
    <td width="45%" nowrap="nowrap">扩展名(后缀)</td>
    <td width="10%" nowrap="nowrap"></td>
  </tr>
<!--{if $FileTypeData}-->
<!--{foreach item=row from=$FileTypeData key=key}-->
  <tr id="row_<!--{$key}-->" onclick="setPointer(this, <!--{$key}-->, 'click');" class="alt<!--{cycle values='1,2'}-->" height="18" align="center">
    <td><input id="mark_box_<!--{$key}-->" name="data_id[]" type="checkbox" value="<!--{$row.type_id}-->" /></td>
    <td><img src="<!--{$Config.site_path}-->/images/icons/<!--{$row.type_image}-->" /></td>
    <td align="left"><!--{$row.type_intro}--></td>
    <td align="left"><!--{$row.type_ext|replace:",":", "}--></td>
    <td nowrap="nowrap"><a href="file_type.php?act=edit&id=<!--{$row.type_id}-->"><img src="images/icon_edit.gif" alt="编辑" /></a></td>
  </tr>
<!--{/foreach}-->
  <tr>
    <td colspan="5" class="tcat text_left">
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
  <tr height="18">
    <td colspan="5" class="alt1 text_center">没有相关记录！[<a href="javascript:history.back();">返回上一页</a>]</td>
  </tr>
<!--{/if}-->
</table>
</form>
</div>
<!--{/if}-->

<!--{include file="footer.tpl"}-->