<!--{include file="header.tpl"}-->

<script type="text/javascript">
function openUrl(url)
{
    window.parent.frames.main.location = url;
    return false;
}
</script>

<body class="nav">

<div class="navlayout">
    <!--{counter start=0 skip=1 print=false assign=num}-->
    <!--{foreach key=key item=group from=$ManageMenu.nav}-->
    <div id="<!--{$key}-->" style="display:<!--{if $num neq 0}-->none;<!--{/if}-->">
        <!--{foreach key=bkey item=box from=$ManageMenu.box[$key]}-->
            <div class="navtitle"><!--{$ManageMenu.box[$key][$bkey]}--></div>
            <div class="navgroup">
            <!--{foreach item=row from=$ManageMenu.option[$key][$bkey]}-->
            <div class="navlink-normal" onmouseover="this.className='navlink-hover';" onmouseout="this.className='navlink-normal';" onclick="return openUrl('<!--{$row.url}-->');" style="cursor:pointer;"><!--{$row.name}--></div>
            <!--{/foreach}-->
            </div>
        <!--{/foreach}-->
    </div>
    <!--{counter}-->
    <!--{/foreach}-->
</div>

</div>

</body>
</html>