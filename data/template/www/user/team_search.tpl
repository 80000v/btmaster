<!--{include file="header.tpl"}-->

<!--{include file="user/nav.tpl"}-->

<div class="m_container">
<div class="m_inner">

<!--{include file="user/left.tpl"}-->

<div class="box m_right">
    <h2 class="title" style="clear:right;"><!--{$multipage|default:"只有一页"}--></h2>
    <table class="list_style">
      <tr class="alt1">
    <!--{foreach item=row from=$TeamSearchResult key=key}-->
        <td class="text_left" width="25%"><!--{$row.team_name}-->[<a href="user.php?o=team&m=team&act=join&id=<!--{$row.team_id}-->">加入</a>]</td>
        <!--{if ($key+1)%4 eq 0}--></tr><tr class="alt1"><!--{/if}-->
    <!--{/foreach}-->
      </tr>
    </table>
    <h2 class="title" style="clear:right;"><!--{$multipage|default:"只有一页"}--></h2>
</div>

<div class="clear"></div>
</div><!--{* manage inner *}-->
</div><!--{* manage container *}-->

<!--{include file="footer.tpl"}-->