<!--{include file="header.tpl"}-->

<div class="table">
<form name="form1" method="post" action="data.php" onsubmit="return checkFormData();">
<input type="hidden" name="op" value="edit" />
<input type="hidden" name="id" value="<!--{$BtData.bt_data_id}-->" />
<input type="hidden" name="url" value="<!--{$smarty.const.HTTP_REFERER}-->" />
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader">编辑资源信息</td></tr>
  <tr class="alt1">
    <td align="right" width="15%">资源名称</td>
    <td width="85%"><input type="text" id="title" name="title" size="60" maxlength="200" class="formInput" value="<!--{$BtData.bt_data_title}-->" /></td>
  </tr>
  <tr class="alt2">
    <td align="right">所属分类</td>
    <td><select name="sort_id"><!--{$SortOption}--></select></td>
  </tr>
  <tr class="alt1">
    <td align="right" valign="top">资源介绍</td>
    <td><input type="hidden" id="intro" name="intro" value="<!--{$BtData.bt_data_intro|escape:'html'}-->" /><input type="hidden" id="content___Config" value="AutoDetectLanguage=false&amp;DefaultLanguage=zh-cn" /><iframe id="content___Frame" src="<!--{$Config.site_path}-->/images/htmleditor/editor/fckeditor.html?InstanceName=intro&amp;Toolbar=Basic" width="100%" height="360" frameborder="no" scrolling="no"></iframe><br /><span class="form_clue">介绍内容长度请限制在20 - <!--{$Config.bt_intro_maxlength}-->个字符以内</span> <a href="javascript:void(0);" onclick="checkLength();return false;">[字数检查]</a></td>
  </tr>
  <tr class="alt2">
    <td align="right" valign="top">ED2K地址</td>
    <td><textarea id="emule_resource" name="emule_resource" class="formTextarea" cols="110" style="height:60px;word-break:break-all;" /><!--{$BtData.emule_resource|escape:'html'}--></textarea><input type="button" value="展开" onclick="largeArea('emule_resource', '300px', this)" /></td>
  </tr>
  <tr class="alt1">
    <td align="right">讨论地址</td>
    <td><input type="text" id="discuss_url" name="discuss_url" size="60" maxlength="250" class="formInput" value="<!--{$BtData.bt_data_discuss_url|urldecode}-->" /><span class="form_clue">选填</span></td>
  </tr>
  <tr>
    <td colspan="2" class="tfoot text_center">
    <input type="submit" class="formButton" accesskey="s" id="submit" value=" 编辑(S) " />
    <input type="reset" class="formButton" accesskey="r" value="重置(R)" />
    <input type="button" class="formButton" accesskey="n" value=" 返回(N) " onclick='javascript:history.back();' />
    <input type="button" class="formButton" style="color:red;" onclick="deleteConfirm(<!--{$BtData.bt_data_id}-->);" value="删除" />
    </td>
  </tr>
</table>
</form>
</div>

<script type="text/javascript">
var intro_max_length = <!--{$Config.bt_intro_maxlength}-->;

function checkLength()
{
    alert('当前长度：'+ cnLength(getIntro()) +'，允许的长度：'+ intro_max_length);
}
function getIntro()
{
    return FCKeditorAPI.GetInstance('intro').GetXHTML(true);
}
function largeArea(id, h, o)
{
    if ($(id).style.height != h)
    {
        $(id).style.height = h;
        o.value = '还原';
    }
    else
    {
        $(id).style.height = '60px';
        o.value = '展开';
    }
}

function deleteConfirm(id)
{
    if (false == confirm('确定要删除这条数据？'))
    {
        return false;
    }

    location.href = 'data.php?act=delete&id='+ id;
}
</script>

<!--{include file="footer.tpl"}-->