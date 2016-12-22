<?php
/**
 *
 * Copyright (c) 2011 www.btmaster.cn All rights reserved.
 * Powered by BTMaster.cn
 * QQ:1145316697
 *
 */
if (!defined('IN_BTMASTER'))
{
	header('HTTP/1.1 404 Not Found');
	exit;
}

$CONFIG = array();

/* ############################################################# */
// 数据库类型
// 目前只支持mysql数据库
$CONFIG['db']['type']     = 'mysql';

// 数据库服务器地址
$CONFIG['db']['host']     = 'localhost';
// 数据库连接用户名
$CONFIG['db']['user']     = 'test';
// 数据库连接密码
$CONFIG['db']['password'] = 'test';
// 使用的数据库名
$CONFIG['db']['name']     = 'btmaster';

// 数据库持久连接
// 0:关闭, 1:打开
$CONFIG['db']['pconnect'] = 0;
// 表名前缀
$CONFIG['db']['prefix']   = 'btm_';


/* ############################################################# */
// 数据保存目录(结尾不包含'/')
// 包括:模板|模板缓存|数据库查询缓存|配置文件缓存|上传的种子文件
// ROOT_PATH为发布系统运行的根目录.您可以设置为一个其它的完整路径
// 为了您的数据安全,建议将该目录改名
// 如果条件允许,尽量不要放在网站根目录下
$CONFIG['dir']['data'] = ROOT_PATH.DIRECTORY_SEPARATOR.'data';
?>