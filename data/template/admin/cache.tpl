<!--{include file="header.tpl"}-->

<div class="table clear">
    <div class="f_nav">
    <input type="button" value="加速缓存"<!--{if !$Action}-->disabled="disabled"<!--{else}--> onclick="window.location='cache.php'"<!--{/if}--> class="formButton" />
    <input type="button" value="系统缓存"<!--{if $Action eq "system"}-->disabled="disabled"<!--{else}--> onclick="window.location='cache.php?act=system'"<!--{/if}--> class="formButton" />
    </div>
</div>

<!--{if $Action eq "system"}-->
    <div class="table">
    <form name="form1" action="cache.php?act=system" method="post">
    <input type="hidden" name="op" value="update" />
    <table class="list_style" cellpadding="0" cellspacing="1" border="0">
      <tr><td colspan="10" class="theader">选择要重建的缓存数据</td></tr>
      <tr id="row_0" class="alt1">
        <td width="10"><input type="checkbox" id="mark_box_0" name="data_id[]" value="setting" /></td>
        <td width="100%">基本设置(cache_global.php)</td>
      </tr>
      <tr id="row_1" class="alt2">
        <td><input type="checkbox" id="mark_box_1" name="data_id[]" value="nav" /></td>
        <td>自定义导航(cache_global.php)</td>
      </tr>
      <tr id="row_2" class="alt1">
        <td><input type="checkbox" id="mark_box_2" name="data_id[]" value="sort" /></td>
        <td>资源分类(cache_global.php)</td>
      </tr>
      <tr id="row_3" class="alt2">
        <td><input type="checkbox" id="mark_box_3" name="data_id[]" value="ad" /></td>
        <td>广告(cache_ad.php)</td>
      </tr>
      <tr id="row_4" class="alt2">
        <td><input type="checkbox" id="mark_box_4" name="data_id[]" value="badword" /></td>
        <td>词语过滤(cache_badword.php)</td>
      </tr>
      <tr id="row_5" class="alt1">
        <td><input type="checkbox" id="mark_box_5" name="data_id[]" value="file_type" /></td>
        <td>文件类型(cache_file_type.php)</td>
      </tr>
      <tr id="row_6" class="alt2">
        <td><input type="checkbox" id="mark_box_6" name="data_id[]" value="friendly_link" /></td>
        <td>友情链接(cache_friendly_link.php)</td>
      </tr>
      <tr id="row_7" class="alt1">
        <td><input type="checkbox" id="mark_box_7" name="data_id[]" value="hot_keyword" /></td>
        <td>热门搜索关键字(cache_hot_keyword.php)</td>
      </tr>
      <tr id="row_8" class="alt2">
        <td><input type="checkbox" id="mark_box_8" name="data_id[]" value="login_node" /></td>
        <td>登录节点(cache_login_node.php)</td>
      </tr>
      <tr class="tfoot">
        <td colspan="2">
        <input type="button" value="全选" onclick='selectAll(true);' />
        <input type="button" value="全不选" onclick='selectAll(false);' />
        <input type="button" value="反选" onclick='againstSelect();' />
        <input type="submit" class="formButton" accesskey="s" id="submit" value=" 重建(S) " />
        <input type="reset" class="formButton" accesskey="r" value="重置(R)" />
        <input type="button" class="formButton" accesskey="n" value=" 返回(N) " onclick='javascript:history.back();' />
        </td>
      </tr>
    </table>
    </form>
    </div>
<!--{else}-->
    <div class="tip">
        <div>如非显示结果与实际数据有较大偏差，不建议大量的清除缓存数据。清除的初期，由于需要重建相关缓存数据，网站的访问速度相对会慢一些。</div>
        <div><u>注意：如果数据量过大，可能会出现超时错误。建议您通过登录服务器，直接清除目录下的文件(注意保留目录)</u></div>
    </div>

    <div id="tip" class="text_center text_red text_14" style="display:none;">
    <img src="images/loading.gif" align="absmiddle" />正在清除缓存数据，视缓存数据的大小，清除时间有所不同，请耐心等候
    </div>

    <div class="table">
    <form name="form1" method="post" onsubmit="checkFormData();">
    <input type="hidden" name="op" value="clear" />
    <table class="list_style" cellpadding="0" cellspacing="1" border="0">
      <tr><td colspan="10" class="theader">选择要清除的缓存数据</td></tr>
      <tr id="row_0" class="alt1">
        <td width="10"><input type="checkbox" id="mark_box_0" name="data_id[]" value="database" /></td>
        <td width="100%">数据库查询缓存<br /><span style="color:gray;"><!--{$CacheDir.database}--></span></td>
      </tr>
      <tr id="row_1" class="alt2">
        <td><input type="checkbox" id="mark_box_1" name="data_id[]" value="list" /></td>
        <td>列表缓存(数据列表页面缓存,如网站首页)<br /><span style="color:gray;"><!--{$CacheDir.list}--></span></td>
      </tr>
      <tr id="row_2" class="alt1">
        <td><input type="checkbox" id="mark_box_2" name="data_id[]" value="rss" /></td>
        <td>RSS源缓存(所有RSS缓存数据)<br /><span style="color:gray;"><!--{$CacheDir.rss}--></span>
        </td>
      </tr>
      <tr id="row_3" class="alt2">
        <td><input type="checkbox" id="mark_box_3" name="data_id[]" value="search" /></td>
        <td>搜索缓存(缓存结果页面缓存)<br /><span style="color:gray;"><!--{$CacheDir.search}--></span>
        </td>
      </tr>
      <tr id="row_4" class="alt1">
        <td><input type="checkbox" id="mark_box_4" name="data_id[]" value="show" /></td>
        <td>显示缓存(单个数据显示页面)<br /><span style="color:gray;"><!--{$CacheDir.show}--></span>
        </td>
      </tr>
      <tr id="row_5" class="alt2">
        <td><input type="checkbox" id="mark_box_5" name="data_id[]" value="js" /></td>
        <td>JS调用缓存<br /><span style="color:gray;"><!--{$CacheDir.js}--></span>
        </td>
      </tr>
      <tr id="row_6" class="alt1">
        <td><input type="checkbox" id="mark_box_6" name="data_id[]" value="tpl_www" /></td>
        <td>网站模板编译文件(系统编译后的模板文件)<br /><span style="color:gray;"><!--{$CacheDir.tpl_www}--></span>
        </td>
      </tr>
      <tr id="row_7" class="alt2">
        <td><input type="checkbox" id="mark_box_7" name="data_id[]" value="tpl_admin" /></td>
        <td>后台模板编译文件(系统编译后的模板文件)<br /><span style="color:gray;"><!--{$CacheDir.tpl_admin}--></span>
        </td>
      </tr>
      <tr class="tfoot">
        <td colspan="2">
        <input type="button" value="全选" onclick='selectAll(true);' />
        <input type="button" value="全不选" onclick='selectAll(false);' />
        <input type="button" value="反选" onclick='againstSelect();' />
        <input type="submit" class="formButton" accesskey="s" id="submit" value=" 清除(S) " />
        <input type="reset" class="formButton" accesskey="r" value="重置(R)" />
        <input type="button" class="formButton" accesskey="n" value=" 返回(N) " onclick='javascript:history.back();' />
        </td>
      </tr>
    </table>
    </form>
    </div>

    <script type="text/javascript">
    function checkFormData()
    {
        $('tip').style.display = 'block';
        $('submit').value = '正在处理请求';
        $('submit').disabled = true;
        return true;
    }
    </script>
<!--{/if}-->

<!--{include file="footer.tpl"}-->