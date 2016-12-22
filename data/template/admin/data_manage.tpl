<div style="padding:0;margin-left:4px;">
<input type="button" value="全选" onclick='selectAll(true);' />
<input type="button" value="全不选" onclick='selectAll(false);' />
<input type="button" value="反选" onclick='againstSelect();' />
<select name="operate" onchange="executeOperate();">
<option value="">批量管理选项</option>
<option value="top">置顶/撤销置顶</option>
<option value="upgrade">提升/下沉</option>
<option value="commend">推荐/取消推荐</option>
<option value="heightlight">高亮显示</option>
<option value="delete">删除</option>
</select>
</div>
<div style="display:none;" id="manage_area" class="text_left">
<table style="display:none;" id="manage_top" class="tborder" cellSpacing="1" cellPadding="4" style="width:100%">
<tr class="alt1"><td class="text_right" width="180">管理操作</td><td><input type="radio" name="top" value="1" checked="checked" />置顶资源&nbsp;<input type="radio" name="top" value="0" />取消置顶</td></tr>
</table>
<table style="display:none;" id="manage_commend" class="tborder" cellSpacing="1" cellPadding="4" style="width:100%">
<tr class="alt1"><td class="text_right" width="180">管理操作</td><td><input type="radio" name="commend" value="1" checked="checked" />推荐资源&nbsp;<input type="radio" name="commend" value="0" />取消推荐</td></tr>
</table>
<table style="display:none;" id="manage_upgrade" class="tborder" cellSpacing="1" cellPadding="4" style="width:100%">
<tr class="alt1"><td class="text_right" width="180">管理操作</td><td><input type="radio" name="upgrade" value="1" checked="checked" />提升资源&nbsp;<input type="radio" name="upgrade" value="0" />下沉资源&nbsp;<span class="form_clue">提升的资源种子数必须大于零</span></td></tr>
</table>
<table style="display:none;" id="manage_heightlight" class="tborder" cellSpacing="1" cellPadding="4" style="width:100%">
<tr class="alt1"><td class="text_right" width="180">字体样式：</td><td>
<input type="checkbox" name="style[bold]" value="1" /><strong>粗体</strong>
<input type="checkbox" name="style[italic]" value="1" /><em>斜体</em>
<input type="checkbox" name="style[strike]" value="1" /><strike>删除线</strike>
</td></tr>
<tr class="alt2"><td class="text_right" width="180">字体颜色</td><td>
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
<div class="thead text_center" style="padding:2px;">
<input type="submit" value=" 提 交 " class="formButton" />
</div>
</div>

<script type="text/javascript">
var manage_option = new Array('top', 'commend', 'upgrade', 'heightlight');
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
        alert('没有选择需要管理的数据！');
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