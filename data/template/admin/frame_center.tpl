<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
body{background:#8CD6F0;}
</style>
<script type="text/javascript">
var showpic = new Array(
    'images/frame_hide.gif',
    'images/frame_hide2.gif',
    'images/frame_show.gif',
    'images/frame_show2.gif'
);
var left_right = 'show';
function ShowHide()
{
    window.top.document.getElementById('btmframe').cols = (left_right == 'show') ? '0,10,*' : '160,10,*';
    if (left_right == 'show')
    {
        document.getElementById('a1').innerHTML = '<img src="images/frame_show.gif" onmouseover="this.src=showpic[3]" onmouseout="this.src=showpic[2]" title="显示菜单" />';
        left_right = 'hide';
        document.getElementById('table').title = '显示菜单';
    }
    else
    {
        document.getElementById('a1').innerHTML = '<img src="images/frame_hide.gif" onmouseover="this.src=showpic[1]" onmouseout="this.src=showpic[0]" title="隐藏菜单" />';
        left_right = 'show';
        document.getElementById('table').title = '隐藏菜单';
    }
}
</script>
</head>

<body leftmargin="0" topmargin="0">

<table cellpadding="0" cellspacing="0" height="100%" border="0" id="table" title="隐藏菜单">
  <tr>
    <td onclick="ShowHide();" style="cursor:pointer;" id="a1"><img src="images/frame_hide.gif" onmouseover="this.src='images/frame_hide2.gif'" onmouseout="this.src='images/frame_hide.gif'" /></td>
  </tr>
</table>

</body>
</html>