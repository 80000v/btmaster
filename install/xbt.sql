CREATE TABLE `xbt_announce_log` (
  `id` int(11) NOT NULL auto_increment,
  `ipa` int(10) unsigned NOT NULL default '0',
  `port` int(11) NOT NULL default '0',
  `event` int(11) NOT NULL default '0',
  `info_hash` blob NOT NULL,
  `peer_id` blob NOT NULL,
  `downloaded` bigint(20) NOT NULL default '0',
  `left0` bigint(20) NOT NULL default '0',
  `uploaded` bigint(20) NOT NULL default '0',
  `uid` int(11) NOT NULL default '0',
  `mtime` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM;
CREATE TABLE `xbt_config` (
  `name` varchar(255) NOT NULL default '',
  `value` varchar(255) NOT NULL default ''
) ENGINE=MyISAM;
CREATE TABLE `xbt_deny_from_hosts` (
  `begin` int(11) NOT NULL default '0',
  `end` int(11) NOT NULL default '0'
) ENGINE=MyISAM;
CREATE TABLE `xbt_files` (
  `fid` int(11) NOT NULL auto_increment,
  `info_hash` blob NOT NULL,
  `leechers` int(11) NOT NULL default '0',
  `seeders` int(11) NOT NULL default '0',
  `completed` int(11) NOT NULL default '0',
  `flags` int(11) NOT NULL default '0',
  `mtime` int(11) NOT NULL default '0',
  `ctime` int(11) NOT NULL default '0',
  PRIMARY KEY  (`fid`),
  UNIQUE KEY `info_hash` (`info_hash`(20)),
  KEY `leechers` (`leechers`),
  KEY `seeders` (`seeders`),
  KEY `completed` (`completed`)
) ENGINE=MyISAM;
CREATE TABLE `xbt_files_users` (
  `fid` int(11) NOT NULL default '0',
  `uid` int(11) NOT NULL default '0',
  `active` tinyint(4) NOT NULL default '0',
  `announced` int(11) NOT NULL default '0',
  `completed` int(11) NOT NULL default '0',
  `downloaded` bigint(20) NOT NULL default '0',
  `left` bigint(20) NOT NULL default '0',
  `uploaded` bigint(20) NOT NULL default '0',
  `mtime` int(11) NOT NULL default '0',
  UNIQUE KEY `fid` (`fid`,`uid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM;
CREATE TABLE `xbt_scrape_log` (
  `id` int(11) NOT NULL auto_increment,
  `ipa` int(11) NOT NULL default '0',
  `info_hash` blob,
  `uid` int(11) NOT NULL default '0',
  `mtime` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM;
CREATE TABLE `xbt_users` (
  `uid` int(11) NOT NULL auto_increment,
  `name` varchar(8) NOT NULL default '',
  `pass` blob NOT NULL,
  `can_leech` tinyint(4) NOT NULL default '1',
  `wait_time` int(11) NOT NULL default '0',
  `peers_limit` int(11) NOT NULL default '0',
  `torrents_limit` int(11) NOT NULL default '0',
  `torrent_pass` varchar(32) NOT NULL default '',
  `torrent_pass_secret` bigint(20) NOT NULL default '0',
  `downloaded` bigint(20) NOT NULL default '0',
  `uploaded` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM;
INSERT INTO `xbt_config` (name, value) VALUES ('auto_register', '0');