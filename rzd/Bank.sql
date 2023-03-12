#
# DUMP FILE
#
# Database is ported from MS Access
#------------------------------------------------------------------
# Created using "MS Access to MySQL" form http://www.bullzip.com
# Program Version 5.5.282
#
# OPTIONS:
#   sourcefilename=C:/Program Files (x86)/Bullzip/MS Access to MySQL/rzhd.accdb
#   sourceusername=
#   sourcepassword=
#   sourcesystemdatabase=
#   destinationdatabase=rzhd
#   storageengine=InnoDB
#   dropdatabase=0
#   createtables=1
#   unicode=1
#   autocommit=1
#   transferdefaultvalues=1
#   transferindexes=1
#   transferautonumbers=1
#   transferrecords=1
#   columnlist=1
#   tableprefix=
#   negativeboolean=0
#   ignorelargeblobs=0
#   memotype=LONGTEXT
#   datetimetype=DATETIME
#

CREATE DATABASE IF NOT EXISTS `rzhd`;
USE `rzhd`;

#
# Table structure for table 'Пассажиры'
#

DROP TABLE IF EXISTS `Пассажиры`;

CREATE TABLE `Пассажиры` (
  `ID` INTEGER NOT NULL AUTO_INCREMENT, 
  `ФИО` VARCHAR(255), 
  `Паспортные данные` INTEGER DEFAULT 0, 
  `Номер билета` INTEGER DEFAULT 0, 
  `Номер поезда` INTEGER DEFAULT 0, 
  `Номер места` INTEGER DEFAULT 0, 
  PRIMARY KEY (`ID`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Пассажиры'
#

INSERT INTO `Пассажиры` (`ID`, `ФИО`, `Паспортные данные`, `Номер билета`, `Номер поезда`, `Номер места`) VALUES (1, 'Иванов Иван Иванович', NULL, 3743465, 838, 25);
INSERT INTO `Пассажиры` (`ID`, `ФИО`, `Паспортные данные`, `Номер билета`, `Номер поезда`, `Номер места`) VALUES (2, 'Петров Петр Петрович', NULL, 5434634, 939, 12);
INSERT INTO `Пассажиры` (`ID`, `ФИО`, `Паспортные данные`, `Номер билета`, `Номер поезда`, `Номер места`) VALUES (3, 'Петров Иван Петрович', NULL, 5342256, 838, 10);
INSERT INTO `Пассажиры` (`ID`, `ФИО`, `Паспортные данные`, `Номер билета`, `Номер поезда`, `Номер места`) VALUES (4, 'Иванов Петр Иванович', NULL, 6432345, 939, 11);
INSERT INTO `Пассажиры` (`ID`, `ФИО`, `Паспортные данные`, `Номер билета`, `Номер поезда`, `Номер места`) VALUES (5, 'Петров Иван Иванович', NULL, 8574389, 838, 11);
INSERT INTO `Пассажиры` (`ID`, `ФИО`, `Паспортные данные`, `Номер билета`, `Номер поезда`, `Номер места`) VALUES (6, 'Иванов Петр Петрович', NULL, 4597074, 939, 21);
# 6 records

#
# Table structure for table 'Поезда'
#

DROP TABLE IF EXISTS `Поезда`;

CREATE TABLE `Поезда` (
  `ID` INTEGER NOT NULL AUTO_INCREMENT, 
  `Номер поезда` VARCHAR(255), 
  `Количество мест` VARCHAR(255), 
  PRIMARY KEY (`ID`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Поезда'
#

INSERT INTO `Поезда` (`ID`, `Номер поезда`, `Количество мест`) VALUES (1, '939', '150');
INSERT INTO `Поезда` (`ID`, `Номер поезда`, `Количество мест`) VALUES (2, '838', '100');
# 2 records

#
# Table structure for table 'Расписание'
#

DROP TABLE IF EXISTS `Расписание`;

CREATE TABLE `Расписание` (
  `ID` INTEGER NOT NULL AUTO_INCREMENT, 
  `Номер позда` VARCHAR(255), 
  `Время отправление` DATETIME, 
  `Направление` VARCHAR(255), 
  PRIMARY KEY (`ID`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Расписание'
#

INSERT INTO `Расписание` (`ID`, `Номер позда`, `Время отправление`, `Направление`) VALUES (1, '838', '2023-03-09 00:00:00', 'Ростов - Москва');
INSERT INTO `Расписание` (`ID`, `Номер позда`, `Время отправление`, `Направление`) VALUES (2, '939', '2023-03-23 00:00:00', 'Ростов - Челябинск');
# 2 records

