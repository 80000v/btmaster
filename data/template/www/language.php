<?php
// Chinese Simplified
$lang = array();

// common
$lang['common']['p_error'] = '错误的参数';
$lang['common']['back'] = '返回上一页';
$lang['common']['no_vcode'] = '没有输入验证码！';
$lang['common']['vcode_error'] = '验证码输入错误，请重新输入！';
$lang['common']['ip_disabled'] = 'IP地址 %s1 被禁止访问！';
$lang['common']['notice'] = '提示信息';
$lang['common']['file_not_exist'] = '种子文件不存在！';
$lang['common']['data_not_exist'] = '不存在的数据！';
$lang['common']['succeed'] = '操作成功';
$lang['common']['word_banned'] = '包含非法字符，请修改后再提交！';

// ajax.php(comment)
$lang['comment']['close'] = '评论已关闭';
$lang['comment']['error_interval'] = '请不要连续发表评论';
$lang['comment']['error_content_empty'] = '评论内容不能为空';
$lang['comment']['error_content_length'] = '评论长度超过系统限制';
$lang['comment']['wait_audit'] = '评论发表成功，您的评论需要通过审核后才会显示';
$lang['comment']['quote'] = '网友%s1的原帖:';
$lang['comment']['error_smilie'] = '使用表情数量不能超过 %s1 个！';
// ajax.php(report)
$lang['report']['error_content_empty'] = '没有填写举报原因！';
$lang['report']['error_content_length'] = '举报原因长度不能超过1000字！';
$lang['report']['error_contact_length'] = '您的联系方式长度不能超过100字！';
$lang['report']['succeed'] = '举报信息已成功提交，感谢您的支持！';

// announcement.php
$lang['announcement']['page_title'] = '网站公告信息';

// index.php
$lang['index']['page_title_2'] = '推荐资源';
$lang['index']['page_title_3'] = '本日新增';
$lang['index']['page_title_4'] = '本周新增';
$lang['index']['page_title_5'] = '关键字"%s1"的搜索结果';

// search.php
$lang['search']['page_title'] = '高级搜索';
$lang['search']['error_keyword_empty'] = '没有指定搜索关键字！';
$lang['search']['error_keyword_length1'] = '搜索关键字长度不能少于 %s1 个字符！';
$lang['search']['error_keyword_length2'] = '搜索关键字长度不能超过20个字符！';
$lang['search']['error_hash'] = '不是一个合法的HASH值！';
$lang['search']['error_hash_not_exist'] = '搜索的HASH值"%s1"不存在！';
$lang['search']['error_user_not_exist'] = '搜索的用户"%s1"不存在！';
$lang['search']['error_no_pay'] = '免费版不支持联盟功能！';
$lang['search']['error_team_not_exist'] = '搜索的联盟"%s1"不存在！';
$lang['search']['error_space_time'] = '两次搜索间隔时间不能少于 %s1 秒，请稍后再试！';
$lang['search']['local'] = '本地';
$lang['search']['result_empty'] = '关键字"&nbsp;<span class="text_red">%s1</span>&nbsp;"的搜索结果为空，没有找到符合搜索条件的记录！';
$lang['search']['close'] = '站内搜索暂时关闭！';

// user.php
$lang['user']['page_title'] = '用户控制面板';

// show.php
$lang['show']['data_not_exist'] = '查看的资源不存在或已被删除！';
$lang['show']['parse_failure'] = '数据解析失败！';

// user/m_team/member.php
$lang['member']['page_title'] = '联盟成员';
$lang['member']['page_title_add'] = '添加联盟成员';
$lang['member']['page_title_edit'] = '编辑联盟成员';
$lang['member']['member_not_exist'] = '没有这个联盟成员！';
$lang['member']['member_exist'] = '该成员已是联盟正式成员！';
$lang['member']['kill_self'] = '不能踢出自己！';
$lang['member']['no_permission_kill'] = '您没有权限踢出该联盟成员！';
$lang['member']['kill_succeed'] = '该成员已被成功踢出联盟！';
$lang['member']['add_succeed'] = '联盟成员添加成功！';
$lang['member']['edit_self'] = '不能修改自己！';
$lang['member']['no_permission_edit'] = '您没有权限修改该联盟成员！';
$lang['member']['edit_succeed'] = '联盟成员修改成功！';

// user/m_team/team.php
$lang['team']['page_title_create'] = '创建联盟';
$lang['team']['page_title_edit'] = '编辑联盟';
$lang['team']['page_title_quit'] = '退出联盟';
$lang['team']['no_permission_edit'] = '您不是该联盟的创建者，没有编辑权限！';
$lang['team']['error_input_empty'] = '没有输入联盟名称！';
$lang['team']['error_input_length'] = '联盟名称长度请限制在4 - 24字符以内，请重新输入！';
$lang['team']['error_exist'] = '已存在相同名称的联盟！';
$lang['team']['edit_succeed'] = '联盟资料更新成功！';
$lang['team']['edit'] = '编辑';
$lang['team']['quit_team'] = '联盟退出成功！';
$lang['team']['create'] = '创建';
$lang['team']['create_close'] = '联盟创建功能已暂时关闭！';
$lang['team']['create_succeed'] = '恭喜，联盟创建成功';
$lang['team']['waiting_create_auditing'] = '，请等待管理员的审核';
$lang['team']['error_team_not_exist'] = '选择加入的联盟不存在！';
$lang['team']['join_disabled'] = '选择加入的联盟已禁止新成员的加入！';
$lang['team']['join_succeed'] = '恭喜，您已成功加入该联盟';
$lang['team']['waiting_join_auditing'] = '，请等待联盟管理员的审核';
$lang['team']['error_search_team_empty'] = '没有输入搜索的联盟名称';
$lang['team']['error_search_team_length'] = '搜索长度不能少于4个字符！';
$lang['team']['search_empty'] = '没有找到符合条件的记录！';
$lang['team']['search_result'] = '联盟搜索结果';
$lang['team']['search_team'] = '搜索加入的联盟';

// user/data.php
$lang['data']['no_select'] = '没有选择需要管理的资源';
$lang['data']['edit'] = '编辑';
$lang['data']['delete'] = '删除';
$lang['data']['upgrade'] = '提升/下沉';
$lang['data']['upgrade_close'] = '联盟资源提升功能暂时关闭';// 2.0 add
$lang['data']['upgrade_fail'] = '该联盟本日的提升次数已用完或选择的提升资源数量超过提升总数限制！';
$lang['data']['commend'] = '推荐/取消推荐';
$lang['data']['commend_close'] = '联盟资源推荐功能暂时关闭';
$lang['data']['heightlight'] = '高亮显示';
$lang['data']['heightlight_close'] = '联盟资源标题高亮功能暂时关闭';
$lang['data']['page_title'] = '管理发布资源';
$lang['data']['back_list'] = '回管理列表页面';
$lang['data']['edit_title'] = '编辑资源信息';
$lang['data']['view_data'] = '查看编辑后的信息';
$lang['data']['no_permission'] = '您不是资源所在联盟的创建者，没有管理权限！';

// user/login.php
$lang['login']['page_title'] = '登录发布系统';
$lang['login']['local'] = '本地用户';
$lang['login']['error_user_empty'] = '登录失败，用户名为空！';
$lang['login']['error_password_empty'] = '没有填写登录密码！';
$lang['login']['error_password'] = '登录失败，登录密码不正确！';
$lang['login']['error_no_auditing'] = '此账号还未通过管理员审核，暂时不能登录！';
$lang['login']['error_user_origin_unknown'] = '登录失败，用户来源不明！';
$lang['login']['login_pause'] = '暂停 %s1 的用户登录';
$lang['login']['error_user_not_exist'] = '登录失败，%s1 没有这个用户！';
$lang['login']['error'] = '登录验证失败，请稍后再试！';
$lang['login']['error_time'] = '注册时间未满 %s1 天不能发布，请谅解';
$lang['login']['add_pause'] = '暂停增加 %s1 新发布用户，请谅解！';

// user/profile.php
$lang['profile']['page_title'] = '修改登录密码';
$lang['profile']['error_password_empty1'] = '没有输入当前密码！';
$lang['profile']['error_password_empty2'] = '没有输入新密码！';
$lang['profile']['error_password_mismatch'] = '两次输入新密码不一致，请重新密码！';
$lang['profile']['error_password_length'] = '新密码长度不能少于 4 个字符！';
$lang['profile']['error_password_current'] = '当前密码错误！';
$lang['profile']['password_succeed'] = '恭喜，登录密码修改成功！';

// user/reg.php
$lang['reg']['page_title'] = '新用户注册';
$lang['reg']['close'] = '用户注册暂时关闭！';
$lang['reg']['error_username_empty'] = '登录用户名不能为空！';
$lang['reg']['error_username_forbid1'] = '用户名不能是全数字！';
$lang['reg']['error_username_forbid2'] = '登录用户名包含禁止注册的符号！';
$lang['reg']['error_username_length'] = '用户名长度请限制在 4 - 20 个字符以内！';
$lang['reg']['error_username_exist'] = '已存在相同的用户名！';
$lang['reg']['error_password_empty'] = '登录密码不能为空！';
$lang['reg']['error_password_length'] = '登录密码长度不能少于 4 个字符！';
$lang['reg']['error_password_mismatch'] = '两次输入的密码不匹配！';
$lang['reg']['succeed'] = '恭喜，您的用户名[&nbsp;%s1&nbsp;]注册成功！';
$lang['reg']['login'] = '现在登录发布系统';

// user/upload.php
// include/kernel/class_bupload.php
$lang['upload']['page_title']  = '发布资源';
$lang['upload']['preview'] = '资源介绍预览';
$lang['upload']['error_torrent_empty'] = '没有选择需要上传的BT种子文件！';
$lang['upload']['error_torrent_empty'] = '没有选择需要上传的BT种子文件！';
$lang['upload']['exist'] = '您要上传的种子已存在！';
$lang['upload']['succeed'] = '恭喜，资源发布成功！';
$lang['upload']['view_old'] = '查看原资源信息：';
$lang['upload']['view_new'] = '查看发布的资源';
$lang['upload']['continue_post'] = '继续发布种子';
$lang['upload']['error_torrent_format'] = '上传的Torrent文件格式不正确！';
$lang['upload']['error_no_setting_tracker'] = '网站管理员没有设置有效的本地Tracker地址，上传失败！';
$lang['upload']['error_no_local_forbid'] = '禁止上传非本地种子Torrent文件！';
$lang['upload']['error_torrent_size'] = '上传的种子文件超过规定大小！';
$lang['upload']['error_savedir'] = '保存目录创建失败';

// include/kernel/class_content_clean.php
$lang['content']['error_no_select_sort'] = '没有选择分类，请选择！';
$lang['content']['error_title_empty'] = '没有填写资源名称！';
$lang['content']['error_title_length1'] = '资源名称长度不能少于 %s1 字符！';
$lang['content']['error_title_length2'] = '资源名称长度不能超过 %s1 字符！';
$lang['content']['error_intro_empty'] = '没有填写资源介绍信息！';
$lang['content']['error_intro_length1'] = '资源介绍长度不能少于 20 字符！';
$lang['content']['error_intro_length2'] = '资源介绍长度不能超过 %s1 字符！';
$lang['content']['error_sort_not_exist'] = '选择的分类不存在，请重新选择！';
$lang['content']['error_emule_forbid'] = '不是一个有效的eMule资源格式，请检查后重新填写！';
$lang['content']['error_discuss_length'] = '讨论地址长度不能超过 200 字符，请重新填写！';
$lang['content']['error_nfo_format'] = '上传的不是一个NFO文件！';
$lang['content']['error_nfo_size'] = '上传的NFO文件超过限制大小！';

// include/kernel/class_permission.php
$lang['permission']['add'] = '发布';
$lang['permission']['edit'] = '编辑';
$lang['permission']['delete'] = '删除';
$lang['permission']['upgrade'] = '提升';
$lang['permission']['manage_user'] = '管理联盟用户';
$lang['permission']['no_permission'] = '没有%s1权限！';

// include/kernel/class_multipage.php
$lang['multipage']['page_info'] = '第(%s1/%s2)页';
$lang['multipage']['home'] = '首页';
$lang['multipage']['last'] = '末页';
$lang['multipage']['previous'] = '上一页';
$lang['multipage']['next'] = '下一页';
$lang['multipage']['jump'] = '转到第%s1页';
$lang['multipage']['jump_go'] = '确定';

// js.php
$lang['js_transfer']['site_stop'] = '网站暂时关闭';
$lang['js_transfer']['close'] = '调用关闭';
$lang['js_transfer']['error_not_allowed_domain'] = '非法调用';
?>