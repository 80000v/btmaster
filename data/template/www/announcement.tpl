<!--{include file="header.tpl"}-->

<div class="box clear">
    <h2 class="title">网站公告</h2>
    <div class="annlist">
        <!--{foreach item=row from=$AnnouncementData}-->
        <div class="info">
            <span class="left"><a name="<!--{$row.announcement_id}-->"></a><strong><!--{$row.announcement_title}--></strong></span>
            <span class="right">开始时间: <!--{$row.start_time|date_format:"%Y-%m-%d"}--> 结束时间: <!--{if $row.end_time}--><!--{$row.end_time|date_format:"%Y-%m-%d"}--><!--{else}-->不限<!--{/if}--></span>
        </div>
        <div class="content">
            <!--{if $row.announcement_url neq ""}-->
            <a href="<!--{$row.announcement_url}-->" target="_blank"><!--{$row.announcement_url}-->(点击查看)</a>
            <!--{else}-->
            <!--{$row.announcement_content}-->
            <!--{/if}-->
        </div>
        <!--{foreachelse}-->
        <div class="empty">还没有发布任何公告！</div>
        <!--{/foreach}-->
    </div>
</div>

<!--{include file="footer.tpl"}-->