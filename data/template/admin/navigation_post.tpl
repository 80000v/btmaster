<!--{include file="header.tpl"}-->

<div class="table clear">
    <div class="f_nav">
    <input type="button" value="添加导航" <!--{if $Action eq "add"}-->disabled="disabled"<!--{else}-->onclick="window.location='navigation.php?act=add'"<!--{/if}--> class="formButton" />
    <input type="button" value="顶部导航管理" onclick="window.location='navigation.php?location=header'" class="formButton" />
    <input type="button" value="底部导航管理" onclick="window.location='navigation.php?location=footer'" class="formButton" />
    </div>
</div>

<div class="table clear">
<form name="form1" method="post" onsubmit="return checkFormData();">
<input type="hidden" name="op" value="<!--{$Action}-->" />
<!--{if $Action eq "edit"}--><input type="hidden" name="id" value="<!--{$Navigation.navigation_id}-->" /><!--{/if}-->
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr><td colspan="2" class="theader"><!--{if $Action eq "edit"}-->编辑<!--{else}-->添加<!--{/if}-->导航</td></tr>
  <tr class="alt1">
    <td align="right" width="30%">导航名称</td>
    <td width="70%"><input type="text" class="formInput" name="navigation_name" size="30" maxlength="100" value="<!--{$Navigation.navigation_name}-->" /><br /><span class="form_clue">长度在20字符以内</span></td>
  </tr>
  <tr class="alt2">
    <td align="right">显示样式</td>
    <td>
    <select name="color" onchange="customColor(this.value);">
    <option value="">默认颜色</option>
    <option value="red"<!--{if $Navigation.navigation_style[0][1] eq "red"}--> selected="selected"<!--{/if}--> style="background-color:red;">红色</option>
    <option value="orange"<!--{if $Navigation.navigation_style[0][1] eq "orange"}--> selected="selected"<!--{/if}--> style="background-color:orange;">橙色</option>
    <option value="yellow"<!--{if $Navigation.navigation_style[0][1] eq "yellow"}--> selected="selected"<!--{/if}--> style="background-color:yellow;">黄色</option>
    <option value="green"<!--{if $Navigation.navigation_style[0][1] eq "green"}--> selected="selected"<!--{/if}--> style="background-color:green;">绿色</option>
    <option value="cyan"<!--{if $Navigation.navigation_style[0][1] eq "cyan"}--> selected="selected"<!--{/if}--> style="background-color:cyan;">青色</option>
    <option value="blue"<!--{if $Navigation.navigation_style[0][1] eq "blue"}--> selected="selected"<!--{/if}--> style="background-color:blue;">蓝色</option>
    <option value="purple"<!--{if $Navigation.navigation_style[0][1] eq "purple"}--> selected="selected"<!--{/if}--> style="background-color:purple;">紫色</option>
    <option value="black"<!--{if $Navigation.navigation_style[0][1] eq "black"}--> selected="selected"<!--{/if}--> style="background-color:black;">黑色</option>
    <option value="white"<!--{if $Navigation.navigation_style[0][1] eq "white"}--> selected="selected"<!--{/if}--> style="background-color:white;">白色</option>
    <option value="gray"<!--{if $Navigation.navigation_style[0][1] eq "gray"}--> selected="selected"<!--{/if}--> style="background-color:gray;">灰色</option>
    <option value="-"<!--{if $Navigation.navigation_style[0][0] eq "-"}--> selected="selected"<!--{/if}-->>其他颜色</option>
    </select><span id="custom_color"<!--{if $Navigation.navigation_style[0][0] neq "-"}--> style="display:none;"<!--{/if}-->><input type="text" class="formInput" size="10" maxlength="20" name="custom_color" value="<!--{$Navigation.navigation_style[0][1]|default:'#'}-->" /></span><br />
    <label><input type="checkbox" name="bold" value="1"<!--{if $Navigation.navigation_style[1]}--> checked="checked"<!--{/if}--> />粗体</label>
    <label><input type="checkbox" name="italic" value="1"<!--{if $Navigation.navigation_style[2]}--> checked="checked"<!--{/if}--> />斜体</label>
    <label><input type="checkbox" name="underline" value="1"<!--{if $Navigation.navigation_style[3]}--> checked="checked"<!--{/if}--> />下划线</label>
    </td>
  </tr>
  <tr class="alt1">
    <td align="right">导航链接</td>
    <td><input type="text" class="formInput" name="navigation_url" size="30" maxlength="100" value="<!--{$Navigation.navigation_url}-->" /><br /><span class="form_clue">如果是站外链接，需要加上http://</span></td>
  </tr>
  <tr class="alt2">
    <td align="right">打开方式</td>
    <td>
    <label><input type="radio" name="navigation_blank" value="0"<!--{if !$Navigation.navigation_blank}--> checked="checked"<!--{/if}--> />本窗口</label>
    <label><input type="radio" name="navigation_blank" value="1"<!--{if $Navigation.navigation_blank}--> checked="checked"<!--{/if}--> />新窗口</label>
    </td>
  </tr>
  <tr class="alt1">
    <td align="right">显示位置</td>
    <td>
    <label><input type="radio" name="navigation_location" value="header"<!--{if !$Navigation.navigation_location || $Navigation.navigation_location eq "header"}--> checked="checked"<!--{/if}--> />顶部</label>
    <label><input type="radio" name="navigation_location" value="footer"<!--{if $Navigation.navigation_location eq "footer"}--> checked="checked"<!--{/if}--> />底部</label>
    </td>
  </tr>
  <tr class="alt2">
    <td align="right">显示顺序</td>
    <td><input type="text" class="formInput" name="navigation_order" size="2" maxlength="3" value="<!--{$Navigation.navigation_order|default:0}-->" /></td>
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

<script type="text/javascript">
function customColor(color)
{
    if ('-' == color)
    {
        $('custom_color').style.display = '';
    }
    else
    {
        $('custom_color').style.display = 'none';
    }
}
</script>

<!--{include file="footer.tpl"}-->