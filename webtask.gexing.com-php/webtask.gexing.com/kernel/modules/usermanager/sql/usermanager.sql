-- phpMyAdmin SQL Dump
-- version 2.6.3-pl1
-- http://www.phpmyadmin.net
-- 
-- ����: localhost:3306
-- ��������: 2007 �� 04 �� 22 �� 16:27
-- �������汾: 4.1.14
-- PHP �汾: 5.0.3
-- 
-- ���ݿ�: `personadmin`
-- 

-- --------------------------------------------------------

-- 
-- ��Ľṹ `systemuser`
-- 

CREATE TABLE `systemuser` (
  `id` bigint(20) NOT NULL auto_increment,
  `loginame` varchar(20) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `password` varchar(20) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `name` varchar(20) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `number` smallint(4) NOT NULL default '0',
  `sex` varchar(10) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `tel` varchar(20) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `email` varchar(50) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `department` varchar(50) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `influenceId` bigint(20) NOT NULL default '0',
  `lastLoginTime` datetime NOT NULL default '0000-00-00 00:00:00',
  `regTime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- 
-- �������е����� `systemuser`
-- 

INSERT INTO `systemuser` VALUES (4, 'quanjun', 'asdfasdf', '��ȫ��', 0, '', '', '', '', 0, '0000-00-00 00:00:00', '2007-01-17 16:45:34');
INSERT INTO `systemuser` VALUES (5, 'quanjun1', 'asdfasdf', '��ȫ��', 0, '', '', '', '', 0, '0000-00-00 00:00:00', '2007-01-17 16:57:42');
INSERT INTO `systemuser` VALUES (6, 'quanjun1', 'asdfasdf', '��ȫ��', 0, '', '', '', '', 0, '0000-00-00 00:00:00', '2007-01-17 16:57:47');
