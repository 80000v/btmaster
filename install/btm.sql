CREATE TABLE IF NOT EXISTS `btm_ad` (
  `ad_id` int(10) unsigned NOT NULL auto_increment,
  `ad_title` varchar(100) NOT NULL,
  `ad_place` varchar(50) NOT NULL,
  `ad_code` text NOT NULL,
  `ad_begin_time` int(10) unsigned NOT NULL default '0',
  `ad_end_time` int(10) unsigned NOT NULL default '0',
  `ad_stop` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`ad_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `btm_announcement` (
  `announcement_id` int(10) unsigned NOT NULL auto_increment,
  `manager_id` smallint(6) unsigned NOT NULL default '0',
  `announcement_title` varchar(255) NOT NULL default '',
  `announcement_url` varchar(255) NOT NULL default '',
  `announcement_content` text NOT NULL,
  `announcement_date` int(10) unsigned NOT NULL default '0',
  `start_time` int(10) unsigned NOT NULL default '0',
  `end_time` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`announcement_id`),
  KEY `start_time` (`start_time`,`end_time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `btm_badword` (
  `word_id` int(10) unsigned NOT NULL auto_increment,
  `word_name` varchar(255) NOT NULL,
  `word_replace` varchar(255) NOT NULL,
  PRIMARY KEY  (`word_id`),
  UNIQUE KEY `word_name` (`word_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `btm_bt_data` (
  `bt_data_id` int(10) unsigned NOT NULL auto_increment,
  `info_hash` blob NOT NULL,
  `hash_id` varchar(40) NOT NULL default '',
  `team_id` int(10) unsigned NOT NULL default '0',
  `node_id` smallint(6) unsigned NOT NULL default '0',
  `user_id` int(10) unsigned NOT NULL default '0',
  `user_name` varchar(50) NOT NULL default '',
  `sort_id` int(10) unsigned NOT NULL default '0',
  `title_style` varchar(15) NOT NULL default '',
  `bt_data_title` varchar(200) NOT NULL default '',
  `bt_data_discuss_url` varchar(255) default NULL,
  `bt_data_file_size` varchar(20) NOT NULL default '',
  `release_date` int(10) unsigned NOT NULL default '0',
  `upgrade_date` int(10) unsigned NOT NULL default '0',
  `ipaddress` varchar(15) NOT NULL default '',
  `is_local` tinyint(1) NOT NULL default '1',
  `is_commend` tinyint(1) NOT NULL default '0',
  `put_top` tinyint(1) NOT NULL default '0',
  `total_comment` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`bt_data_id`),
  UNIQUE KEY `info_hash` (`info_hash`(20)),
  UNIQUE KEY `hash_id` (`hash_id`),
  KEY `user_id` (`user_id`),
  KEY `sort_id` (`sort_id`),
  KEY `team_id` (`team_id`),
  KEY `is_commend` (`is_commend`),
  KEY `release_date` (`release_date`),
  KEY `upgrade_date` (`upgrade_date`),
  KEY `display` (`put_top`,`upgrade_date`),
  KEY `is_local` (`is_local`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `btm_bt_data_ext` (
  `bt_data_id` int(10) unsigned NOT NULL default '0',
  `bt_data_title` varchar(200) NOT NULL default '',
  `bt_data_intro` text NOT NULL,
  `emule_resource` text,
  PRIMARY KEY  (`bt_data_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `btm_comment` (
  `comment_id` int(10) unsigned NOT NULL auto_increment,
  `data_id` int(10) unsigned NOT NULL default '0',
  `comment_content` text NOT NULL,
  `comment_date` int(10) unsigned NOT NULL default '0',
  `client_ip` varchar(15) NOT NULL default '',
  `client_location` varchar(100) NOT NULL default '',
  `agree_num` int(10) unsigned NOT NULL default '0',
  `oppose_num` int(10) unsigned NOT NULL default '0',
  `report_num` int(10) unsigned NOT NULL default '0',
  `is_audit` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`comment_id`),
  KEY `report_num` (`report_num`),
  KEY `data_id` (`data_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `btm_config` (
  `name` varchar(50) NOT NULL default '',
  `value` text NOT NULL,
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `btm_file_type` (
  `type_id` int(10) unsigned NOT NULL auto_increment,
  `type_intro` varchar(50) NOT NULL default '',
  `type_image` varchar(50) NOT NULL default '',
  `type_ext` text NOT NULL,
  PRIMARY KEY  (`type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `btm_friendly_link` (
  `link_id` int(10) unsigned NOT NULL auto_increment,
  `link_name` varchar(255) NOT NULL default '',
  `link_intro` varchar(255) NOT NULL default '',
  `link_logo` varchar(255) NOT NULL default '',
  `link_url` varchar(255) NOT NULL default '',
  `link_order` int(10) NOT NULL default '0',
  PRIMARY KEY  (`link_id`),
  KEY `link_order` (`link_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `btm_login_node` (
  `node_id` smallint(6) unsigned NOT NULL auto_increment,
  `node_name` varchar(50) NOT NULL default '',
  `node_site_url` varchar(255) NOT NULL default '',
  `node_verify_url` varchar(255) NOT NULL default '',
  `node_encoding` varchar(20) NOT NULL default '',
  `node_key` varchar(50) NOT NULL default '',
  `node_condition` smallint(6) NOT NULL default '0',
  `is_pause` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`node_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `btm_manager` (
  `manager_id` smallint(6) unsigned NOT NULL auto_increment,
  `manager_name` varchar(50) NOT NULL default '',
  `manager_password` varchar(32) NOT NULL default '',
  `dateline` int(10) unsigned NOT NULL default '0',
  `last_active` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`manager_id`),
  KEY `manager_name` (`manager_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `btm_manager_log` (
  `log_id` int(10) unsigned NOT NULL auto_increment,
  `manager_id` smallint(6) unsigned NOT NULL default '0',
  `action` text NOT NULL,
  `dateline` int(10) unsigned NOT NULL default '0',
  `client_ip` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`log_id`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `btm_manager_permission` (
  `manager_id` smallint(6) unsigned NOT NULL default '0',
  `can_login` tinyint(1) NOT NULL default '0',
  `is_super_manager` tinyint(1) NOT NULL default '0',
  `can_manage_bt` tinyint(1) NOT NULL default '0',
  `can_manage_sort` tinyint(1) NOT NULL default '0',
  `can_manage_team` tinyint(1) NOT NULL default '0',
  `can_manage_user` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`manager_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `btm_navigation` (
  `navigation_id` int(10) unsigned NOT NULL auto_increment,
  `navigation_location` enum('header','footer') NOT NULL default 'header',
  `navigation_name` varchar(100) NOT NULL,
  `navigation_style` varchar(100) NOT NULL,
  `navigation_url` varchar(255) NOT NULL,
  `navigation_blank` tinyint(1) NOT NULL default '0',
  `navigation_order` smallint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (`navigation_id`),
  KEY `location` (`navigation_location`,`navigation_name`),
  KEY `navigation_order` (`navigation_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `btm_report` (
  `report_id` int(10) unsigned NOT NULL auto_increment,
  `data_id` int(10) unsigned NOT NULL,
  `report_contact` varchar(100) NOT NULL,
  `report_content` text NOT NULL,
  `report_date` int(10) unsigned NOT NULL default '0',
  `report_ip` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`report_id`),
  KEY `data_id` (`data_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `btm_search_keyword` (
  `search_keyword` varchar(20) NOT NULL default '',
  `search_num` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`search_keyword`),
  KEY `search_num` (`search_num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `btm_sort` (
  `sort_id` int(10) unsigned NOT NULL auto_increment,
  `parent_sort_id` int(10) unsigned NOT NULL default '0',
  `sort_name` varchar(50) NOT NULL default '',
  `display_order` int(10) unsigned NOT NULL default '1',
  PRIMARY KEY  (`sort_id`),
  UNIQUE KEY `sort_name` (`sort_name`),
  KEY `parent_sort_id` (`parent_sort_id`),
  KEY `display_order` (`display_order`,`sort_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `btm_team` (
  `team_id` int(10) unsigned NOT NULL auto_increment,
  `team_name` varchar(50) NOT NULL default '',
  `create_user_id` int(10) unsigned NOT NULL default '0',
  `create_date` int(10) unsigned NOT NULL default '0',
  `create_auditing` tinyint(1) NOT NULL default '0',
  `join_condition` enum('close','any','auditing') NOT NULL default 'any',
  `team_display` tinyint(1) NOT NULL default '0',
  `display_order` int(10) unsigned NOT NULL default '0',
  `today_upgrade_num` smallint(6) unsigned NOT NULL default '0',
  `today` varchar(6) NOT NULL default '',
  PRIMARY KEY  (`team_id`),
  UNIQUE KEY `team_name` (`team_name`),
  KEY `create_auditing` (`create_auditing`,`team_display`),
  KEY `create_user_id` (`create_user_id`),
  KEY `display_order` (`display_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `btm_team_user` (
  `team_id` int(10) unsigned NOT NULL default '0',
  `user_id` int(10) unsigned NOT NULL default '0',
  `team_can_edit` tinyint(1) NOT NULL default '0',
  `team_can_delete` tinyint(1) NOT NULL default '0',
  `team_can_upgrade` tinyint(1) NOT NULL default '0',
  `team_can_manage_user` tinyint(1) NOT NULL default '0',
  `join_date` int(10) unsigned NOT NULL default '0',
  `join_auditing` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`team_id`,`user_id`),
  KEY `join_date` (`join_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `btm_user` (
  `user_id` int(10) unsigned NOT NULL auto_increment,
  `user_name` varchar(50) NOT NULL default '',
  `user_password` varchar(32) NOT NULL default '',
  `user_salt` char(8) NOT NULL,
  `dateline` int(10) unsigned NOT NULL default '0',
  `team_id` int(10) unsigned NOT NULL default '0',
  `node_id` smallint(6) unsigned NOT NULL default '0',
  `is_auditing` tinyint(1) NOT NULL default '1',
  `can_add` tinyint(1) NOT NULL default '1',
  `can_edit` tinyint(1) NOT NULL default '1',
  `can_delete` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`user_id`),
  KEY `is_auditing` (`is_auditing`),
  KEY `node_id` (`node_id`),
  KEY `team_id` (`team_id`),
  KEY `user_name` (`user_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
INSERT INTO `btm_sort` (`sort_name`) VALUES ('Default');
INSERT INTO `btm_file_type` (`type_id`, `type_intro`, `type_image`, `type_ext`) VALUES
(18, 'HTML文件', 'html.gif', 'htm,html,shtml,mht'),
(17, 'Adobe PDF文件', 'pdf.gif', 'pdf'),
(16, '可执行文件(可能有风险)', 'application.gif', 'exe,bat,reg,dll,com,msi'),
(15, '字体文件', 'font.gif', 'fon,ttf'),
(14, 'Adobe Flash视频文件', 'flash.gif', 'swf,fla,flv'),
(13, '帮助手册', 'help.gif', 'chm,hlp'),
(12, '光盘镜(映)像文件', 'disk.gif', 'bin,bwi,cdi,cif,cso,cue,dao,fcd,img,iso,mdf,nrg,pdi,tao'),
(11, '压缩文件', 'compressed.gif', '7z,ace,arj,bz2,bzip2,cab,gz,hqx,lzh,lzo,lzx,zip,rar,tar,z'),
(10, '文本文件', 'document.gif', 'txt,css,js,sql,php,jsp,asp,xml,xsl,ini,inf,cfm,log'),
(9, '图片文件', 'image.gif', 'bmp,cgm,cur,dib,dxf,gif,ico,jng,jpg,jpeg,png,psd,tga,tif,tiff'),
(8, '视频文件', 'video.gif', '3gp,3gpp,3g2,3gp2,aaf,ani,asf,avc,avi,dat,mkv,mng,mp4,mkv,mov,mpeg,mpe,mpg,mxf,pmp,qt,qtx,ram,rm,rmvb,vob,wmv'),
(7, '音频文件', 'sound.gif', 'aiff,aac,au,acp,ape,cda,flac,it,mp2,mp3,mpc,mid,midi,ra,nsf,ogg,s3m,tta,wma,wav,xm'),
(6, '播放列表文件', 'playlist.gif', 'm3u,pls'),
(5, 'BT种子文件', 'torrent.gif', 'torrent'),
(4, '信息文件', 'info.gif', 'cer,crt,der,nfo'),
(3, 'Microsoft Word文档', 'word.gif', 'doc,rtf'),
(2, 'Microsoft Excel电子表格', 'excel.gif', 'xls'),
(1, 'Microsoft PowerPoint演示文稿', 'powerpoint.gif', 'pps,ppt'),
(19, '网页链接', 'link.gif', 'url'),
(20, '字幕文件', 'subtitle.gif', 'ass,idx,smi,srt,ssa,sub');
INSERT INTO `btm_config` (`name`, `value`) VALUES
('down_torrent_naming', 'infohash'),
('site_stop_msg', '网站维护中，请稍后再来。'),
('site_name', 'BTMaster BT发布系统'),
('meet_description', '专业的BT/Emule资源发布系统.'),
('gzip_enabled', '1'),
('tpl_compile', '1'),
('tpl_cache_time_list', '120'),
('tpl_cache_time_show', '3600'),
('pagination_list_num', '30'),
('pagination_rss_num', '50'),
('self_reg', 'no_auditing'),
('bt_file_size', '307200'),
('bt_title_least', '10'),
('bt_title_max', '100'),
('bt_intro_maxlength', '10000'),
('bt_no_local', 'tolocal'),
('comment_length', '1000'),
('comment_smilie_num', '10'),
('emule_allow', '1'),
('team_create', 'close'),
('team_daily_upgrade_num', '6'),
('upgrade_space_time', '1'),
('team_resource_commend', '1'),
('team_resource_heightlight', '1'),
('search_full_text', '1'),
('search_keyword_least', '2'),
('search_space_time', '10'),
('search_top_num', '10'),
('image_auto_size', '400'),
('float_window_height', '300'),
('float_window_width', '400'),
('home_team_show', '1'),
('home_friend_show', '1'),
('js_transfer_cache', '600'),
('timezone_offset', '8'),
('use_url_rewrite', '0'),
('meet_keywords', 'bt,emule,btmaster,p2p'),
('comment_perpage_num', '10'),
('down_confirm_page', '0'),
('down_confirm_page_height', '100'),
('down_confirm_page_width', '300'),
('verify_code_comment', '1'),
('page_width', '100'),
('page_width_unit', '%');