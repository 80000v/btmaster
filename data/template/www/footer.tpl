</div><!--{* <div id="main"> *}-->

<!--{if $Ads.footer}-->
<div class="clear text_center" style="margin-bottom:10px;"><!--{$Ads.footer}--></div>
<!--{/if}-->

<!--{* 页脚信息 *}-->
<div class="footer">
    <div class="left">
        <p>Copyright &copy;2007-<!--{$smarty.const.TIME_NOW|date_format:"%Y"}-->&nbsp;<a href="http://www.btmaster.cn" target="_blank" class="copyright">BTMaster</a>. All rights reserved.</p>
        <p>Powered by <a href="http://www.btmaster.cn" title="专业的BT/Emule资源发布系统" class="dashed" target="_blank">BTMaster.cn</a> Version:<!--{$smarty.const.BTMASTER_VERSION}--></p>
    </div>
    <div class="right">
        <p><!--{foreach item=row from=$Navigation.footer}--><a href="<!--{$row.url}-->"<!--{if $row.blank}--> target="_blank"<!--{/if}--><!--{if $row.style}--> style="<!--{$row.style}-->"<!--{/if}-->><!--{$row.name}--></a> - <!--{/foreach}--><a href="javascript:void(0);" onclick="window.scroll(0,0);return false;">返回顶部</a><!--{if $Config.pagination_rss_num}--> <a type="application/rss+xml" href="rss.xml" target="_blank"><img src="images/icon_rss.gif" alt="RSS订阅" title="RSS订阅" align="absmiddle" /></a><!--{/if}--></p>
        <p><!--{if $Config.icp}--><a href="http://www.miibeian.gov.cn/" target="_blank"><!--{$Config.icp}--></a><!--{/if}--><!--{if $Config.site_statcode}--> <!--{$Config.site_statcode}--><!--{/if}--></p>
    </div>
</div>
<!--{* 页脚信息结束 *}-->

</div><!--{* <div id="btm"> *}-->
</body>
</html>