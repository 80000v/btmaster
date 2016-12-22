<div class="tcat" style="padding:2px;">
<select name="operate" onchange="executeOperate();">
<option value="">批量管理选项</option>
<!--{html_options options=$ManageSelect}-->
</select>
<input type="button" value="全选" onClick='selectAll(true);' />
<input type="button" value="全不选" onClick='selectAll(false);' />
<input type="button" value="反选" onClick='againstSelect();' />
</div>
<div style="display:none;" id="manage_area" class="text_left">
<div class="alt1">
<table style="display:none;" id="manage_commend" class="list_style">
<tr><td class="text_right" width="180">管理操作：</td><td><input type="radio" name="commend" value="1" checked="checked" />推荐资源&nbsp;<input type="radio" name="commend" value="0" />取消推荐</td></tr>
</table>
<table style="display:none;" id="manage_upgrade" class="list_style">
<tr><td class="text_right" width="180">管理操作：</td><td><input type="radio" name="upgrade" value="1" checked="checked" />提升资源&nbsp;<input type="radio" name="upgrade" value="0" />下沉资源<span class="form_clue">提升资源的种子数不少于<!--{$Config.upgrade_least_seeder}-->且两次提升间隔时间不小于<!--{$Config.upgrade_space_time}-->小时</span></td></tr>
</table>
<table style="display:none;" id="manage_heightlight" class="list_style">
<tr><td class="text_right" width="180">字体样式：</td><td>
<input type="checkbox" name="style[bold]" value="1" /><strong>粗体</strong>
<input type="checkbox" name="style[italic]" value="1" /><em>斜体</em>
<input type="checkbox" name="style[strike]" value="1" /><strike>删除线</strike>
</td></tr>
<tr><td class="text_right" width="180">字体颜色：</td><td>
<input type="radio" name="style[color]" value="" checked="checked" />默认
<input type="radio" name="style[color]" value="red" /><font color="red">红</font>
<input type="radio" name="style[color]" value="orange" /><font color="orange">橙</font>
<input type="radio" name="style[color]" value="yellow" /><font color="yellow">黄</font>
<input type="radio" name="style[color]" value="green" /><font color="green">绿</font>
<input type="radio" name="style[color]" value="blue"/><font color="blue">蓝</font>
<input type="radio" name="style[color]" value="cyan" /><font color="cyan">靛</font>
<input type="radio" name="style[color]" value="purple" /><font color="purple">紫</font>
<input type="radio" name="style[color]" value="gray" /><font color="gray">灰</font>
</td></tr>
</table>
</div>
<div class="tcat text_center" style="padding:2px;">
<input type="submit" value=" 提 交 " class="formButton" />
</div>
</div>

<script type="text/javascript">
var manage_option = new Array('commend', 'upgrade', 'heightlight');

function selectAll(flag)
{
    var fname = document.form1;
    for (var i = 0; i < fname.elements.length; i++)
    {
        if ('checkbox' == fname.elements[i].type && 'multi_election' == fname.elements[i].id)
        {
            fname.elements[i].checked = flag;
        }
    }
}
function againstSelect()
{
    var fname = document.form1;
    for (var i = 0; i < fname.elements.length; i++)
    {
        if ('checkbox' == fname.elements[i].type && 'multi_election' == fname.elements[i].id)
        {
            fname.elements[i].checked = !fname.elements[i].checked;
        }
    }
}

function executeOperate()
{
    var fname = document.form1;

    var s_type = fname.operate.value;

    if ('' == s_type)
    {
        $('manage_area').style.display = 'none';
        return false;
    }

    tag = false;
    var e_length = fname.elements.length;
    for (var i = 0; i < e_length; i++)
    {
        if ('checkbox' == fname.elements[i].type && fname.elements[i].checked)
        {
            tag = true;
            break;
        }
    }

    if (false === tag)
    {
        fname.operate.options[0].selected = true;
        $('manage_area').style.display = 'none';
        Window.alert('没有选择需要管理的数据！');
        return false;
    }

    if ('delete' == s_type)
    {
        $('manage_area').style.display = 'none';
        if (false == confirm('确定要执行删除操作吗？(不会再次确认)'))
        {
            fname.operate.options[0].selected = true;
            return false;
        }
        fname.submit();
    }
    else
    {
        $('manage_area').style.display = '';
        for (var i = 0; i < manage_option.length; i++)
        {
            if (manage_option[i] == s_type)
            {
                $('manage_'+ manage_option[i]).style.display = '';
            }
            else
            {
                $('manage_'+ manage_option[i]).style.display = 'none';
            }
        }
    }
}
</script>