/*
Navicat MySQL Data Transfer

Source Server         : Sushant
Source Server Version : 100113
Source Host           : localhost:3306
Source Database       : movierepository

Target Server Type    : MYSQL
Target Server Version : 100113
File Encoding         : 65001

Date: 2019-01-22 21:02:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  `value` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'Language', 'English');
INSERT INTO `category` VALUES ('2', 'Genre', 'Drama');
INSERT INTO `category` VALUES ('3', 'Language', 'Hindi');
INSERT INTO `category` VALUES ('4', 'Genre', 'Thriller');
INSERT INTO `category` VALUES ('6', 'Genre', 'Horror');
INSERT INTO `category` VALUES ('7', 'Genre', 'Sci-fi');
INSERT INTO `category` VALUES ('8', 'Genre', 'Animation');
INSERT INTO `category` VALUES ('9', 'Genre', 'Romance');
INSERT INTO `category` VALUES ('10', 'Genre', 'Family');

-- ----------------------------
-- Table structure for movies
-- ----------------------------
DROP TABLE IF EXISTS `movies`;
CREATE TABLE `movies` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `featured_image` varchar(60) DEFAULT NULL,
  `movie_length` int(3) DEFAULT NULL,
  `movie_release_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movies
-- ----------------------------
INSERT INTO `movies` VALUES ('1', 'INCIDENT BY A BANK', '90 people meticulously recreate a failed bank robbery that took place in Stockholm in June 2006. A superb single shot.', null, '20', '2019-01-01');
INSERT INTO `movies` VALUES ('2', 'THE BABY BY ALI ASGARI', 'Once in a while you come across a really gripping short film where the core tension is because of a real life human situation.', null, '30', '2018-12-04');
INSERT INTO `movies` VALUES ('3', 'QAHR', 'territorial conflicts have arisen between the Hindus, Muslims, and Christians. Amidst all of this, a young man, Imaan, struggling to protect his little sister’s innocence and faith, is suddenly put to test when a group of anarchists abduct her and make demands which send him down murky routes, unravelling bizarre truths about the world he lives in.', null, '15', '2018-12-26');
INSERT INTO `movies` VALUES ('4', 'THE AFFAIR', 'In a city of a millions, everyday after work, a man and a woman meet each other. They turn their backs to the city and let the sea be witness to their relationship', null, '25', '2018-11-27');
INSERT INTO `movies` VALUES ('5', 'THE BIGGER PICTURE ', 'The story of two brothers struggling with the care of their elderly mother.', null, '11', '2018-11-21');
INSERT INTO `movies` VALUES ('6', 'DWARAKA', 'Dwaraka is film about a waiter, Kanha in a godforsaken hotel in Pondicherry, India and a woman, Radhika stuck in a purely functional, childless marriage', null, '12', '2018-10-23');
INSERT INTO `movies` VALUES ('7', 'DEDALO', 'Dust is a new channel specializing in scifi horror shorts and calls itself a bingeable scifi horror  short destination', null, '28', '2018-11-12');
INSERT INTO `movies` VALUES ('8', 'SCAVENGERS', 'Scavengers is  terrific animation short that follows a pair of intergalactic explorers who become stranded on an unfamiliar planet with absolutely bizarre creatures when trying to establish a human settlement.', null, '27', '2019-02-18');
INSERT INTO `movies` VALUES ('9', 'NEWBORNS', 'What if one day another man, dressed like a joker, sits in the bus? You will probably confuse him as me', null, '18', '2019-02-06');
INSERT INTO `movies` VALUES ('10', 'LOVEY DOVEY', 'A cute-awkward, unromantically- romantic and unconventional story of an army man celebrating Valentines Day with his wife and trying to woo her. ', null, '19', '2019-02-21');
INSERT INTO `movies` VALUES ('11', 'THE SHINING STAR OF LOSERS EVERYWHERE', 'In 2003, Japan was plunged into economic darkness, and its people needed a ray of hope', null, '20', '2019-07-10');
INSERT INTO `movies` VALUES ('12', 'BONESHAKER (SUNDANCE 2017)', 'An African family, lost in America, travels to a Louisiana church to find a cure for its problem child.', null, '10', '2019-01-01');
INSERT INTO `movies` VALUES ('13', 'ARREY BABA', 'Little Devika has a problem her father may not understand. Does she miss having a mother?\r\n', null, '15', '2018-09-03');
INSERT INTO `movies` VALUES ('14', 'THE SEARCH', 'A psychological horror film about a man searching for his wife\r\nA psychological horror film about a man searching for his wife\r\nA psychological horror film about a man searching for his wife', null, '20', '2018-06-08');
INSERT INTO `movies` VALUES ('15', 'MUTE', 'An early short film by Director Abhay Kumar', null, '41', '2019-09-09');
INSERT INTO `movies` VALUES ('16', 'NAACH GANESH', ' folk dancer is caught between two worlds', null, '34', '2018-12-04');
INSERT INTO `movies` VALUES ('17', 'RAVAN', ' A struggling actor and the last descendent of Lord Raavan finally tells his story.', null, '9', '2019-01-03');
INSERT INTO `movies` VALUES ('18', 'GOD DAMN IT!', ' The Gods themselves cannot get a passport in this funny satire', null, '12', '2018-12-03');
INSERT INTO `movies` VALUES ('19', 'INCIDENT BY A BANK 2', '90 people meticulously recreate a failed bank robbery that took place in Stockholm in June 2006. A superb single shot.', null, '10', '2019-05-06');
INSERT INTO `movies` VALUES ('20', 'THE BABY BY ALI ASGARI 2', 'Once in a while you come across a really gripping short film where the core tension is because of a real life human situation.', null, '12', '2019-01-12');
INSERT INTO `movies` VALUES ('21', 'QAHR 2', 'territorial conflicts have arisen between the Hindus, Muslims, and Christians. Amidst all of this, a young man, Imaan, struggling to protect his little sister’s innocence and faith, is suddenly put to test when a group of anarchists abduct her and make demands which send him down murky routes, unravelling bizarre truths about the world he lives in.', null, '15', '2018-09-30');
INSERT INTO `movies` VALUES ('22', 'THE AFFAIR 2', 'In a city of a millions, everyday after work, a man and a woman meet each other. They turn their backs to the city and let the sea be witness to their relationship', null, '12', '2018-12-19');
INSERT INTO `movies` VALUES ('23', 'THE BIGGER PICTURE 3', 'The story of two brothers struggling with the care of their elderly mother.', null, '15', '2018-12-31');
INSERT INTO `movies` VALUES ('24', 'DWARAKA 2', 'Dwaraka is film about a waiter, Kanha in a godforsaken hotel in Pondicherry, India and a woman, Radhika stuck in a purely functional, childless marriage', null, '17', '2018-12-20');
INSERT INTO `movies` VALUES ('25', 'DEDALO 2', 'Dust is a new channel specializing in scifi horror shorts and calls itself a bingeable scifi horror  short destination', null, '18', '2019-01-03');
INSERT INTO `movies` VALUES ('26', 'SCAVENGERS 2', 'Scavengers is  terrific animation short that follows a pair of intergalactic explorers who become stranded on an unfamiliar planet with absolutely bizarre creatures when trying to establish a human settlement.', null, '20', '2019-01-03');
INSERT INTO `movies` VALUES ('27', 'NEWBORNS 2', 'What if one day another man, dressed like a joker, sits in the bus? You will probably confuse him as me', null, '11', '2019-01-02');
INSERT INTO `movies` VALUES ('28', 'LOVEY DOVEY 2', 'A cute-awkward, unromantically- romantic and unconventional story of an army man celebrating Valentines Day with his wife and trying to woo her. ', null, '17', '2019-01-02');
INSERT INTO `movies` VALUES ('29', 'THE SHINING STAR OF LOSERS EVERYWHERE 2', 'In 2003, Japan was plunged into economic darkness, and its people needed a ray of hope', null, '10', '2019-01-04');
INSERT INTO `movies` VALUES ('30', 'BONESHAKER (SUNDANCE 2017) 2', 'An African family, lost in America, travels to a Louisiana church to find a cure for its problem child.', null, '12', '2019-01-02');

-- ----------------------------
-- Table structure for relationship
-- ----------------------------
DROP TABLE IF EXISTS `relationship`;
CREATE TABLE `relationship` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category_id` int(10) NOT NULL,
  `movie_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `relationship_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `relationship_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of relationship
-- ----------------------------
INSERT INTO `relationship` VALUES ('1', '1', '1');
INSERT INTO `relationship` VALUES ('3', '2', '1');
INSERT INTO `relationship` VALUES ('4', '4', '1');
INSERT INTO `relationship` VALUES ('5', '1', '2');
INSERT INTO `relationship` VALUES ('6', '2', '2');
INSERT INTO `relationship` VALUES ('7', '2', '3');
INSERT INTO `relationship` VALUES ('8', '3', '3');
INSERT INTO `relationship` VALUES ('9', '4', '3');
INSERT INTO `relationship` VALUES ('10', '1', '4');
INSERT INTO `relationship` VALUES ('11', '2', '4');
INSERT INTO `relationship` VALUES ('12', '1', '5');
INSERT INTO `relationship` VALUES ('13', '2', '5');
INSERT INTO `relationship` VALUES ('14', '10', '5');
INSERT INTO `relationship` VALUES ('16', '1', '6');
INSERT INTO `relationship` VALUES ('17', '2', '6');
INSERT INTO `relationship` VALUES ('18', '1', '7');
INSERT INTO `relationship` VALUES ('19', '6', '7');
INSERT INTO `relationship` VALUES ('20', '7', '7');
INSERT INTO `relationship` VALUES ('22', '1', '8');
INSERT INTO `relationship` VALUES ('23', '7', '8');
INSERT INTO `relationship` VALUES ('24', '8', '8');
INSERT INTO `relationship` VALUES ('25', '1', '9');
INSERT INTO `relationship` VALUES ('26', '2', '9');
INSERT INTO `relationship` VALUES ('27', '1', '10');
INSERT INTO `relationship` VALUES ('28', '2', '10');
INSERT INTO `relationship` VALUES ('29', '9', '10');
INSERT INTO `relationship` VALUES ('31', '1', '11');
INSERT INTO `relationship` VALUES ('32', '8', '11');
INSERT INTO `relationship` VALUES ('33', '7', '1');
INSERT INTO `relationship` VALUES ('34', '1', '11');
INSERT INTO `relationship` VALUES ('35', '2', '11');
INSERT INTO `relationship` VALUES ('36', '4', '11');
INSERT INTO `relationship` VALUES ('37', '1', '12');
INSERT INTO `relationship` VALUES ('38', '2', '12');
INSERT INTO `relationship` VALUES ('39', '2', '13');
INSERT INTO `relationship` VALUES ('40', '3', '13');
INSERT INTO `relationship` VALUES ('41', '4', '13');
INSERT INTO `relationship` VALUES ('42', '1', '14');
INSERT INTO `relationship` VALUES ('43', '2', '14');
INSERT INTO `relationship` VALUES ('44', '1', '15');
INSERT INTO `relationship` VALUES ('45', '2', '15');
INSERT INTO `relationship` VALUES ('46', '10', '15');
INSERT INTO `relationship` VALUES ('47', '1', '16');
INSERT INTO `relationship` VALUES ('48', '2', '16');
INSERT INTO `relationship` VALUES ('49', '1', '17');
INSERT INTO `relationship` VALUES ('50', '6', '17');
INSERT INTO `relationship` VALUES ('51', '7', '17');
INSERT INTO `relationship` VALUES ('52', '1', '18');
INSERT INTO `relationship` VALUES ('53', '7', '18');
INSERT INTO `relationship` VALUES ('54', '8', '18');
INSERT INTO `relationship` VALUES ('55', '1', '19');
INSERT INTO `relationship` VALUES ('56', '2', '19');
INSERT INTO `relationship` VALUES ('57', '1', '20');
INSERT INTO `relationship` VALUES ('58', '2', '20');
INSERT INTO `relationship` VALUES ('59', '9', '20');
INSERT INTO `relationship` VALUES ('60', '1', '21');
INSERT INTO `relationship` VALUES ('61', '8', '21');
INSERT INTO `relationship` VALUES ('62', '1', '22');
INSERT INTO `relationship` VALUES ('63', '2', '22');
INSERT INTO `relationship` VALUES ('64', '4', '22');
INSERT INTO `relationship` VALUES ('65', '1', '23');
INSERT INTO `relationship` VALUES ('66', '2', '23');
INSERT INTO `relationship` VALUES ('67', '2', '24');
INSERT INTO `relationship` VALUES ('68', '3', '24');
INSERT INTO `relationship` VALUES ('69', '4', '24');
INSERT INTO `relationship` VALUES ('70', '1', '25');
INSERT INTO `relationship` VALUES ('71', '2', '25');
INSERT INTO `relationship` VALUES ('72', '1', '26');
INSERT INTO `relationship` VALUES ('73', '2', '26');
INSERT INTO `relationship` VALUES ('74', '10', '26');
INSERT INTO `relationship` VALUES ('75', '1', '27');
INSERT INTO `relationship` VALUES ('76', '2', '27');
INSERT INTO `relationship` VALUES ('77', '1', '28');
INSERT INTO `relationship` VALUES ('78', '6', '28');
INSERT INTO `relationship` VALUES ('79', '7', '28');
INSERT INTO `relationship` VALUES ('80', '1', '29');
INSERT INTO `relationship` VALUES ('81', '7', '29');
INSERT INTO `relationship` VALUES ('82', '8', '29');
INSERT INTO `relationship` VALUES ('83', '1', '29');
INSERT INTO `relationship` VALUES ('84', '2', '30');
