DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `app` varchar(10) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pack` varchar(255) NOT NULL DEFAULT '',
  `data` mediumblob,
  PRIMARY KEY (`id`,`pack`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

