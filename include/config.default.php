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
// ���ݿ�����
// Ŀǰֻ֧��mysql���ݿ�
$CONFIG['db']['type']     = 'mysql';

// ���ݿ��������ַ
$CONFIG['db']['host']     = 'localhost';
// ���ݿ������û���
$CONFIG['db']['user']     = 'test';
// ���ݿ���������
$CONFIG['db']['password'] = 'test';
// ʹ�õ����ݿ���
$CONFIG['db']['name']     = 'btmaster';

// ���ݿ�־�����
// 0:�ر�, 1:��
$CONFIG['db']['pconnect'] = 0;
// ����ǰ׺
$CONFIG['db']['prefix']   = 'btm_';


/* ############################################################# */
// ���ݱ���Ŀ¼(��β������'/')
// ����:ģ��|ģ�建��|���ݿ��ѯ����|�����ļ�����|�ϴ��������ļ�
// ROOT_PATHΪ����ϵͳ���еĸ�Ŀ¼.����������Ϊһ������������·��
// Ϊ���������ݰ�ȫ,���齫��Ŀ¼����
// �����������,������Ҫ������վ��Ŀ¼��
$CONFIG['dir']['data'] = ROOT_PATH.DIRECTORY_SEPARATOR.'data';
?>