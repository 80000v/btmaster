<!--{include file="header.tpl"}-->

<div class="table clear">
    <div class="f_nav">
    <input type="button" value="管理" onclick="window.location='badword.php'" class="formButton" />
    <input type="button" value="批量添加" onclick="window.location='badword.php?act=batch'" class="formButton" />
    <input type="button" value="更新缓存" onclick="window.location='badword.php?act=build_cache'" class="formButton" />
    </div>
</div>

<!--{if $Action eq "batch"}-->

<div class="tip">
    <ul style="">
        <li>每行一组过滤词语，不良词语和替换词语之间使用“=”进行分割；</li>
        <li>如果只是想将某个词语直接替换成 **，则只输入词语即可；</li>
        <li>示例：<br />keyword<br />badword=good<br />sexword={BANNED}</li>
    </ul>
</div>
<div class="table clear">
<form name="form1" method="post">
<input type="hidden" name="op" value="batch" />
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr>
    <td class="theader" colspan="10">批量添加过滤词语</td>
  </tr>
  <tr class="alt1">
    <td><textarea class="formInput" name="wordnames" style="width:380px;height:120px;"></textarea></td>
  </tr>
  <tr class="alt2">
    <td>
        <label><input type="radio" name="option" value="1" checked="checked" />不导入已存在的过滤词语</label><br />
        <label><input type="radio" name="option" value="2" />替换已存在的过滤词语</label><br />
        <label><input type="radio" name="option" value="3" />清空当前所有过滤词语再导入新的</label><br />
    </td>
  </tr>
  <tr>
    <td colspan="2" class="tfoot text_center">
    <input type="submit" class="formButton" accesskey="s" id="submit" value=" 添加(S) " />
    <input type="reset" class="formButton" accesskey="r" value="重置(R)" />
    </td>
  </tr>
</table>
</form>
</div>

<!--{else}-->

<div class="tip">
    <ul style="">
        <li>替换前的词语可以使用限定符 {x} ，以限定相邻两字符间可忽略的文字，x 是忽略字符的个数。如 "a{1}b{2}c"(不含引号) 可以过滤 "abc" 也可过滤 "axbxc" 和 "axbxxc" 等等；</li>
        <li>如果要禁止发布包含某个词语的文字，而不是替换过滤，请将其对应的替换内容设置为{BANNED}即可；</li>
        <li>为了不影响程序运行效率，请不要设置过多不必要的过滤词语。</li>
        <li>词语过滤也将作用于Torrent所包含的文件信息。</li>
    </ul>
</div>
<div class="table clear">
<form name="form1" method="post">
<input type="hidden" name="op" value="change" />
<table class="list_style" cellpadding="0" cellspacing="1" border="0">
  <tr>
    <td class="theader" colspan="10">词语过滤</td>
  </tr>
  <tr class="tcat">
    <td width="5%" align="center">删除</td>
    <td width="*">过滤的不良词语 -&gt; 替换或屏蔽</td>
  </tr>
<!--{foreach item=row from=$Badword key=key}-->
  <tr id="row_<!--{$key}-->" class="alt<!--{cycle values='1,2'}-->" align="center">
    <td nowrap="nowrap"><input type="checkbox" id="mark_box_<!--{$key}-->" name="data_id[]" value="<!--{$row.word_id}-->" /></td>
    <td nowrap="nowrap" align="left"><input type="text" class="formInput" size="30" maxlength="100" name="word_name[<!--{$row.word_id}-->]" value="<!--{$row.word_name}-->" /><input type="text" class="formInput" size="30" maxlength="100" name="word_replace[<!--{$row.word_id}-->]" value="<!--{$row.word_replace}-->" /></td>
  </tr>
<!--{/foreach}-->
  <tr id="row_<!--{$key}-->" class="alt<!--{cycle values='1,2'}-->" height="18" align="center">
    <td nowrap="nowrap">添加</td>
    <td nowrap="nowrap" align="left"><input type="text" class="formInput" size="30" maxlength="100" name="new_word_name" /><input type="text" class="formInput" size="30" maxlength="100" name="new_word_replace" /></td>
  </tr>
  <tr>
    <td colspan="5" class="tcat text_left">
    <div class="left">
    <!--{if $Badword}-->
    <input type="button" value="全选" onclick='selectAll(true);' />
    <input type="button" value="全不选" onclick='selectAll(false);' />
    <input type="button" value="反选" onclick='againstSelect();' />&nbsp;&nbsp;
    <!--{/if}--><input type="submit" value=" 提交 " class="formButton" />
    </div>
    <div class="right" style="padding-top:4px;"><!--{$multipage|default:"只有一页"}--></div>
    </td>
  </tr>
</table>
</form>
</div>

<!--{/if}-->

<!--{include file="footer.tpl"}-->