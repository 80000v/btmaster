<!--{include file="header.tpl"}-->

<div class="box">
    <h2 class="title">
        <span class="left">高级搜索</span>
        <span class="right tabs">
        <!--{if !$Config.search_close}--><a id="b_content" href="#content" onclick="switchBound('content');">资源信息</a><!--{/if}-->
        <a id="b_hash" href="#hash" onclick="switchBound('hash');">HASH</a>
        <a id="b_team" href="#team" onclick="switchBound('team');" class="active">联盟</a>
        <a id="b_user" href="#user" onclick="switchBound('user');">用户</a>
        <a id="b_external" href="#external" onclick="switchBound('external');">站外</a>
        </span>
    </h2>

    <div class="search clear">
        <form id="search" name="search" method="get" onsubmit="return submitFormData();">
        <input type="hidden" id="bound" name="bound" value="content" />

        <div class="search_area">
            <div><input type="text" class="formInput" id="keyword" name="keyword" size="50" maxlength="40" style="padding:6px;margin-top:-1px;" onkeyup="syncDisplay();" /></div>
        </div>

        <div class="text_center">
            <div id="search_content">
                <!--{if !$Config.search_close}-->
                <p>在&nbsp;<select id="sort_id" name="sort_id">
                <option value="0">所有</option>
                <!--{$SortOption}-->
                </select>&nbsp;分类下的&nbsp;<select name="local">
                <option value="-1">所有</option>
                <option value="1">本地种子</option>
                <option value="0">非本地种子</option>
                </select>&nbsp;资源中</p>
                <p>搜索&nbsp;<select name="field">
                <option value="title">名称</option>
                <!--{if $Config.search_full_text}--><option value="tandc">名称和简介</option><!--{/if}-->
                </select>&nbsp;包含&nbsp;<strong><u><span id="sync_keyword">您所输入的关键字</span></u></strong>&nbsp;的资源</p>
                <!--{/if}-->
            </div>

            <div id="search_user" style="display:none;">
                <p>在来自&nbsp;<select name="node_id">
                    <option value="0">本地</option>
                    <!--{html_options options=$NodeSelect}-->
                </select>&nbsp;的用户中搜索</p>
            </div>

            <div id="search_external" style="display:none;">
                <p>通过&nbsp;<label><input type="radio" name="external" value="google" checked="checked" />GOOGLE.CN</label>&nbsp;<label><input type="radio" name="external" value="yahoo" />YAHOO.CN</label>&nbsp;<label><input type="radio" name="external" value="baidu" />BAIDU.COM</label>&nbsp;搜索本站</p>
            </div>

            <p><input type="submit" id="submit" class="formButton" value="搜索资源" /></p>
        </div>

        </form>
    </div>
</div>

<script type="text/javascript" src="javascripts/search.js?v20080616"></script>
<script type="text/javascript">
Config['search_keyword_least'] = <!--{$Config.search_keyword_least|default:4}-->;
<!--{if $Config.search_close}-->
switchBound('external');
<!--{/if}-->
</script>

<!--{include file="footer.tpl"}-->