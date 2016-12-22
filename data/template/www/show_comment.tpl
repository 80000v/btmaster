<script type="text/javascript" src="javascripts/show.js?v20081114"></script>
<script type="text/javascript">
var data_id = <!--{$BtData.bt_data_id}-->;
var _c_c_page = 1;
var quote_id = 0;
Config['verify_code_comment'] = <!--{$Config.verify_code_comment|default:0}-->;
Config['comment_length'] = <!--{$Config.comment_length|default:1000}-->;
Config['comment_smilie_num'] = <!--{$Config.comment_smilie_num|default:0}-->;
</script>

<div class="box clear" id="commentarea">
    <a name="comment"></a>
    <h2 class="title">网友评论(<span id="comment_total2"><!--{$BtData.total_comment}--></span>)</h2>
    <div class="commentarea">
        <div id="c_m_page_top"></div>
        <div id="comment_list"><img src="images/loading.gif" align="absmiddle" /> 正在加载评论，请稍候......</div>
        <div id="c_m_page_bottom"></div>
        <script type="text/javascript">loadComment(1, true);</script>
        <div id="comment_post">
            <div class="title">发表我的看法<span class="text_normal">(评论内容长度最多允许 <!--{$Config.comment_length|default:1000}--> 字)</span></div>
            <table class="list_style">
              <tr class="alt1">
                <td valign="top" style="width:60px;">评论内容</td>
                <td>
                    <div id="quote_object"></div>
                    <div style="overflow:hidden;height:1%;">
                        <div class="left"><textarea class="formInput" style="width:410px;height:100px;" id="content" onfocus="displayVimg('comment');" tabindex="1"></textarea></div>
                        <!--{if $Config.comment_smilie_num}-->
                        <div class="right smilies">
                            <span onclick="insertSmilie(1);"><img src="images/smilies/1.gif" /></span>
                            <span onclick="insertSmilie(2);"><img src="images/smilies/2.gif" /></span>
                            <span onclick="insertSmilie(3);"><img src="images/smilies/3.gif" /></span>
                            <span onclick="insertSmilie(4);"><img src="images/smilies/4.gif" /></span>
                            <span onclick="insertSmilie(5);"><img src="images/smilies/5.gif" /></span>
                            <span onclick="insertSmilie(6);"><img src="images/smilies/6.gif" /></span>
                            <span onclick="insertSmilie(7);"><img src="images/smilies/7.gif" /></span>
                            <span onclick="insertSmilie(8);"><img src="images/smilies/8.gif" /></span>
                            <span onclick="insertSmilie(9);"><img src="images/smilies/9.gif" /></span>
                            <span onclick="insertSmilie(10);"><img src="images/smilies/10.gif" /></span>
                            <span onclick="insertSmilie(11);"><img src="images/smilies/11.gif" /></span>
                            <span onclick="insertSmilie(12);"><img src="images/smilies/12.gif" /></span>
                            <span onclick="insertSmilie(13);"><img src="images/smilies/13.gif" /></span>
                            <span onclick="insertSmilie(14);"><img src="images/smilies/14.gif" /></span>
                            <span onclick="insertSmilie(15);"><img src="images/smilies/15.gif" /></span>
                            <span onclick="insertSmilie(16);"><img src="images/smilies/16.gif" /></span>
                            <span onclick="insertSmilie(17);"><img src="images/smilies/17.gif" /></span>
                            <span onclick="insertSmilie(18);"><img src="images/smilies/18.gif" /></span>
                            <span onclick="insertSmilie(19);"><img src="images/smilies/19.gif" /></span>
                            <span onclick="insertSmilie(20);"><img src="images/smilies/20.gif" /></span>
                            <span onclick="insertSmilie(21);"><img src="images/smilies/21.gif" /></span>
                            <span onclick="insertSmilie(22);"><img src="images/smilies/22.gif" /></span>
                            <span onclick="insertSmilie(23);"><img src="images/smilies/23.gif" /></span>
                            <span onclick="insertSmilie(24);"><img src="images/smilies/24.gif" /></span>
                        </div>
                        <!--{/if}-->
                    </div>
                </td>
              </tr>
              <!--{if $Config.verify_code_comment}-->
              <tr class="alt2">
                <td>验证码</td>
                <td><input type="text" id="vcode" name="vcode" class="formInput" size="4" maxlength="4" onfocus="displayVimg('comment');"  tabindex="2" /><span id="imgarea" style="display:none;"><img id="vimg" align="absmiddle" alt="图片验证码" />(<a href="javascript:void(0);" onclick="imgRefresh('comment'); return false;">看不清,换一张</a>)&nbsp;&nbsp;</span></td>
              </tr>
              <!--{/if}-->
              <tr class="alt<!--{if $Config.verify_code_comment}-->1<!--{else}-->2<!--{/if}-->">
                <td>&nbsp;</td>
                <td><input type="button" id="submit" class="formButton" value="发表评论" onclick="return submitComment();" tabindex="100" />&nbsp;<span id="post_notice" class="text_green" style="display:none;">评论正在提交...</span></td>
              </tr>
            </table>
        </div>
    </div>
</div>

<script type="text/javascript">
if (1 == Config['verify_code_comment'])
{
    $('vcode').addEvent('keydown', function(event)
    {
        (event.key == 'enter') && (submitComment());
    });
}
</script>