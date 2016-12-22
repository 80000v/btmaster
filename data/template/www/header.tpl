<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Language" content="zh-CN" />
<title><!--{$SiteTitle}--><!--{$Config.site_name}--> - Powered by BTMaster.cn</title>
<meta name="robots" content="all" />
<!--{if $Config.meet_keywords}--><meta name="keywords" content="<!--{$Config.meet_keywords}-->" /><!--{/if}-->
<!--{if $Config.meet_description}--><meta name="description" content="<!--{$Config.meet_description}-->" /><!--{/if}-->
<meta name="generator" content="BTMaster <!--{$smarty.const.BTMASTER_VERSION}-->" />
<meta name="author" content="BTMaster.cn" />
<!--{if $Config.pagination_rss_num}-->
<link rel="alternate" type="application/rss+xml" title="<!--{$Config.site_name}-->[RSS订阅]" href="rss.php" />
<!--{/if}-->
<link type="text/css" rel="stylesheet" href="css/btmaster.css?v20081216" />
<!--{if $smarty.const.IN_SCRIPT eq "user"}-->
<link type="text/css" rel="stylesheet" href="css/user.css?v20081216" />
<!--{/if}-->
<script type="text/javascript" src="javascripts/mt-core.js?v20081130"></script>
<script type="text/javascript" src="javascripts/btmaster.js?v20081130"></script>
<script type="text/javascript">
Config['url_rewrite'] = <!--{if $Config.use_url_rewrite}-->true<!--{else}-->false<!--{/if}-->;
</script>
</head>

<body>
<div id="btm" style="width:<!--{$Config.page_width|default:100}--><!--{$Config.page_width_unit|default:'%'}-->;">
<div class="header">
    <div class="top_nav">
        <p class="left"><!--{$Config.site_name}--></p>
        <p class="right"><!--{foreach item=row from=$Navigation.header}--><a href="<!--{$row.url}-->"<!--{if $row.blank}--> target="_blank"<!--{/if}--><!--{if $row.style}--> style="<!--{$row.style}-->"<!--{/if}-->><!--{$row.name}--></a> | <!--{/foreach}--><a href="search.php">资源搜索</a> | <a href="user.php?o=upload">发布资源</a> | <a href="javascript:void(0);" onclick="addFavorite('<!--{$Config.site_name|escape:'javascript'}-->', '<!--{$Config.site_path}-->');return false;">加入收藏</a></p>
    </div>
    <div class="func">
        <table><tr>
            <td class="t1"><a href="./"><img src="images/logo.gif" alt="<!--{$Config.site_name}-->" /></a></td>
            <td class="t2"></td>
            <td class="t3">
                <div class="topsearch"><input type="text" id="topsearch" onkeypress="doSearchEvent(event);" value="<!--{$Keyword|default:'请输入您要搜索的资源名称'}-->" onfocus="searchTip(0);" /><a href="javascript:void(0);" onclick="doSearch();return false;">搜索</a><a href="search.php">高级搜索</a><a href="user.php?o=upload">发布资源</a></div>
                <script type="text/javascript">var kcount=0, kheight=18, kst=0;</script>
                <div class="hotsearch">
                    <span class="left">热门搜索:</span>
                    <div id="searchkey">
                        <div id="searchkeybody">
                        <!--{if !$Config.search_close && $HotKeyword}-->
                        <!--{foreach item=keyword from=$HotKeyword}--><!--{$keyword}--><!--{/foreach}-->
                        <!--{/if}-->
                        </div>
                    </div>
                </div>
            </td>
        </tr></table>
    </div>
</div>

<div class="nav" id="smenu">
    <ul>
        <li><a href="./">首页</a></li>
        <!--{foreach item=sort_name from=$SortMenu.parent key=sort_id}-->
        <li><a<!--{if $SortMenu.child[$sort_id]}--> rel="menu<!--{$sort_id}-->"<!--{/if}--> href="index.php?sort_id=<!--{$sort_id}-->"><!--{$sort_name}--></a></li>
        <!--{/foreach}-->
    </ul>
</div>
<!--{foreach item=sort_name from=$SortMenu.parent key=sort_id}-->
<!--{if $SortMenu.child[$sort_id]}-->
<div class="menudiv" id="menu<!--{$sort_id}-->">
    <!--{foreach item=child_sort_name from=$SortMenu.child[$sort_id] key=child_sort_id}-->
    <a href="index.php?sort_id=<!--{$child_sort_id}-->"><!--{$child_sort_name}--></a>
    <!--{/foreach}-->
</div>
<!--{/if}-->
<!--{/foreach}-->
<script type="text/javascript">btmenu.init('smenu', 'auto');</script>

<!--{if $Ads.header}-->
<div class="clear text_center" style="margin-bottom:10px;"><!--{$Ads.header}--></div>
<!--{/if}-->

<!--{if $Location}-->
<div class="location">
    <a href="./">首页</a>
    <!--{foreach item=row from=$Location}-->
    &raquo;
    <!--{if $row.url}--><a href="<!--{$row.url}-->"><!--{$row.name}--></a><!--{else}--><!--{$row.name}--><!--{/if}-->
    <!--{/foreach}-->
</div>
<!--{/if}-->

<div class="main">
