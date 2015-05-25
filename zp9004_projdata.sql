-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 25, 2015 at 09:26 AM
-- Server version: 5.5.41-log
-- PHP Version: 5.4.38

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `zp9004_projdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `groupId` int(10) NOT NULL AUTO_INCREMENT COMMENT 'group id',
  `groupName` varchar(20) NOT NULL COMMENT 'name of group',
  `numPeople` int(10) NOT NULL COMMENT 'number of people in each group',
  PRIMARY KEY (`groupId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`groupId`, `groupName`, `numPeople`) VALUES
(1, 'กรมการแพทย์', 30000),
(2, 'กรุงเทพมหานคร', 28000),
(3, 'กรมตำรวจ', 18000),
(4, 'กระทรวงสาธารณสุข', 22000),
(5, 'กระทรวงศึกษาธิการ', 22000),
(6, 'กรมแพทย์ทหารเรือ', 20000),
(7, 'สภากาชาดไทย', 33000),
(8, 'โรงพยาบาลจุฬารัตน์', 15000),
(9, 'โรงพยาบาลเมืองสมุทร', 10000),
(10, 'โรงพยาบาลบางนา', 12000),
(11, 'โรงพยาบาลมหาชัย', 11000),
(12, 'โรงพยาบาลวิชัยเวช', 9000),
(13, 'โรงพยาบาลปทุมธานี', 13000),
(14, 'สำนักงานศาลยุติธรรม', 11000),
(15, 'กระทรวงกลาโหม', 25000);

-- --------------------------------------------------------

--
-- Table structure for table `has`
--

CREATE TABLE IF NOT EXISTS `has` (
  `secId` int(10) NOT NULL COMMENT 'section id',
  `hosId` int(10) NOT NULL COMMENT 'hospital id',
  `numBed` int(10) NOT NULL COMMENT 'number of bed in each section',
  `numDoc` int(10) NOT NULL COMMENT 'number of doctor in each section',
  PRIMARY KEY (`secId`,`hosId`),
  KEY `hosId` (`hosId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `has`
--

INSERT INTO `has` (`secId`, `hosId`, `numBed`, `numDoc`) VALUES
(1, 1, 46, 62),
(1, 2, 114, 63),
(1, 3, 123, 45),
(1, 4, 37, 26),
(1, 5, 74, 18),
(1, 6, 68, 58),
(1, 7, 40, 58),
(1, 8, 109, 16),
(1, 9, 53, 27),
(1, 10, 107, 41),
(1, 11, 95, 48),
(1, 12, 128, 47),
(1, 13, 104, 21),
(1, 14, 40, 24),
(1, 15, 115, 44),
(1, 16, 82, 26),
(1, 17, 41, 60),
(1, 18, 118, 38),
(1, 19, 84, 57),
(1, 20, 49, 61),
(1, 21, 132, 25),
(1, 22, 95, 54),
(1, 23, 132, 37),
(1, 24, 90, 44),
(1, 25, 63, 43),
(1, 26, 73, 60),
(1, 27, 109, 25),
(1, 28, 57, 45),
(1, 29, 87, 33),
(1, 30, 87, 58),
(1, 31, 46, 19),
(1, 32, 112, 56),
(1, 33, 104, 63),
(1, 34, 134, 58),
(1, 35, 91, 53),
(1, 36, 100, 28),
(1, 37, 107, 31),
(1, 38, 110, 30),
(1, 39, 66, 37),
(1, 40, 89, 21),
(1, 41, 69, 38),
(1, 42, 61, 33),
(1, 43, 114, 36),
(1, 44, 81, 26),
(1, 45, 132, 34),
(1, 46, 47, 41),
(1, 47, 90, 39),
(1, 48, 78, 50),
(1, 49, 66, 25),
(1, 50, 111, 17),
(1, 51, 87, 54),
(1, 52, 130, 49),
(1, 53, 132, 57),
(1, 54, 49, 51),
(1, 55, 54, 46),
(1, 56, 104, 56),
(1, 57, 90, 64),
(1, 58, 119, 16),
(1, 59, 63, 51),
(1, 60, 56, 59),
(1, 61, 114, 20),
(1, 62, 47, 54),
(1, 63, 135, 37),
(1, 64, 79, 63),
(1, 65, 93, 18),
(1, 66, 63, 45),
(1, 67, 132, 58),
(1, 68, 128, 40),
(1, 69, 73, 56),
(1, 70, 69, 28),
(1, 71, 47, 23),
(1, 72, 75, 40),
(1, 73, 101, 30),
(1, 74, 122, 16),
(1, 75, 80, 28),
(1, 76, 109, 42),
(1, 77, 105, 39),
(1, 78, 129, 22),
(1, 79, 132, 63),
(1, 80, 44, 32),
(1, 81, 118, 45),
(1, 82, 70, 39),
(1, 83, 69, 59),
(1, 84, 131, 49),
(1, 85, 90, 62),
(1, 86, 87, 19),
(1, 87, 124, 36),
(1, 88, 133, 29),
(1, 89, 126, 41),
(1, 90, 62, 18),
(2, 1, 112, 45),
(2, 6, 84, 25),
(2, 15, 90, 25),
(2, 21, 117, 55),
(2, 36, 46, 32),
(2, 45, 45, 24),
(2, 56, 64, 35),
(2, 67, 121, 24),
(2, 69, 116, 63),
(2, 72, 71, 47),
(2, 74, 65, 52),
(2, 76, 126, 34),
(2, 80, 69, 61),
(2, 82, 131, 56),
(2, 85, 56, 40),
(2, 87, 111, 61),
(2, 88, 131, 19),
(2, 90, 40, 38),
(3, 1, 61, 25),
(3, 3, 108, 57),
(3, 5, 125, 59),
(3, 6, 122, 41),
(3, 10, 113, 60),
(3, 13, 65, 22),
(3, 15, 37, 55),
(3, 17, 93, 32),
(3, 19, 35, 65),
(3, 22, 127, 32),
(3, 24, 87, 25),
(3, 26, 127, 45),
(3, 28, 132, 29),
(3, 29, 113, 34),
(3, 31, 35, 54),
(3, 33, 53, 63),
(3, 34, 46, 39),
(3, 36, 63, 41),
(3, 38, 125, 37),
(3, 41, 75, 29),
(3, 43, 71, 47),
(3, 44, 105, 56),
(3, 50, 43, 48),
(3, 54, 105, 38),
(3, 58, 80, 40),
(3, 64, 69, 33),
(3, 69, 113, 57),
(4, 4, 53, 54),
(4, 6, 56, 52),
(4, 9, 48, 16),
(4, 14, 104, 33),
(4, 16, 77, 57),
(4, 18, 129, 43),
(4, 19, 122, 18),
(4, 23, 57, 49),
(4, 25, 80, 37),
(4, 26, 79, 55),
(4, 28, 89, 59),
(5, 30, 62, 49),
(5, 34, 107, 64),
(5, 35, 124, 60),
(5, 37, 55, 18),
(5, 39, 53, 38),
(5, 40, 130, 29),
(5, 43, 64, 49),
(5, 44, 116, 35),
(5, 47, 58, 27),
(5, 49, 108, 20),
(5, 50, 92, 26),
(5, 55, 117, 34),
(6, 3, 97, 28),
(6, 6, 65, 38),
(6, 8, 121, 46),
(6, 23, 56, 62),
(6, 26, 47, 52),
(6, 36, 52, 53),
(6, 44, 91, 60),
(6, 58, 100, 39),
(6, 82, 121, 58),
(7, 22, 74, 26),
(7, 27, 125, 26),
(7, 33, 100, 21),
(7, 36, 62, 59),
(7, 39, 101, 63),
(7, 42, 43, 61),
(7, 49, 111, 43),
(7, 55, 109, 52),
(7, 68, 106, 44),
(7, 90, 74, 28),
(8, 19, 77, 46),
(8, 24, 48, 42),
(8, 27, 86, 41),
(8, 30, 69, 48),
(8, 33, 93, 22),
(8, 35, 118, 20),
(8, 50, 49, 47),
(8, 59, 115, 46),
(8, 60, 52, 33),
(8, 66, 45, 27),
(8, 74, 95, 21),
(8, 88, 85, 45);

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE IF NOT EXISTS `hospital` (
  `hosId` int(10) NOT NULL AUTO_INCREMENT COMMENT 'hospital''s id',
  `hosName` varchar(50) NOT NULL COMMENT 'hospital''s name',
  `address` text NOT NULL COMMENT 'hospital''s address',
  `district` varchar(20) NOT NULL,
  `province` varchar(15) NOT NULL,
  `tel` varchar(50) NOT NULL,
  `web` text NOT NULL COMMENT 'hospital''s website',
  `organization` varchar(10) NOT NULL,
  `insurance` varchar(10) NOT NULL,
  `groupId` int(10) DEFAULT NULL COMMENT 'group id',
  PRIMARY KEY (`hosId`),
  KEY `groupId` (`groupId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=107 ;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`hosId`, `hosName`, `address`, `district`, `province`, `tel`, `web`, `organization`, `insurance`, `groupId`) VALUES
(1, 'โรงพยาบาลกรุงเทพคริสเตียน', '124 ถนนสีลม แขวงสุริยวงศ์', 'บางรัก', 'กรุงเทพมหานคร', '0-2625-9000, 0-2235-1000', 'http://www.bangkokchristianhospital.org/', 'เอกชน', 'ไม่รับ', NULL),
(2, 'โรงพยาบาลกล้วยน้ำไท 1', '80 ซ.แสงจันทร์-รูเบีย ถ.สุขุมวิท แขวงพระโขนง', 'คลองเตย', 'กรุงเทพมหานคร', '0-2769-2000', 'http://www.kluaynamthai.com/', 'เอกชน', 'รับ', NULL),
(3, 'โรงพยาบาลกลาง', '514 ถนนหลวง แขวงวัดเทพศิรินทร์', 'ป้อมปราบศัตรูพ่าย', 'กรุงเทพมหานคร', '0-2220-8000', 'http://www.klanghospital.go.th/', 'รัฐบาล', 'รับ', 2),
(4, 'โรงพยาบาลจุฬาลงกรณ์', '183 ถนนพระราม 4', 'ปทุมวัน', 'กรุงเทพมหานคร', '0-2652-4600-29', 'http://www.chulalongkornhospital.go.th/', 'รัฐบาล', 'รับ', 7),
(5, 'โรงพยาบาลเจ้าพระยา', '113/44 ซอยรุ่งประชา ถนนบรมราชชนนี แขวงอรุณอมรินทร์', 'บางกอกน้อย', 'กรุงเทพมหานคร', '0-2884-7000', 'http://www.chaophya.com/', 'เอกชน', 'ไม่รับ', NULL),
(6, 'โรงพยาบาลเซนต์หลุยส์', '215 ถนนสาทรใต้', 'สาทร', 'กรุงเทพมหานคร', '0-2675-5000', 'http://www.saintlouis.or.th/', 'เอกชน', 'ไม่รับ', NULL),
(7, 'โรงพยาบาลตากสิน', '543 ถนนสมเด็จเจ้าพระยา แขวงคองสาน', 'คลองสาน', 'กรุงเทพมหานคร', '0-2437-0116-29', 'http://www.taksinhosp.go.th/', 'รัฐบาล', 'รับ', 2),
(8, 'โรงพยาบาลตำรวจ', '492/1 ถนนพระราม 1 แขวงปทุมวัน', 'ปทุมวัน', 'กรุงเทพมหานคร', '0-2252-8111-25', 'http://www1.pgh.go.th/home.php?', 'รัฐบาล', 'รับ', 3),
(9, 'โรงพยาบาลไทยนครินทร์', '345 บางนา-ตราด กม.3.5 ข.บางนา', 'บางนา', 'กรุงเทพมหานคร', '0-2361-2712-61', 'http://www.thainakarin.co.th/th/', 'เอกชน', 'ไม่รับ', NULL),
(10, 'โรงพยาบาลนครธน', '49 ถนนพระรามที่ 2 แขวงแสมดำ', 'บางขุนเทียน', 'กรุงเทพมหานคร', '0-2416-5454, 0-2895-4000', 'http://www.nakornthon.com/', 'เอกชน', 'ไม่รับ', NULL),
(11, 'โรงพยาบาลบำรุงราษฏร์', '33 สุขุมวิท ซอย 3 ( นานาเหนือ)', 'วัฒนา', 'กรุงเทพมหานคร', '0-2667-1000', 'http://www.bumrungrad.com/thai', 'เอกชน', 'ไม่รับ', NULL),
(12, 'โรงพยาบาลเปาโล เมโมเรียลโชคชัย 4', '15/10 ซอยโชคชัย 4 ถนนลาดพร้าว 53', 'ลาดพร้าว', 'กรุงเทพมหานคร', '0-2514-4140-9', 'http://paolohealthcare.com/Paolo/CC4/', 'เอกชน', 'รับ', NULL),
(13, 'โรงพยาบาลเปาโล เมโมเรียลพหลโยธิน', '670/1 ถนนพหลโยธิน', 'พญาไท', 'กรุงเทพมหานคร', '0-2279-7000-9', 'http://paolohealthcare.com/Home/', 'เอกชน', 'รับ', NULL),
(14, 'โรงพยาบาลพญาไท 1', '364 ถนนศรีอยุธยา', 'ราชเทวี', 'กรุงเทพมหานคร', '0-2642-7373', 'http://www.phyathai.com/home/th', 'เอกชน', 'ไม่รับ', NULL),
(15, 'โรงพยาบาลพระมงกุฎเกล้า', '315 ถนนราชวิถี', 'ราชเทวี', 'กรุงเทพมหานคร', '0-2746-7567-9', 'http://www.pmk.ac.th/', 'รัฐบาล', 'รับ', 15),
(16, 'โรงพยาบาลพระราม 9', '99 ซอยโรงพยาบาลพระรามเก้า ถนนพระราม 9', 'ห้วยขวาง', 'กรุงเทพมหานคร', '0-2202-9999', 'http://www.praram9.com/', 'เอกชน', 'ไม่รับ', NULL),
(17, 'โรงพยาบาลเพชรเวช', '2469/15 ถนนเพชรบุรีตัดใหม่ ระหว่างแยกเอกมัย-คลองตัน', 'ห้วยขวาง', 'กรุงเทพมหานคร', '0-2718-1515', 'http://www.petcharavejhospital.com/home.php', 'เอกชน', 'รับ', NULL),
(18, 'โรงพยาบาลภูมิพลอดุลยเดช', 'ถนนพหลโยธิน 56 แขวงสีกัน', 'ดอนเมือง', 'กรุงเทพมหานคร', '0-2534-7000', 'http://www.bhumibolhospital.rtaf.mi.th/', 'รัฐบาล', 'รับ', 15),
(19, 'โรงพยาบาลมนารมย์', '9 สุขุมวิท 70/3', 'บางนา', 'กรุงเทพมหานคร', '0-2725-9595', 'http://www.manarom.com/', 'เอกชน', 'ไม่รับ', NULL),
(20, 'โรงพยาบาลมิชชั่น', '430 ถนนพิษณุโลก', 'ดุสิต', 'กรุงเทพมหานคร', '0-2282-1100, 0-2281-1422', 'http://www.mission-hospital.org/', 'เอกชน', 'ไม่รับ', NULL),
(21, 'โรงพยาบาลเมโย', '2012/5-7 ถนนพหลโยธิน สี่แยกเกษตร', 'จตุจักร', 'กรุงเทพมหานคร', '0-2579-1770-4', 'http://www.mayokaset.com/th/index.php', 'เอกชน', 'ไม่รับ', NULL),
(22, 'โรงพยาบาลยันฮี', '454 ซอยจรัญสนิทวงศ์ 90 แขวงบางอ้อ', 'บางพลัด', 'กรุงเทพมหานคร', '0-2879-0300', 'http://th.yanhee.net/', 'เอกชน', 'รับ', NULL),
(23, 'โรงพยาบาลราชวิถี', '2 ถนนพญาไท แขวงทุ่งพญาไท', 'ราชเทวี', 'กรุงเทพมหานคร', '0-2354-8108-37', 'http://www.rajavithi.go.th/web2014/index.php', 'รัฐบาล', 'รับ', 4),
(24, 'โรงพยาบาลรามคำแหง', '2138 ถนนรามคำแหง 34 แขวงหัวหมาก', 'บางกะปิ', 'กรุงเทพมหานคร', '0-2374-0200-16', 'http://www.ram-hosp.co.th/', 'เอกชน', 'ไม่รับ', NULL),
(25, 'โรงพยาบาลรามาธิบดี', '270 ถนนพระรามหก แขวงพญาไท', 'ราชเทวี', 'กรุงเทพมหานคร', '0-2354-7308-10', 'http://med.mahidol.ac.th/index.php', 'รัฐบาล', 'รับ', 5),
(26, 'โรงพยาบาลลาดพร้าว', '2699 ถนนลาดพร้าว 95-97 แขวงวังทองหลาง', 'วังทองหลาง', 'กรุงเทพมหานคร', '0-2530-2556-69', 'http://www.ladpraohospital.com/lph_site2/index_th.php', 'เอกชน', 'รับ', NULL),
(27, 'โรงพยาบาลวชิรพยาบาล', '681 ถนนสามเสน ตำบลวชิรพยาบาล', 'ดุสิต', 'กรุงเทพมหานคร', '0-2244-3000', 'http://www.vajira.ac.th/php/', 'รัฐบาล', 'รับ', 2),
(28, 'โรงพยาบาลวิภาราม', '2677 ถนนพัฒนาการ แขวงสวนหลวง', 'สวนหลวง', 'กรุงเทพมหานคร', '0-2916-6391-2', 'http://www.vibharam.com/th/', 'เอกชน', 'รับ', NULL),
(29, 'โรงพยาบาลเวชธานี', '1 ถนนลาดพร้าว 111 แขวงคลองจั่น', 'บางกะปิ', 'กรุงเทพมหานคร', '0-2734-0000', 'http://www.vejthani.com/lp/index.php/Orthopedics_th_Google-Search?gclid=CM3s1v2bhMUCFVUUjgodNbMArw', 'เอกชน', 'ไม่รับ', NULL),
(30, 'โรงพยาบาลศรีวิชัย 1', '240/2-7 ถนนจรัญสนิทวงศ์ 31/1 แขวงบ้านช่างหล่อ', 'บางกอกน้อย', 'กรุงเทพมหานคร', '0-2412-0055-60', 'http://www.srivichai.co.th/', 'เอกชน', 'ไม่รับ', NULL),
(31, 'โรงพยาบาลศิครินทร์', 'สี่แยกศิครินทร์ 4/29 ถนนศรีนครินทร์', 'บางนา', 'กรุงเทพมหานคร', '0-2366-9900-99', 'http://www.sikarin.com/th/cover_page', 'เอกชน', 'รับ', NULL),
(32, 'โรงพยาบาลศิริราช', '2 ถ.พรานนก แขวงศิริราช', 'บางกอกน้อย', 'กรุงเทพมหานคร', '0-2419-7000', 'http://www.siphhospital.com/', 'รัฐบาล', 'รับ', 5),
(33, 'โรงพยาบาลสมเด็จพระปิ่นเกล้า', '1028 ถนน สมเด็จพระเจ้าตากสิน 22 แขวงบุคคโล', 'ธนบุรี', 'กรุงเทพมหานคร', '0-2468-0116-20', 'http://www.pinklao.go.th/website/', 'รัฐบาล', 'รับ', 15),
(34, 'โรงพยาบาลสมิติเวช', '133 สุขุมวิท 49 คลองเตยเหนือ', 'วัฒนา', 'กรุงเทพมหานคร', '0-2711-8000', 'http://www.samitivej.co.th/', 'เอกชน', 'ไม่รับ', NULL),
(35, 'โรงพยาบาลสินแพทย์', '9/99 ถ.รามอินทรา (กม.8.5) แขวงคันนายาว', 'คันนายาว', 'กรุงเทพมหานคร', '0-2793-5099', 'http://www.synphaet.co.th/', 'เอกชน', 'ไม่รับ', NULL),
(36, 'โรงพยาบาลสุขุมวิท', '1411 ถนนสุขุมวิท แขวงพระโขนงเหนือ', 'วัฒนา', 'กรุงเทพมหานคร', '0-2391-0011', 'http://www.sukumvithospital.com/', 'เอกชน', 'ไม่รับ', NULL),
(37, 'โรงพยาบาลหลวงพ่อทวีศักดิ์ ชุตินุธโร อุทิศ', '39 หมู่ 4 ซอยเพชรเกษม81 แขวงหนองแขม', 'หนองแขม', 'กรุงเทพมหานคร', '0-2429-3575-81', 'http://www.lpthosp.go.th/', 'รัฐบาล', 'รับ', 2),
(38, 'โรงพยาบาลหัวเฉียว', '665 ถนนบำรุงเมือง แขวงคลองมหานาค', 'ป้อมปราบศัตรูพ่าย', 'กรุงเทพมหานคร', '0-2223-1351-70', 'http://www.hc-hospital.com/', 'เอกชน', 'รับ', NULL),
(39, 'โรงพยาบาลชลประทาน', 'กรมชลประทานปากเกร็ด', 'ปากเกร็ด', 'นนทบุรี', '0-2962-5731-7', 'http://pcmc.swu.ac.th/', 'เอกชน', 'ไม่รับ', NULL),
(40, 'โรงพยาบาลนนทเวช', '30/8 ถ.งามวงศ์วาน บางเขน', 'เมือง', 'นนทบุรี', '0-2598-0102-7', 'http://www.nonthavej.co.th/', 'รัฐบาล', 'รับ', NULL),
(41, 'โรงพยาบาลบางกรวย', '44 หมู่ 8 ตำบลวัดชลอ', 'บางกรวย', 'นนทบุรี', '0-2447-5582-3', 'http://www.bangkruai.org/index8.1.html', 'รัฐบาล', 'รับ', NULL),
(42, 'โรงพบายาลบางโพ', '95 ซอยแดรี่เบลล์ ถนนประชาราษฎร์ 2', 'บางซื่อ', 'นนทบุรี', '0-2221-6141-54', 'http://bangpo-hospital.com/', 'เอกชน', 'รับ', NULL),
(43, 'โรงพยาบาลศรีธัญญา', '47 หมู่ 4 ถนนติวานนท์ ตำบลตลาดขวัญ', 'เมือง', 'นนทบุรี', '0-2525-0981-5', 'http://www.srithanya.go.th/', 'รัฐบาล', 'รับ', NULL),
(44, 'โรงพยาบาลรัทรินทร์ (ศิครินทร์)', '999/23-9 บางปูใหม่ ตำบลบางปูใหม่', 'เมือง', 'สมุทรปราการ', '0-2323-2991-7, 0-2323-3927-35, 0-2707-9146-50', 'http://www.sikarin.com/th/', 'เอกชน', 'รับ', NULL),
(45, 'โรงพยาบาลสมุทรปราการ', '71 ตำบลปากน้ำ', 'เมือง', 'สมุทรปราการ', '0-2389-3116, 0-2389-3116', 'http://www.smpkhos.go.th/', 'รัฐ', 'รับ', 4),
(46, 'โรงพยาบาลบางบ่อ', '89 หมู่ 1 ถ.เทพารักษ์ ตำบลบางเพรียง', 'บางบ่อ', 'สมุทรปราการ', '0-2338-1066 , 0-2338-1133, 0-2338-1850', 'https://bangbohospitaldotcom.wordpress.com/', 'รัฐ', 'รับ', 4),
(47, 'โรงพยาบาลจุฬาเวช', '1525/13-14 ม.4 ต.เทพารักษ์', 'เมือง', 'สมุทรปราการ', '02-758-2501-4 ต่อ 333', 'http://www.chulavej.com/', 'เอกชน', 'ไม่รับ', NULL),
(48, 'โรงพยาบาลจุฬารัตน์ 1', '68/1 ถนนบางนา-ตราด ตำบล บางพลีใหญ่', 'บางพลี', 'สมุทรปราการ', '0-2316-9561-2, 02-316-8345-9, 02-316-1698', 'http://www.chularat.com', 'เอกชน', 'รับ', 8),
(49, 'โรงพยาบาลจุฬารัตน์ 5', '119/7 หมู่ 16 เทพารักษ์ ตำบลบางเสาธง', 'บางเสาธง', 'สมุทรปราการ', '02-315-1870', 'http://www.chularat.com/', 'เอกชน', 'รับ', 8),
(50, 'โรงพยาบาลสำโรงการแพทย์', '1748 ถ.สุขุมวิท 78 ต.สำโรงเหนือ', 'เมือง', 'สมุทรปราการ', '0-2361-0070-9 ต่อ 1234-6', 'http://www.samrong-hosp.com/', 'เอกชน', 'รับ', NULL),
(51, 'โรงพยาบาลบางพลี', '88/1 ม.8 ต.บางพลีใหญ่', 'บางพลี', 'สมุทรปราการ', '0-2312-2990', 'http://bphos.net/', 'รัฐ', 'รับ', 4),
(52, 'โรงพยาบาลกรุงเทพพระประแดง', '288 ม.1 ถ.สุขสวัสดิ์', 'พระสมุทรเจดีย์', 'สมุทรปราการ', '0-2818-9000', 'http://www.bangkokhospital.com/en/ind', 'เอกชน', 'รับ', NULL),
(53, 'โรงพยาบาลบางจาก', '35/3 ม.8 ต.บางจาก', 'พระประแดง', 'สมุทรปราการ', '0-2464-3002', 'http://bchhosp.familyds.com/wordpress/', 'รัฐ', 'รับ', 4),
(54, 'โรงพยาบาลเปาโลเมโมเรียลสมุทรปราการ', '123 ม.8 ถ.ศรีนครินทร์ ต.บางเมือง', 'เมือง', 'สมุทรปราการ', '0-2389-4916', 'http://paolohealthcare.com', 'เอกชน', 'รับ', NULL),
(55, 'โรงพยาบาลยุวประสาทไวทโยอุปถัมถ์', '61 ซอยเทศบาล 19 ตำบลปากน้ำ', 'เมือง', 'สมุทรปราการ', '02-3843381-3 ,02-3941845', 'http://yuwahospital.com/', 'รัฐ', 'ไม่รับ', 4),
(56, 'โรงพยาบาลเมืองสมุทรปู่เจ้าฯ', '83/16 ปู่เจ้าสมิงพราย ตำบล สำโรงกลาง', 'พระประแดง', 'สมุทรปราการ', '0-2754-2800', 'http://www.muangsamut.net/', 'เอกชน', 'รับ', 9),
(57, 'โรงพยาบาลเมืองสมุทรบางปู', '1 - 1/ 1 ถนนสุขุมวิท ม.6 ต.บางปูใหม่', 'เมือง', 'สมุทรปราการ', '0-2323-4081- 3', 'http://www.muangsamut.net/', 'เอกชน', 'รับ', 9),
(58, 'โรงพยาบาลเมืองสมุทรปากน้ำ', '156 ซ.เทศบาล 12 ต.ปากน้ำ', 'เมือง', 'สมุทรปราการ', '0-2389-4455-60, 0-2395-0772 , 0-2387-2850', 'http://www.muangsamut.net/', 'เอกชน', 'รับ', 9),
(59, 'โรงพยาบาลพระสมุทรเจดีย์ สวากยานนท์', '172 ม.3 ต.ปากคลองบางปลากด', 'พระสมุทรเจดีย์', 'สมุทรปราการ', '0-2425-9407, 0-2425-9767', 'https://psmh.wordpress.com/', 'รัฐ', 'ไม่รับ', NULL),
(60, 'โรงพยาบาลปิยะมินทร์', '35/2 ถ.บางนาตราด กม 6.5 ตำบลบางแก้ว', 'บางพลี', 'สมุทรปราการ', '02-316-0038-9', 'http://www.piyamin.com/', 'เอกชน', 'รับ', NULL),
(61, 'โรงพยาบาลรวมชัยประชารักษ์', '168/26 กม.29 ถ.บางนา-ตราด ต.บางบ่อ', 'บางบ่อ', 'สมุทรปราการ', '0-2708-7500-20', 'http://www.ruamchai-hos.com', 'เอกชน', 'ไม่รับ', NULL),
(62, 'โรงพยาบาลบางนา 2', '9/9 ม.3 ถ.บางนา-ตราด ต.บางเสาธง', 'บางเสา', 'สมุทรปราการ', '0-2740-1800-6', 'http://www.bangna2.com/', 'เอกชน', 'รับ', 10),
(63, 'โรงพยาบาลบางนา 5', '55 ม.4 ต.บางพลีใหญ่', 'บางพลี', 'สมุทรปราการ', '02-138-1155-64', 'http://www.bangna.co.th/home_bangna5.', 'เอกชน', 'รัับ', 10),
(64, 'โรงพยาบาลโรงเรียนนายเรือ', '๒๐๔ ถ.สุขุมวิท ต.ปากน้ำ', 'เมือง', 'สมุทรปราการ', '0-2475-7430 ,0-2475-7433-4', 'http://www.rtna.ac.th/departments/hospital/', 'รัฐ', 'ไม่รับ', 6),
(65, 'โรงพยาบาลกระทุ่มแบน', '50/4 ถนนสุคนธวิท ตำบลตลาดกระทุ่มแบน', 'กระทุ่มแบน', 'สมุทรสาคร', '0-3447-1466-7, 0-3484-4416', 'https://www.facebook.com/pages/โรงพยาบาลกระทุ่มแบน/194124220677257', 'รัฐ', 'รับ', 4),
(66, 'โรงพยาบาลสมุทรสาคร', '1500 ถ.เอกชัย ต.มหาชัย', 'เมือง', 'สมุทรสาคร', '0-3442-7099-105', 'http://www.skh.go.th/skh/', 'รัฐ', 'รับ', 4),
(67, 'โรงพยาบาลเอกชัย', '99/9 หมู่ 4 ถนนเอกชัย ตำบลโคกขาม', 'เมือง', 'สมุทรสาคร', '034-417-999-210-209 ,1715', 'http://www.ekachaihospital.com/', 'เอกชน', 'ไม่รับ', NULL),
(68, 'โรงพยาบาลมหาชัย', '927/43 ค ถ.เศรษฐกิจ 1 ต.มหาชัย', 'เมือง', 'สมุทรสาคร', '0-3442-4990-4,0-3481-0782', 'http://www.mahachaihospital.com/services/', 'เอกชน', 'ไม่รับ', 11),
(69, 'โรงพยาบาลมหาชัย 2', '301/1 หมู่ 6 ถ.เพชรเกษม ต.อ้อมน้อย', 'กระทุ่มแบน', 'สมุทรสาคร', '0-2810-3442,0-2420-5948', 'http://www.mahachai2.com', 'เอกชน', 'รับ', 11),
(70, 'โรงพยาบาลวิชัยเวช อินเตอร์เนชั่นแนล สมุทรสาคร', '93/256 ถนนเศรษฐกิจ 1 ตำบลท่าทราย', 'เมือง', 'สมุทรสาคร', '0-3482-6708-29', 'http://www.vichaivejsamutsakhon.com/index.php', 'เอกชน', 'รับ', 12),
(71, 'โรงพยาบาลวิชัยเวช อินเตอร์เนชั่นแนล อ้อมน้อย', '74/5 หมู่้ 4 ถนนเพชรเกษม ตำบลอ้อมน้อย', 'กระทุ่มแบน', 'สมุทรสาคร', '0-2431-0070', 'http://www.vichaivejomnoi.com/', 'เอกชน', 'รับ', 12),
(72, 'โรงพยาบาลบ้านแพ้ว (องค์การมหาชน)', '198 หมู่ 1 ถ.บ้านแพ้ว-พระประโทน ต.บ้านแพ้ว', 'บ้านแพ้ว', 'สมุทรสาคร', '034-419555,034-419567', 'http://www.bphosp.or.th/index1.html', 'รัฐ', 'ไม่รับ', 4),
(73, 'โรงพยาบาลคลองหลวง', '30 ม.7 ถ.บางขันธ์-หนองเสือ ต.คลองหก', 'คลองหลวง', 'ปทุมธานี', '02-9046446-9', 'http://klonglaunghosp.siam2web.com/?cid=209070', 'รัฐบาล', 'รับ', 13),
(74, 'โรงพยาบาลธรรมศาสตร์เฉลิมพระเกียรติ', '95 ม.8 ต.คลองหนึ่ง', 'คลองหลวง', 'ปทุมธานี', '0-2926-9999', 'http://www.hospital.tu.ac.th/', 'รัฐบาล', 'รับ', NULL),
(75, 'โรงพยาบาลมหาวชิราลงกรณธัญบุรี', '139 ถ.รังสิต-นครนายก ต.บึงสนั่น', 'ธัญบุรี', 'ปทุมธานี', '02 5461960-6', 'http://pathumcancer.thaiddns.com/mcc/', 'รัฐบาล', 'รับ', 4),
(76, 'โรงพยาบาลปทุมธานี', '7 ถ.ปทุมธานี-ลาดหลุมแก้ว ต.บางปรอก', 'เมือง', 'ปทุมธานี', '0-2598-8888', 'http://www.pth.go.th/', 'รัฐบาล', 'รับ', 4),
(77, 'โรงพยาบาลกรุงสยามเซนต์คาร์ลอส', '5/84 ม.2 ถ.ติวานนท์ ต.บ้านกลาง', 'เมือง', 'ปทุมธานี', '0-2975-6700', 'http://www.stcarlos.com/', 'เอกชน', 'ไม่รับ', NULL),
(78, 'โรงพยาบาลปทุมเวช', '1 ซ.รังสิต-ปทุมธานี 6 ต.ประชาธิปัตย์', 'ธัญบุรี', 'ปทุมธานี', '02-5671991-9, 02-9584500-22', 'http://www.pathumvech.com/', 'เอกชน', 'รับ', NULL),
(79, 'โรงพยาบาลเอกปทุม', '757 ถ.รังสิตนครนายก ต.ประชาธิปัตย์', 'ธัญบุรี', 'ปทุมธานี', '029962211-5', 'http://www.akepathumhospital.com/th/', 'เอกชน', 'รับ', NULL),
(80, 'โรงพยาบาลแพทย์รังสิต', '733/347 ม.8 ถ.พหลโยธิน76 ต.คูคต', 'ลำลูกกา', 'ปทุมธานี', '02-9989888', 'http://www.mcrgh.com', 'เอกชน', 'รับ', NULL),
(81, 'โรงพยาบาลตุลาการเฉลิมพระเกียรติ', '103 ถ.ศาลายา-บางภาษี ต.คลองโยง', 'พุทธมณฑล', 'นครปฐม', '034-298265-9', 'http://www.th.coj.go.th/', 'รัฐบาล', 'ไม่รับ', 14),
(82, 'โรงพยาบาลกำแพงแสน', '47 ม.4 ต.กำแพงแสน', 'กำแพงแสน', 'นครปฐม', '034 281 686', 'http://hospital.moph.go.th/kumpangsaen/', 'รัฐบาล', 'รับ', 4),
(83, 'โรงพยาบาลนครชัยศรี', '5 ม.3 ต.นครชัยศรี', 'นครชัยศรี', 'นครปฐม', '034-331156-74', 'http://www.nakhonchaisihospital.net/', 'รัฐบาล', 'รับ', 4),
(84, 'โรงพยาบาลห้วยพลู', '1/1 ม.1 ต.ห้วยพลู', 'นครชัยศรี', 'นครปฐม', '034-389500', 'http://www.huayploohospital.com/huayploo.php', 'รัฐบาล', 'รับ', 4),
(85, 'โรงพยาบาลบางเลน', '80 ม.6 ต.บางเลน', 'บางเลน', 'นครปฐม', '034 234 797', 'http://banglenhospital.com/', 'รัฐบาล', 'รับ', 4),
(86, 'โรงพยาบาลพุทธมลฑล', '140 ม.1 ถ.ศาลายา - นครชัยศรี ต.ศาลายา', 'พุทธมณฑล', 'นครปฐม', '02-4446032-33', 'http://www.phut-hos.com/', 'รัฐบาล', 'รับ', 4),
(87, 'โรงพยาบาลนครปฐม', '196 ถ.เทศ7 ต.พระปฐมเจดีย์', 'เมือง', 'นครปฐม', '0 3425 8749', 'http://nkpthospital.com', 'รัฐบาล', 'รับ', 4),
(88, 'โรงพยาบาลสามพราน', '35/10 ม.1 ถ.เพชรเกษม ต.ท่าตลาด', 'สามพราน', 'นครปฐม', '034-321998,034-311021', 'http://hospital.moph.go.th/sampran/', 'รัฐบาล', 'รับ', 4),
(89, 'โรงพยาบาลศาลายา', '95 ม.3 ถ.ศาลายา-นครชัยศรี ต.ศาลายา', 'พุทธมณฑล', 'นครปฐม', '0-2889-2601-3', 'http://www.salayahospital.co.th/index.php/en/', 'เอกชน', 'ไม่รับ', NULL),
(90, 'โรงพยาบาลเทพากร', '24 ซ. 1 ถ.เทศา ต.พระปฐมเจดีย์', 'เมือง', 'นครปฐม', '0-3427-0777, 0-3421-2718-25', 'https://www.facebook.com/pages/โรงพยาบาลเทพากร-นครปฐม/386087591474924', 'เอกชน', 'รับ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE IF NOT EXISTS `section` (
  `secId` int(10) NOT NULL COMMENT 'section''s id',
  `secName` varchar(15) NOT NULL COMMENT 'section''s name',
  PRIMARY KEY (`secId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`secId`, `secName`) VALUES
(1, 'อายุรกรรม'),
(2, 'ศัลยกรรม'),
(3, 'สูตินารีเวช'),
(4, 'จักษุ'),
(5, 'ผิวหนัง'),
(6, 'อวัยวะปัสสาวะ'),
(7, 'หัวใจ'),
(8, 'หู คอ จมูก');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `has`
--
ALTER TABLE `has`
  ADD CONSTRAINT `has_ibfk_2` FOREIGN KEY (`hosId`) REFERENCES `hospital` (`hosId`),
  ADD CONSTRAINT `has_ibfk_1` FOREIGN KEY (`secId`) REFERENCES `section` (`secId`);

--
-- Constraints for table `hospital`
--
ALTER TABLE `hospital`
  ADD CONSTRAINT `hospital_ibfk_1` FOREIGN KEY (`groupId`) REFERENCES `hospital` (`hosId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;