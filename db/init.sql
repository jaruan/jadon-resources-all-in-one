CREATE DATABASE IF NOT EXISTS `jadondb` DEFAULT charset utf8 COLLATE utf8_bin;

USE jadondb;

CREATE TABLE `medicine` (
  `id` BINARY(16) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;