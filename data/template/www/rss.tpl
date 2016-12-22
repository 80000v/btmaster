<?xml version="1.0" encoding="utf-8" ?>
<rss version="2.0">
<channel>
<title><![CDATA[<!--{$Config.site_name}-->]]></title>
<link><!--{$Config.site_path}--></link>
<description><![CDATA[BT发布系统,BT下载]]></description>
<lastBuildDate><!--{$LastBuildDate}--></lastBuildDate>
<language>zh-cn</language>
<generator>BTM RSS Generator</generator>
<copyright>BTMaster.cn</copyright>

<!--{foreach item=row from=$BtData key=key}-->
<item>
    <title><![CDATA[<!--{$row.bt_data_title}-->]]></title>
    <link><!--{$Config.site_path}-->/show.php?hash=<!--{$row.hash_id}--></link>
    <description><![CDATA[<!--{$row.bt_data_intro}-->]]></description>
    <guid isPermaLink="true"><!--{$Config.site_path}-->/show.php?hash=<!--{$row.hash_id}--></guid>
    <author><![CDATA[<!--{$row.user_name}-->]]></author>
    <enclosure url="<!--{$Config.site_path}-->/down.php?date=<!--{$row.release_date}-->&amp;hash=<!--{$row.hash_id}-->" type="application/x-bittorrent" />
    <pubDate><!--{$row.release_date_rss}--></pubDate>
    <category domain="<!--{$Config.site_path}-->/index.php?sort_id=<!--{$row.sort_id}-->"><![CDATA[<!--{$row.sort_name}-->]]></category>
</item>
<!--{/foreach}-->

</channel>
</rss>