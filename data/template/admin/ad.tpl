<!--{include file="header.tpl"}-->

<div class="table clear">
    <div class="f_nav">
    <input type="button" value="添加广告" onclick="window.location='ad.php?act=add'" class="formButton" />
    <input type="button" value="管理广告" onclick="window.location='ad.php'" class="formButton" />
    <input type="button" value="更新缓存" onclick="window.location='ad.php?act=build_cache'" class="formButton" />
    </div>
</div>

<div class="tip">
    <div>如果在同一位置有多个广告，系统将会随机挑选其中一个显示。</div>
</div>

<!--{if $Action}-->
    <script src="javascripts/calendar.js" type="text/javascript"></script>
    <div class="tip">
        <ul>
            <li>页头通栏、页脚通栏、主列表中部、资源介绍下方：均为通栏广告，尺寸不限制</li>
            <li>Tracker信息上方、Tracker信息下方：最佳宽度为250px(高度不限)，宽度超出250px部分将被隐藏</li>
            <li>资源介绍内：图文混排形式，可以是Flash、图片、文字等任意形式</li>
        </ul>
    </div>

    <div class="table">
    <form name="form1" method="post" onsubmit="return checkFormData();">
    <input type="hidden" name="op" value="<!--{$Action}-->" />
    <!--{if $Action eq "edit"}-->
    <input type="hidden" name="id" value="<!--{$Ad.ad_id}-->" />
    <input type="hidden" name="url" value="<!--{$smarty.const.HTTP_REFERER}-->" />
    <!--{/if}-->
    <table class="list_style" cellpadding="0" cellspacing="1" border="0">
      <tr><td colspan="2" class="theader"><!--{if $Action eq 'edit'}-->修改<!--{else}-->添加<!--{/if}-->广告</td></tr>
      <tr class="alt1">
        <td align="right">投放位置</td>
        <td><select name="ad_place">
        <!--{html_options options=$ad_place selected=$Ad.ad_place}-->
        </select></td>
      </tr>
      <tr class="alt2">
        <td align="right">广告标题</td>
        <td><input type="text" name="ad_title" class="formInput" value="<!--{$Ad.ad_title}-->" size="50" /></td>
      </tr>
      <tr class="alt1">
        <td align="right">广告开始时间</td>
        <td><input type="text" id="ad_begin_time" name="ad_begin_time" class="formInput" value="<!--{$Ad.ad_begin_time}-->" size="20" readonly="readonly" onclick="showCalendar(this, $('ad_begin_time'), 'yyyy-mm-dd');" /></td>
      </tr>
      <tr class="alt2">
        <td align="right">广告结束时间</td>
        <td><input type="text" id="ad_end_time" name="ad_end_time" class="formInput" value="<!--{$Ad.ad_end_time}-->" size="20" readonly="readonly" onclick="showCalendar(this, $('ad_end_time'), 'yyyy-mm-dd');" /><span class="form_clue">不选择不限制结束时间</span></td>
      </tr>
      <tr class="alt1">
        <td align="right" valign="top">广告HTML代码</td>
        <td><textarea class="formTextarea" name="ad_code" cols="80" rows="10"><!--{$Ad.ad_code|escape:"html"}--></textarea></td>
      </tr>
      <tr class="alt2">
        <td align="right"></td>
        <td><label><input type="checkbox" name="ad_stop" value="1" <!--{if $Ad.ad_stop}-->checked="checked"<!--{/if}--> />暂停显示</label></td>
      </tr>
      <tr>
        <td colspan="2" class="tfoot text_center">
        <input type="submit" class="formButton" accesskey="s" id="submit" value=" <!--{if $Action eq 'edit'}-->修改<!--{else}-->添加<!--{/if}-->(S) " />
        <input type="button" class="formButton" accesskey="p" value="预览(P)" onclick="executePreview();" />
        <input type="reset" class="formButton" accesskey="r" value="重置(R)" />
        <input type="button" class="formButton" accesskey="n" value=" 返回(N) " onclick='javascript:history.back();' />
        </td>
      </tr>
    </table>
    </form>
    <form name="preview" method="post" target="preview">
    <input type="hidden" name="op" value="preview" />
    <input type="hidden" name="preview_place" />
    <input type="hidden" name="preview_code" />
    </form>
    </div>

    <script type="text/javascript">
    function executePreview()
    {
        var ad_code = document.form1.ad_code.value;
        if ('' == ad_code)
        {
            alert('没有可预览广告内容！');
            return false;
        }

        document.preview.preview_place.value = document.form1.ad_place.value;
        document.preview.preview_code.value = ad_code;
        document.preview.submit();
    }
    </script>

<!--{else}-->

    <div class="table clear">
    <form name="form1" method="post">
    <table class="list_style" cellpadding="0" cellspacing="1" border="0">
      <tr>
        <td colspan="6" class="theader">管理广告</td>
      </tr>
      <tr class="tcat text_center">
        <td width="5%"></td>
        <td width="*" nowrap="nowrap">广告标题</td>
        <td width="20%" nowrap="nowrap">显示位置</td>
        <td width="15%" nowrap="nowrap">起始时间</td>
        <td width="15%" nowrap="nowrap">结束时间</td>
        <td width="10%" nowrap="nowrap">状态</td>
      </tr>
    <!--{if $AdData}-->
    <!--{foreach item=row from=$AdData key=key}-->
      <tr id="row_<!--{$key}-->" onclick="setPointer(this, <!--{$key}-->, 'click');" class="alt<!--{cycle values='1,2'}-->" height="18" align="center">
        <td><input id="mark_box_<!--{$key}-->" name="data_id[]" type="checkbox" value="<!--{$row.ad_id}-->" /></td>
        <td><a href="ad.php?act=edit&id=<!--{$row.ad_id}-->" title="点击编辑"><!--{$row.ad_title}--></a></td>
        <td><a href="ad.php?place=<!--{$row.ad_place}-->"><!--{$ad_place[$row.ad_place]}--></a></td>
        <td><!--{if $row.ad_begin_time}--><!--{$row.ad_begin_time|date_format:"%Y-%m-%d"}--><!--{else}-->不限<!--{/if}--></td>
        <td><!--{if $row.ad_end_time}--><!--{$row.ad_end_time|date_format:"%Y-%m-%d"}--><!--{else}-->不限<!--{/if}--></td>
        <td><!--{if $row.ad_end_time && $row.ad_end_time lt $smarty.const.TIME_NOW}-->已结束<!--{else}--><!--{if $row.ad_stop}-->暂停<!--{else}-->有效<!--{/if}--><!--{/if}--></td>
      </tr>
    <!--{/foreach}-->
      <tr>
        <td colspan="6" class="tcat text_left">
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
        <td colspan="6">无可显示广告！</td>
      </tr>
    <!--{/if}-->
    </table>
    </form>
    </div>

<!--{/if}-->

<!--{include file="footer.tpl"}-->