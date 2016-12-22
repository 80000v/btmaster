<!--{include file="header.tpl"}-->

<!--{include file="user/nav.tpl"}-->

<div class="m_container">
<div class="m_inner">

<!--{include file="user/left.tpl"}-->

<div class="box m_right post">
    <h2 class="title"><!--{if $Action eq 'upload'}-->发布资源<!--{else}-->编辑资源信息<!--{/if}--></h2>
    <form name="form1"<!--{if $Action eq "edit"}-->action="user.php?o=data&type=<!--{$Type}-->"<!--{/if}--> method="post" enctype="multipart/form-data" onsubmit="return checkFormData();">
        <input type="hidden" name="op" value="<!--{$Action}-->" />
        <!--{if $Action eq "edit"}-->
        <input type="hidden" name="id" value="<!--{$BtData.bt_data_id}-->" />
        <input type="hidden" name="url" value="<!--{$smarty.const.HTTP_REFERER}-->" />
        <!--{/if}-->
        <table class="list_style">
          <tr class="alt2">
            <td class="text_right" width="15%" nowrap="nowrap">所属分类</td>
            <td width="85%"><select id="sort_id" name="sort_id"><option value="0">请选择</option><!--{$SortOption}--></select></td>
          </tr>
        <!--{if $Action eq "upload"}-->
          <tr class="alt1">
            <td class="text_right" nowrap="nowrap">上传文件</td>
            <td><input type="file" id="bt_file" name="bt_file" size="60" class="formInput" onkeydown="return false" oncontextmenu="return false" /><span class="form_clue">选择一个本地电脑中的torrent文件，文件大小不能超过<!--{$Config.bt_file_size/1024}-->Kb</span></td>
          </tr>
        <!--{/if}-->
        <!--{if $Config.nfo_allow}-->
          <tr class="alt1">
            <td class="text_right" nowrap="nowrap">NFO文件</td>
            <td><input type="file" id="nfo_file" name="nfo_file" size="60" class="formInput" onkeydown="return false" oncontextmenu="return false" /><span class="form_clue">选择一个本地电脑中的NFO文件，文件大小不能超过<!--{$Config.bt_file_size/1024}-->Kb。<a href="http://zh.wikipedia.org/zh-cn/Nfo" target="_blank">NFO文件是什么？</a></span></td>
          </tr>
        <!--{/if}-->
          <tr class="alt2">
            <td class="text_right" nowrap="nowrap">资源名称</td>
            <td><input type="text" id="title" name="title" size="60" maxlength="200" class="formInput" value="<!--{$BtData.bt_data_title}-->" /><span class="form_clue">资源名称长度请限制在<!--{$Config.bt_title_least|default:10}--> - <!--{$Config.bt_title_max|default:100}-->字符以内</span></td>
          </tr>
          <tr class="alt1">
            <td class="text_right" valign="top" nowrap="nowrap">资源介绍</td>
            <td><input type="hidden" id="intro" name="intro" value="<!--{$BtData.bt_data_intro|escape:'html'}-->" /><input type="hidden" id="content___Config" value="AutoDetectLanguage=false&amp;DefaultLanguage=zh-cn" /><iframe id="content___Frame" src="images/htmleditor/editor/fckeditor.html?InstanceName=intro&amp;Toolbar=Basic" width="100%" height="360" frameborder="no" scrolling="no"></iframe><span class="form_clue">资源介绍长度请限制在20 - <!--{$Config.bt_intro_maxlength}-->个字符以内</span>&nbsp;<a href="javascript:void(0);" onclick="checkLength();return false;">[字数检查]</a></td>
          </tr>
        <!--{if $Config.emule_allow}-->
          <tr class="alt2 emule">
            <td class="text_right" valign="top" nowrap="nowrap">ED2K地址</td>
            <td><div><span class="left"><textarea id="emule_resource" name="emule_resource" class="formInput" style="height:80px;width:500px;word-break:break-all;" /><!--{$BtData.emule_resource|escape:'html'}--></textarea></span><span class="right"><img src="images/icon_spread.gif" style="cursor:pointer;" title="展开" onclick="largeArea('emule_resource', '300px', this)" /></span></div><span class="form_clue">发布eMule资源，每行一个地址。选填</span></td>
          </tr>
        <!--{/if}-->
          <tr class="alt2">
            <td class="text_right" nowrap="nowrap">讨论地址</td>
            <td><input type="text" id="discuss_url" name="discuss_url" size="60" maxlength="250" class="formInput" value="<!--{$BtData.bt_data_discuss_url|urldecode}-->" /><span class="form_clue">选填</span></td>
          </tr>
        <!--{if $Action eq "upload" and $Config.verify_code_upload}-->
          <tr class="alt1">
            <td class="text_right" nowrap="nowrap">验证码</td>
            <td><input type="text" id="vcode" name="vcode" class="formInput" size="4" maxlength="4" /><img id="vimg" src="vimg.php?n=upload" align="absmiddle" alt="图片验证码" />(<a href="javascript:void(0);" onclick="imgRefresh('upload'); return false;">看不清,换一张</a>)</td>
          </tr>
        <!--{/if}-->
          <tr class="tfooter text_center">
            <td colspan="2">
            <input type="submit" id="submit" value="<!--{if $Action eq 'upload'}-->发布<!--{else}-->提交编辑<!--{/if}-->" class="formButton" />
            <input type="button" value="预 览" class="formButton" onclick="executePreview();" />
            </td>
          </tr>
        </table>
    </form>
    </div>

    <form name="preview" action="user.php?o=upload" method="post" target="preview">
    <input type="hidden" name="op" value="preview" />
    <input type="hidden" name="preview_content" />
    </form>

<div class="clear"></div>
</div><!--{* manage inner *}-->
</div><!--{* manage container *}-->

<script type="text/javascript">
var Action = '<!--{$Action}-->';
var intro_max_length = <!--{$Config.bt_intro_maxlength}-->;
var emule_allow = <!--{if $Config.emule_allow}-->true<!--{else}-->false<!--{/if}-->;
Config['verify_code_upload'] = <!--{$Config.verify_code_upload|default:0}-->;
function executePreview()
{
    var contents = getIntro();
    if ('' == contents)
    {
        Window.alert('没有可预览内容！');
        return false;
    }

    document.preview.preview_content.value = contents;
    document.preview.submit();
}
function checkFormData()
{
    if (0 == $F('sort_id'))
    {
        Window.alert('没有选择分类！');
        return false;
    }
    if ('upload' == Action)
    {
        var bt_file = $F('bt_file');
        if ('' == bt_file)
        {
            Window.alert('请选择一个要上传的种子文件！');
            return false;
        }
        if (false == /\.torrent$/i.test(bt_file))
        {
            Window.alert('您选择上传的不是一个.torrent文件！');
            return false;
        }
    }
	var nfo_file = $F('nfo_file');
    if ('' != nfo_file)
    {
        if (false == /\.nfo/i.test(nfo_file))
        {
            Window.alert('您选择上传的不是一个NFO文件！');
            return false;
        }
    }
    if ('' == $F('title'))
    {
        Window.alert('请填写资源名称！');
        return false;
    }
    var title_length = cnLength($F('title'));
    if (<!--{$Config.bt_title_max|default:100}--> < title_length || title_length < <!--{$Config.bt_title_least|default:10}-->)
    {
        Window.alert('资源名称长度请限制在 <!--{$Config.bt_title_least|default:10}--> - <!--{$Config.bt_title_max|default:100}--> 字符以内！');
        return false;
    }
    var intro = getIntro();
    if ('' == intro)
    {
        Window.alert('请填写资源介绍信息！');
        return false;
    }
    var intro_length = cnLength(intro);
    if (intro_max_length < intro_length || intro_length < 20)
    {
        Window.alert('资源介绍长度请限制在 20 - '+ intro_max_length +' 字符以内！');
        return false;
    }
    if (true == emule_allow)
    {
        var eMule = "/ed2k://|S+?|S+?|S+?|S+?|//";
        var emule_resource = $('emule_resource').value;
        if ('' != emule_resource)
        {
            if (emule_resource.match(eMule)==null)
            {
                Window.alert('不是一个有效的eMule资源格式，请检查后重新填写！');
                return false;
            }
        }
    }
    if ('' != $F('discuss_url'))
    {
        if (200 < cnLength($F('discuss_url')))
        {
            Window.alert('讨论地址长度不能超过200字符！');
            return false;
        }
    }
    if ('upload' == Action && 1 == Config['verify_code_upload'] && '' == $F('vcode'))
    {
        Window.alert('请填写验证码！');
        return false;
    }

    $('submit').value = '数据正在提交';
    $('submit').disabled = true;
    return true;
}
function getIntro()
{
    return FCKeditorAPI.GetInstance('intro').GetXHTML(true);
}
function checkLength()
{
    Window.alert('当前长度：'+ cnLength(getIntro()) +'，允许的长度：'+ intro_max_length);
}
function largeArea(id, h, o)
{
    if ($(id).style.height != h)
    {
        $(id).style.height = h;
        o.src = 'images/icon_gather.gif';
        o.title = '还原';
    }
    else
    {
        $(id).style.height = '60px';
        o.src = 'images/icon_spread.gif';
        o.title = '展开';
    }
}
</script>

<!--{include file="footer.tpl"}-->