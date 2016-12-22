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
$lang['common']['continue'] = '继续';
$lang['common']['no_pay'] = '很抱歉，免费版本不能使用此功能!';
$lang['common']['cache_error'] = '缓存数据更新失败，请重试！';
$lang['common']['data_not_exist'] = '不存在的数据！';
$lang['common']['succeed'] = '操作成功';
$lang['common']['no_permission'] = '您没有此项操作权限!';
$lang['common']['error_no_select'] = '没有选择需要管理的数据！';
$lang['common']['word_banned'] = '包含非法字符，请修改后再提交！';

// global.php
$lang['global']['page_title'] = '管理中心';
$lang['global']['error_install'] = '请删除安装目录 install ';

// include/kernel/class_multipage.php
$lang['multipage']['page_info'] = '第(%s1/%s2)页';
$lang['multipage']['home'] = '首页';
$lang['multipage']['last'] = '末页';
$lang['multipage']['previous'] = '上一页';
$lang['multipage']['next'] = '下一页';
$lang['multipage']['jump'] = '转到第%s1页';
$lang['multipage']['jump_go'] = '确定';

// ad.php
$lang['ad']['header'] = '页头通栏';
$lang['ad']['footer'] = '页脚通栏';
$lang['ad']['list_middle'] = '主列表中部';
$lang['ad']['tracker_top'] = 'Tracker信息上方';
$lang['ad']['tracker_below'] = 'Tracker信息下方';
$lang['ad']['intro_inner'] = '资源介绍内';
$lang['ad']['intro_below']  = '资源介绍下方';
$lang['ad']['error_end_time'] = '广告结束时间设置错误，请返回修改后再提交！';
$lang['ad']['error_title_empty'] = '广告标题不能为空，请返回修改后再提交！';
$lang['ad']['error_title_length'] = '广告标题长度不能超过 100 字，请返回修改后再提交！';
$lang['ad']['error_code_empty'] = '广告HTML代码不能为空，请返回修改后再提交！';
$lang['ad']['add_log'] = '添加广告(%s1): %s2';
$lang['ad']['add_succeed'] = '广告添加成功！';
$lang['ad']['edit_log'] = '修改广告(%s1): %s2';
$lang['ad']['edit_succeed'] = '广告修改成功！';
$lang['ad']['delete_log'] = '删除广告: %s1';

// announcement.php
$lang['announcement']['edit'] = '编辑公告:';
$lang['announcement']['edit_succeed'] = '公告编辑成功！';
$lang['announcement']['not_exist'] = '没有这个公告！';
$lang['announcement']['post'] = '发布公告:';
$lang['announcement']['post_succeed'] = '公告发布成功！';
$lang['announcement']['error_no_select_del'] = '没有需要删除的公告！';
$lang['announcement']['delete'] = '删除公告:';
$lang['announcement']['delete_succeed'] = '选择的公告已成功删除！';
$lang['announcement']['error_title_empty'] = '没有填写公告标题！';
$lang['announcement']['error_title_length'] = '公告标题长度不能超过100字符！';
$lang['announcement']['error_url_length'] = '链接地址长度不能超过150字符！';
$lang['announcement']['error_content_empty'] = '没有填写公告内容！';
$lang['announcement']['error_content_length'] = '公告内容长度不能超过5000字符！';

// badword.php
$lang['badword']['error_exist'] = '错误: 存在重复的过滤词语 <strong>%s1</strong>';
$lang['badword']['error_word_empty'] = '过滤词语太短，请返回修改！';
$lang['badword']['succeed'] = '过滤词语更新成功！';
$lang['badword']['log_change'] = '更新词语过滤';

// cache.php
$lang['cache']['error_no_select'] = '没有选择需要清除的缓存数据！';
$lang['cache']['clear'] = '清除缓存';
$lang['cache']['clear_succeed'] = '相关缓存数据清除成功！';
$lang['cache']['update_succeed'] = '系统缓存重建成功！';

// comment.php
$lang['comment']['audit_succeed'] = '评论审核成功！';
$lang['comment']['unaudit_succeed'] = '评论取消审核成功！';
$lang['comment']['delete_succeed'] = '评论删除成功！';

// data.php
$lang['data']['no_select'] = '没有选择需要管理的资源';
$lang['data']['delete'] = '删除';
$lang['data']['upgrade'] = '提升/下沉';
$lang['data']['commend'] = '推荐/取消推荐';
$lang['data']['heightlight'] = '高亮显示';
$lang['data']['team_not_exist'] = '没有这个联盟！';
$lang['data']['log_edit'] = '编辑资源信息ID:';
$lang['data']['log_delete'] = '删除资源';
$lang['data']['log_heightlight'] = '高亮资源标题';
$lang['data']['log_top_1'] = '置顶资源';
$lang['data']['log_top_0'] = '撤销置顶资源';
$lang['data']['log_commend_1'] = '推荐资源';
$lang['data']['log_commend_0'] = '撤销推荐资源';
$lang['data']['log_upgrade_1'] = '提升资源';
$lang['data']['log_upgrade_0'] = '下沉资源';

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

// database.php
$lang['database']['log_optimize'] = '优化数据库';
$lang['database']['log_repair'] = '修复数据库';
$lang['database']['log_check'] = '检查数据库';
$lang['database']['log_analyze'] = '分析数据库';
$lang['database']['log_query'] = '查询:%s1';
$lang['database']['log_delete'] = '删除数据库备份文件:';
$lang['database']['delete_succeed'] = '选择的数据库备份文件删除成功！';
$lang['database']['query_succeed'] = '您的 SQL 语句已经成功运行！';
$lang['database']['log_import'] = '恢复数据库:%s1';
$lang['database']['log_backup'] = '备份数据库:%s1';
$lang['database']['error_no_select'] = '没有选择要备份的数据库表！';
$lang['database']['backup_waiting'] = '正在备份数据，视数据库大小，备份耗时有所不同。<br />请耐心等候，不要中断！';
$lang['database']['backup_succeed'] = '数据库备份成功！';
$lang['database']['error_not_exist'] = '备份文件不存在！';
$lang['database']['import_waiting'] = '正在导入数据，视备份文件大小，导入耗时有所不同。<br />请耐心等候，不要中断！';
$lang['database']['import_succeed'] = '数据库恢复成功！';
$lang['database']['tools_no_select'] = '没有要操作的数据库表！';
$lang['database']['delete_no_select'] = '没有要删除的备份文件！';

// flink.php
$lang['flink']['log_edit'] = '编辑友情链接:';
$lang['flink']['edit_succeed'] = '友情链接编辑成功！';
$lang['flink']['error_not_exist'] = '没有这个友情链接！';
$lang['flink']['log_add'] = '添加友情链接:';
$lang['flink']['add_succeed'] = '友情链接添加成功！';
$lang['flink']['error_no_select'] = '没有需要删除的友情链接！';
$lang['flink']['log_delete'] = '删除友情链接:';
$lang['flink']['delete_succeed'] = '选择的友情链接已成功删除！';
$lang['flink']['error_name_empty'] = '没有填写站点名称！';
$lang['flink']['error_name_length'] = '站点名称长度不能超过100个字符！';
$lang['flink']['error_intro_length'] = '说明文字长度不能超过100个字符！';
$lang['flink']['error_url_empty'] = '链接地址不能为空！';
$lang['flink']['error_url_length'] = '链接地址长度不能超过150个字符！';
$lang['flink']['error_logo_length'] = '站点LOGO长度不能超过150个字符！';

// file_type.php
$lang['file_type']['error_intro_empty'] = '描述信息不能为空！';
$lang['file_type']['error_intro_length'] = '描述信息长度不能长过50字符！';
$lang['file_type']['error_exist'] = '已存在相同信息的文件类型！';
$lang['file_type']['error_image'] = '不是一个正确的图标文件名！';
$lang['file_type']['error_ext'] = '扩展名只能由英文数字组成！';
$lang['file_type']['error_not_exist'] = '文件类型不存在！';
$lang['file_type']['log_add'] = '添加文件类型:';
$lang['file_type']['log_edit'] = '编辑文件类型:';
$lang['file_type']['log_delete'] = '删除文件类型:';

$lang['login']['page_title'] = '登录系统';
$lang['login']['illegal'] = '非法登录!';
$lang['login']['log_illegal'] = '使用用户名: %s1，密码: %s2，非法登录';
$lang['login']['forbid'] = '此账号已被禁止登录!';
$lang['login']['error_username_empty'] = '没有输入用户名！';
$lang['login']['error_password_empty'] = '没有输入登录密码！';
$lang['login']['log_login'] = '登录管理后台';
$lang['login']['log_logout'] = '退出管理后台';


// index.php
$lang['index']['upload_forbid'] = '禁止文件上传';
$lang['index']['second'] = '秒';

$lang['menu']['nav_basic'] = '全局设置';
$lang['menu']['nav_resource'] = '资源管理';
$lang['menu']['nav_team'] = '联盟管理';
$lang['menu']['nav_user'] = '用户管理';
$lang['menu']['nav_sys'] = '系统管理';
$lang['menu']['nav_other'] = '扩展功能';

$lang['menu']['box_basic_0'] = '参数设置';
$lang['menu']['option_basic_1'] = '站点信息';
$lang['menu']['option_basic_2'] = '性能优化';
$lang['menu']['option_basic_3'] = '发布&amp;下载';
$lang['menu']['option_basic_4'] = '用户&amp;联盟';
$lang['menu']['option_basic_5'] = '搜索相关';
$lang['menu']['option_basic_6'] = '网站显示效果';
$lang['menu']['option_basic_7'] = '其他设置';
$lang['menu']['option_basic_8'] = 'XBT参数设置';
$lang['menu']['option_basic_9'] = '评论设置';

$lang['menu']['box_resource_0'] = '资源管理';
$lang['menu']['box_resource_1'] = '评论管理';
$lang['menu']['box_resource_2'] = '资源分类';
$lang['menu']['option_resource_1'] = '资源列表';
$lang['menu']['option_resource_2'] = '搜索资源';
$lang['menu']['option_resource_3'] = '资源合并';
$lang['menu']['option_resource_4'] = '添加分类';
$lang['menu']['option_resource_5'] = '分类管理';
$lang['menu']['option_resource_6'] = '评论管理';

$lang['menu']['box_team_0'] = '联盟管理';
$lang['menu']['option_team_1'] = '添加联盟';
$lang['menu']['option_team_2'] = '联盟列表';
$lang['menu']['option_team_3'] = '搜索联盟';
$lang['menu']['option_team_4'] = '联盟排序';

$lang['menu']['box_user_0'] = '用户管理';
$lang['menu']['option_user_1'] = '添加用户';
$lang['menu']['option_user_2'] = '用户列表';
$lang['menu']['option_user_3'] = '搜索用户';
$lang['menu']['box_user_1'] = '登录节点';
$lang['menu']['option_user_4'] = '管理节点';

$lang['menu']['box_sys_0'] = '系统管理';
$lang['menu']['option_sys_1'] = '词语过滤';
$lang['menu']['option_sys_2'] = '数据库维护';
$lang['menu']['option_sys_3'] = '系统管理员';
$lang['menu']['option_sys_4'] = '后台管理日志';
$lang['menu']['option_sys_5'] = '全局缓存维护';

$lang['menu']['box_other_0'] = '扩展功能';
$lang['menu']['option_other_1'] = '公告管理';
$lang['menu']['option_other_2'] = '广告管理';
$lang['menu']['option_other_3'] = '友情链接';
$lang['menu']['option_other_4'] = '举报信息';
$lang['menu']['option_other_5'] = '文件类型管理';
$lang['menu']['option_other_6'] = '热门搜索关键字';
$lang['menu']['option_other_7'] = '导航管理';

// manager.php
$lang['manager']['log_no_select'] = '没有需要删除的管理日志!';
$lang['manager']['log_delete'] = '删除管理日志共 %s1 条';
$lang['manager']['delete_succeed'] = '管理日志清除成功！';
$lang['manager']['clear_7day'] = '清除七天前的所有管理日志';
$lang['manager']['log_add_manager'] = '添加管理员:';
$lang['manager']['add_manager_succeed'] = '添加成功！';
$lang['manager']['add_manager_fail'] = '添加失败，请稍后再试！';
$lang['manager']['cannot_edit_self'] = '不能编辑自己!';
$lang['manager']['log_edit_manager'] = '编辑管理员:';
$lang['manager']['edit_manager_succeed'] = '编辑成功！';
$lang['manager']['not_exist_manager'] = '没有这个管理员!';
$lang['manager']['cannot_delete_self'] = '不能删除自己!';
$lang['manager']['log_delete_manager'] = '删除管理员:';
$lang['manager']['delete_manager_succeed'] = '删除成功！';
$lang['manager']['error_username_empty'] = '用户名不能为空!';
$lang['manager']['error_username_length'] = '用户名长度请限制在4-20个字符之间，且只能由英文、数字和下划线组成!';
$lang['manager']['error_username_exist'] = '已存在相同用户名的管理员!';
$lang['manager']['error_password_empty'] = '登录密码不能为空!';
$lang['manager']['error_password_length'] = '登录密码长度不能少于4个字符!';

// merger.php
$lang['merger']['error_self'] = '不能合并自己！';
$lang['merger']['error_nso_sort'] = '没有选择源分类！';
$lang['merger']['error_nsa_sort'] = '没有选择目标分类！';
$lang['merger']['error_neo_sort'] = '不存在的源分类！';
$lang['merger']['error_nea_sort'] = '不存在的目标分类！';
$lang['merger']['log_sort'] = '将分类%s1合并到分类%s2';
$lang['merger']['error_nso_team'] = '没有指定源联盟！';
$lang['merger']['error_nsa_team'] = '没有指定目标联盟！';
$lang['merger']['error_neo_team'] = '不存在的源联盟！';
$lang['merger']['error_nea_team'] = '不存在的目标联盟！';
$lang['merger']['log_team'] = '将联盟%s1合并到联盟%s2';
$lang['merger']['error_nso_user'] = '没有指定源用户！';
$lang['merger']['error_nsa_user'] = '没有指定目标用户！';
$lang['merger']['error_neo_user'] = '不存在的源用户！';
$lang['merger']['error_nea_user'] = '不存在的目标用户！';
$lang['merger']['log_user'] = '将用户%s1合并到用户%s2';
$lang['merger']['succeed'] = '合并成功！';

// misc.php
$lang['misc']['error_password_old_empty'] = '没有输入当前使用密码！';
$lang['misc']['error_password_new_empty'] = '没有输入新密码！';
$lang['misc']['error_password_length'] = '新密码长度不得少于6个字符！';
$lang['misc']['error_password_mismatch'] = '两次输入的新密码不一致！';
$lang['misc']['error_password_current'] = '当前使用密码不正确！';
$lang['misc']['log_password'] = '修改登录密码';
$lang['misc']['password_succeed'] = '恭喜，登录密码修改成功！';
$lang['misc']['license_update'] = '授权更新成功！';

// navigation.php
$lang['navigation']['error_not_exist'] = '不存在的自定义导航！';
$lang['navigation']['error_exist'] = '已存在相同的导航名称！';
$lang['navigation']['error_name_empty'] = '导航名称不能为空！';
$lang['navigation']['error_name_length'] = '导航名称长度不能超过 20 字符！';
$lang['navigation']['error_url_empty'] = '导航链接不能为空！';
$lang['navigation']['error_url_length'] = '导航链接长度不能超过 255 字符！';
$lang['navigation']['succeed_add'] = '导航添加成功！';;
$lang['navigation']['succeed_edit'] = '导航编辑成功！';;
$lang['navigation']['error_order'] = '没有需要排序的导航！';
$lang['navigation']['log_add'] = '添加导航(ID:%s1)%s2';
$lang['navigation']['log_edit'] = '编辑导航(ID:%s1)%s2';
$lang['navigation']['log_delete'] = '删除导航(ID:%s1)%s2';

// login_node.php
$lang['node']['pay'] = '购买更多登录节点';
$lang['node']['log_add'] = '添加登录节点:';
$lang['node']['add_succeed'] = '登录节点添加成功！';
$lang['node']['log_edit'] = '编辑登录节点:';
$lang['node']['edit_succeed'] = '登录节点编辑成功！';
$lang['node']['not_exist']  = '没有这个节点！';
$lang['node']['pause'] = '暂停登录节点:';
$lang['node']['unpause'] = '恢复登录节点:';
$lang['node']['log_delete'] = '删除登录节点:';
$lang['node']['delete_succeed'] = '登录节点删除成功！';
$lang['node']['error_name_empty'] = '节点名称不能为空！';
$lang['node']['error_name_length'] = '节点名称长度不能超过20个字符！';
$lang['node']['error_sitename_empty'] = '站点地址不能为空！';
$lang['node']['error_sitename_length'] = '站点地址长度不能超过150个字符！';
$lang['node']['error_login_url_empty'] = '登录验证地址不能为空！';
$lang['node']['error_login_url_length'] = '登录验证地址长度不能超过150个字符！';
$lang['node']['error_password_length'] = '验证密码长度不能超过30个字符！';
$lang['node']['error_encoding'] = '字符编码设置不正确！';
$lang['node']['exist'] = '已存在相同的登录节点！';

// report.php
$lang['report']['no_select'] = '没有需要删除的举报信息!';
$lang['report']['log_delete'] = '删除举报信息共 %s1 条';
$lang['report']['delete_succeed'] = '选择的举报信息删除成功！';

// setting.php
$lang['setting']['error_notice_empty'] = '网站提示信息为空！';
$lang['setting']['error_sitename_empty'] = '网站名称不能为空！';
$lang['setting']['error_sitename_length'] = '网站名称过长，不能超过200字符！';
$lang['setting']['error_sitepath_empty'] = '网站地址不能为空！';
$lang['setting']['error_sitepath_forbid'] = '网站地址包含非法数据！';
$lang['setting']['error_ip_rule'] = '禁止访问的IP中包含不正确的IP规则！';
$lang['setting']['error_tracker'] = '不是一个有效的Tracker URL！';
$lang['setting']['log_change_website'] = '修改网站设置';
$lang['setting']['change_website_succeed'] = '网站配置更新成功！';
$lang['setting']['log_change_xbt'] = '修改XBT设置';
$lang['setting']['change_xbt_succeed'] = 'XBT参数更新成功！';

$lang['gmt']['text1']  = '(GMT-12:00) 国际换日线以西、瓜加林岛';
$lang['gmt']['text2']  = '(GMT-11:00) 中途岛、萨摩亚';
$lang['gmt']['text3']  = '(GMT-10:00) 夏威夷';
$lang['gmt']['text4']  = '(GMT-09:00) 阿拉斯加';
$lang['gmt']['text5']  = '(GMT-08:00) 美国与加拿大太平洋时区';
$lang['gmt']['text6']  = '(GMT-07:00) 美国与加拿大山区时区';
$lang['gmt']['text7']  = '(GMT-06:00) 美国与加拿大中部时区、墨西哥';
$lang['gmt']['text8']  = '(GMT-05:00) 美国与加拿大东部时区、波哥大、利马、基多';
$lang['gmt']['text9']  = '(GMT-04:00) 加拿大大西洋时区、卡拉卡斯、拉巴斯';
$lang['gmt']['text10'] = '(GMT-03:30) 纽芬兰';
$lang['gmt']['text11'] = '(GMT-03:00) 巴西利亚、布宜诺艾利斯、佐治敦';
$lang['gmt']['text12'] = '(GMT-02:00) 大西洋中部';
$lang['gmt']['text13'] = '(GMT-01:00) 亚速尔群岛、维德角群岛';
$lang['gmt']['text14'] = '(GMT) 格林威治时间、伦敦、都柏林、里斯本、卡萨布兰卡、蒙罗维亚';
$lang['gmt']['text15'] = '(GMT+01:00) 阿姆斯特丹、柏林、罗马、布鲁赛尔、马德里、巴黎';
$lang['gmt']['text16'] = '(GMT+02:00) 雅典、伊斯坦布尔、明斯克、赫尔辛基、耶路撒冷、南非';
$lang['gmt']['text17'] = '(GMT+03:00) 巴格达、科威特、利雅德、莫斯科、圣彼得堡';
$lang['gmt']['text18'] = '(GMT+03:30) 德黑兰';
$lang['gmt']['text19'] = '(GMT+04:00) 阿布扎比、马斯喀特、巴库、第比利斯';
$lang['gmt']['text20'] = '(GMT+04:30) 喀布尔';
$lang['gmt']['text21'] = '(GMT+05:00) 伊卡特林堡、伊斯兰堡、卡拉奇、塔什干';
$lang['gmt']['text22'] = '(GMT+05:30) 孟买、加尔各答、马德拉斯、新德里';
$lang['gmt']['text23'] = '(GMT+06:00) 阿马提、达卡、科伦坡';
$lang['gmt']['text24'] = '(GMT+07:00) 曼谷、河内、雅加达';
$lang['gmt']['text25'] = '(GMT+08:00) 北京、新加坡、香港、乌鲁木齐、台北';
$lang['gmt']['text26'] = '(GMT+09:00) 东京、汉城、大阪、札幌、亚库次克';
$lang['gmt']['text27'] = '(GMT+09:30) 爱德蓝、达尔文';
$lang['gmt']['text28'] = '(GMT+10:00) 布里斯本、坎培拉、墨尔本、悉尼、关岛、海参威';
$lang['gmt']['text29'] = '(GMT+11:00) 马加丹、所罗门群岛、新加勒多尼亚';
$lang['gmt']['text30'] = '(GMT+12:00) 奥克兰、威灵顿、斐济、堪察加半岛、马绍尔群岛';
$lang['gmt']['text31'] = '(GMT+13:00) 努库阿洛法';

// sort.php
// include/kernel/class_sort.php
$lang['sort']['error_no_order'] = '没有可排序的分类！';
$lang['sort']['log_order'] = '分类排序';
$lang['sort']['order_succeed'] = '分类顺序调整成功！';
$lang['sort']['error_sub_forbid'] = '免费版本只能设置一级分类！';
$lang['sort']['error_parent_not_exist']  = '选择的父分类不存在！';
$lang['sort']['error_name_empty']  = '分类名称不能为空！';
$lang['sort']['error_name_length']  = '分类名称长度不能超过50个字符(包括HTML代码)！';
$lang['sort']['error_sort_totalnum']  = '免费版本设置的分类数量不能超过10个！';
$lang['sort']['error_name_exist']  = '已存在相同的分类名称！';
$lang['sort']['log_add'] = '添加分类:';
$lang['sort']['add_succeed'] = '新分类添加成功！';
$lang['sort']['error_not_exist'] = '没有这个分类！';
$lang['sort']['error_parent_select'] = '父分类不能是自己！';
$lang['sort']['log_edit'] = '编辑分类:';
$lang['sort']['edit_succeed'] = '分类编辑成功！';
$lang['sort']['error_aim_sort'] = '请选择一个有效的目标分类！';
$lang['sort']['error_aim_sort_self'] = '不能选择当前将要删除的分类作为目标分类！';
$lang['sort']['error_aim_not_exist'] = '选择的目标分类不存在！';
$lang['sort']['log_delete_transfer'] = '删除分类:%s1,将其下所有数据转移到分类:%s2';
$lang['sort']['log_delete'] = '删除分类:%s1,同时删除其下所有数据';
$lang['sort']['error_select_approach'] = '请为该分类下的数据选择一种处理方式！';
$lang['sort']['delete_succeed'] = '分类删除成功！';
$lang['sort']['edit'] = '编辑';
$lang['sort']['delete'] = '删除';
$lang['sort']['add_sub_alt'] = '在该分类下添加新的子分类';
$lang['sort']['add_sub'] = '添加子分类';

// team.php
$lang['team']['error_name_empty'] = '没有输入联盟名称！';
$lang['team']['error_name_forbid']  = '联盟名称不能是全数字！';
$lang['team']['error_name_length']  = '联盟名称长度请限制在 4 - 24 个字符以内，请重新输入！';
$lang['team']['error_create_user']  = '没有指定联盟创建用户！';
$lang['team']['error_user_not_exist']  = '没有这个用户！';
$lang['team']['error_user_forbid']  = '指定的用户已加入了其他联盟！';
$lang['team']['error_name_exist']  = '已存在相同的联盟名称！';
$lang['team']['log_add']  = '添加联盟:';
$lang['team']['add_succeed'] = '联盟添加成功！';
$lang['team']['error_not_exist'] = '不存在的联盟！';
$lang['team']['log_edit'] = '编辑联盟:';
$lang['team']['edit_succeed'] = '联盟编辑成功！';
$lang['team']['log_delete'] = '删除联盟:';
$lang['team']['error_have_auditing'] = '该联盟已通过审核！';
$lang['team']['log_auditing'] = '审核联盟:';
$lang['team']['auditing_succeed'] = '审核成功！';
$lang['team']['error_order_empty'] = '没有需要排序的联盟';
$lang['team']['log_order'] = '联盟排序';

// user.php
$lang['user']['error_username_empty'] = '登录用户名不能为空！';
$lang['user']['error_username_forbid1'] = '用户名不能是全数字！';
$lang['user']['error_username_forbid2'] = '登录用户名包含禁止注册的符号！';
$lang['user']['error_username_length'] = '用户名长度请限制在 4 - 20 个字符以内！';
$lang['user']['error_username_exist'] = '已存在相同的用户名！';
$lang['user']['error_password_empty'] = '登录密码不能为空！';
$lang['user']['error_password_length'] = '登录密码长度不能少于 4 个字符！';
$lang['user']['error_password_mismatch'] = '两次输入的密码不匹配！';
$lang['user']['error_team_auditing'] = '加入联盟还未通过审核！';
$lang['user']['log_add'] = '添加用户:';
$lang['user']['add_succeed'] = '发布用户添加成功！';
$lang['user']['error_not_exist'] = '没有这个用户！';
$lang['user']['log_edit'] = '编辑用户:';
$lang['user']['edit_succeed'] = '发布用户编辑成功！';
$lang['user']['log_delete'] = '删除用户:';
$lang['user']['delete_succeed'] = '用户删除成功！';
$lang['user']['local'] = '本地用户';

// include/kernel/class_html.php
$lang['html']['error_data_empty'] = '没有数据被生成，请重新选择操作';
$lang['html']['dir_create_error'] = '静态文件保存目录创建失败';
$lang['html']['write_error'] = '静态文件写入错误';
$lang['html']['waiting'] = '正在生成静态文件,请稍候';
$lang['html']['waiting_batch'] = '正在生成静态文件,请稍候<br />当前正在生成 %s1 - %s2 ，剩余 %s3';
?>