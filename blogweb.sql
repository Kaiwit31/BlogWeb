CREATE DATABASE  IF NOT EXISTS `blog` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `blog`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: blog
-- ------------------------------------------------------
-- Server version	8.4.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `desc` varchar(1000) NOT NULL,
  `img` varchar(255) NOT NULL,
  `date` date DEFAULT NULL,
  `uid` int NOT NULL,
  `cat` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_idx` (`uid`),
  CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (8,'เทคโนโลยีแห่งอนาคต: แนวโน้มที่กำลังเปลี่ยนโลก','<p>ในโลกปัจจุบัน เทคโนโลยีมีบทบาทสำคัญในการเปลี่ยนแปลงวิถีชีวิตของเราอย่างต่อเนื่อง ไม่ว่าจะเป็นปัญญาประดิษฐ์ (AI) อินเทอร์เน็ตของสรรพสิ่ง (IoT) หรือบล็อกเชน (Blockchain) เรามาดูกันว่าแนวโน้มเทคโนโลยีที่กำลังมาแรงในอนาคตมีอะไรบ้าง</p><p><br></p><h3>1. ปัญญาประดิษฐ์ (AI) และการเรียนรู้ของเครื่อง (Machine Learning)</h3><p>AI กำลังเข้ามามีบทบาทในชีวิตประจำวันของเรามากขึ้น ตั้งแต่ผู้ช่วยอัจฉริยะ (เช่น Siri และ Google Assistant) ไปจนถึงระบบการวิเคราะห์ข้อมูลที่สามารถทำนายแนวโน้มในอนาคตได้ นอกจากนี้ AI ยังถูกนำไปใช้ในอุตสาหกรรมสุขภาพ การเงิน และโลจิสติกส์เพื่อเพิ่มประสิทธิภาพในการทำงาน</p><p><br></p><h3>2. อินเทอร์เน็ตของสรรพสิ่ง (IoT) และบ้านอัจฉริยะ</h3><p>IoT เชื่อมต่ออุปกรณ์ต่างๆ ผ่านอินเทอร์เน็ต ทำให้เราสามารถควบคุมอุปกรณ์ภายในบ้านผ่านสมาร์ทโฟน เช่น หลอดไฟอัจฉริยะ กล้องวงจรปิด หรือเครื่องใช้ไฟฟ้า นอกจากนี้ IoT ยังมีบทบาทสำคัญในภาคอุตสาหกรรม เช่น การตรวจสอบสภาพเครื่องจักรแบบเรียลไทม์</p>','1740808293459DALLÂ·E 2025-03-01 12.46.42 - A futuristic concept of artificial intelligence, featuring a glowing AI brain with circuits, a smart home with IoT devices, a blockchain network, and .webp','2025-03-01',13,'technology'),(10,'ไข่: อาหารมหัศจรรย์ที่เต็มไปด้วยประโยชน์','<p>ไข่เป็นหนึ่งในอาหารที่ได้รับความนิยมทั่วโลก ไม่ว่าจะนำไปทอด ต้ม ลวก หรือเป็นส่วนผสมในเมนูต่าง ๆ ไข่มีคุณค่าทางโภชนาการสูงและเป็นแหล่งโปรตีนที่ดี มาดูกันว่าไข่มีประโยชน์อย่างไร และวิธีการบริโภคไข่ที่ดีต่อสุขภาพมีอะไรบ้าง</p><p><br></p><h3>1. คุณค่าทางโภชนาการของไข่</h3><p>ไข่อุดมไปด้วยสารอาหารที่จำเป็นต่อร่างกาย เช่น:</p><p><br></p><ul><li><strong>โปรตีนคุณภาพสูง</strong>: ไข่เป็นแหล่งโปรตีนที่สมบูรณ์ มีกรดอะมิโนที่จำเป็นครบถ้วน</li><li><strong>วิตามินและแร่ธาตุ</strong>: ไข่มีวิตามิน A, D, E, B12 และแร่ธาตุ เช่น ธาตุเหล็ก สังกะสี และซีลีเนียม</li><li><strong>ไขมันดี</strong>: ไข่มีไขมันไม่อิ่มตัวที่ดีต่อสุขภาพหัวใจ</li><li><strong>โคลีน</strong>: สารอาหารที่ช่วยบำรุงสมองและระบบประสาท</li></ul><p><br></p>','1740808534266DALLÂ·E 2025-03-01 12.55.27 - A beautifully arranged composition of eggs in various forms_ boiled eggs, poached eggs, scrambled eggs, and a fried egg on toast. The scene is set on .webp','2025-03-01',13,'food'),(11,'โคลด โมเนต์: ศิลปินผู้บุกเบิกศิลปะแบบอิมเพรสชันนิสม์','<p>โคลด โมเนต์ (Claude Monet) เป็นหนึ่งในศิลปินที่มีอิทธิพลมากที่สุดในโลกศิลปะ และเป็นผู้บุกเบิกแนวทางของศิลปะอิมเพรสชันนิสม์ (Impressionism) ซึ่งเปลี่ยนโฉมหน้าของศิลปะตะวันตกไปตลอดกาล ผลงานของเขาเต็มไปด้วยสีสันสดใส เทคนิคการแปรงพู่กันที่เป็นเอกลักษณ์ และความสามารถในการจับภาพแสงและบรรยากาศของธรรมชา ในปี ค.ศ. 1874 โมเนต์ได้นำเสนอผลงาน \"Impression, Sunrise\" ซึ่งเป็นภาพพระอาทิตย์ขึ้นเหนือท่าเรือเลอ อาฟวร์ งานชิ้นนี้ถูกวิพากษ์วิจารณ์อย่างหนักจากนักวิจารณ์ในขณะนั้น แต่กลับกลายเป็นชื่อที่ใช้เรียกขบวนการ \"อิมเพรสชันนิสม์\" ซึ่งเน้นการใช้สีสดใส การแปรงพู่กันแบบหลวม ๆ และการจับภาพแสงในช่วงเวลาต่าง ๆ ของวัน</p><h3>บทสรุป</h3><p>โคลด โมเนต์ ไม่เพียงแต่เป็นศิลปินที่สร้างสรรค์งานที่สวยงามและเป็นเอกลักษณ์ แต่ยังเป็นผู้ที่เปลี่ยนแนวทางของศิลปะไปสู่ความเป็นอิสระและการแสดงออกที่เป็นธรรมชาติ ผลงานของเขายังคงเป็นแรงบันดาลใจให้กับศิลปินและผู้ที่รักศิลปะทั่วโลกมาจนถึงปัจจุบัน</p>','1740808849413monetart.jpg','2025-03-01',11,'art'),(12,'หลักการออกแบบบ้านที่ตอบโจทย์การใช้งานและความสวยงาม','<p>การออกแบบบ้านถือเป็นก้าวสำคัญที่จะกำหนดคุณภาพชีวิตของผู้อยู่อาศัยในระยะยาว บ้านไม่เพียงเป็นที่พักอาศัย แต่ยังเป็นพื้นที่แห่งความสุข ความทรงจำ และความสบายใจ บทความนี้จะแนะนำหลักการสำคัญในการออกแบบบ้านที่ทั้งสวยงามและตอบโจทย์การใช้งานจริง</p><h2>1. เริ่มต้นจากความต้องการพื้นฐาน</h2><p>จำนวนห้องนอน: พิจารณาจำนวนสมาชิกในครอบครัวและความต้องการห้องรับรองแขก</p><p>พื้นที่ส่วนกลาง: ห้องนั่งเล่น ห้องรับประทานอาหาร ห้องครัว ควรมีขนาดเท่าใด</p><p>พื้นที่พิเศษ: เช่น ห้องทำงาน ห้องอ่านหนังสือ หรือพื้นที่งานอดิเรก</p><p>ที่จอดรถ: จำนวนรถยนต์หรือยานพาหนะที่ต้องการที่จอด</p><h2>2. การจัดวางพื้นที่ใช้สอย (Space Planning)</h2><p>การแบ่งโซน: แยกพื้นที่ส่วนตัว (ห้องนอน) ออกจากพื้นที่ส่วนรวม (ห้องนั่งเล่น ห้องครัว)</p><p>ทางสัญจร: ออกแบบให้การเดินภายในบ้านสะดวก ไม่มีจุดอับหรือพื้นที่ไร้ประโยชน์</p><p>ความเชื่อมโยง: พิจารณาความสัมพันธ์ระหว่างห้องต่างๆ เช่น ห้องครัวควรอยู่ใกล้ห้องรับประทานอาหาร</p><p><br></p>','1740809174756homedesign.jpg','2025-03-01',11,'design');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (11,'test','test@gmail.com','$2b$10$CzfedQu3y0I44XJoosgp4eOyaiEn0TQJM37FrTjQ3xy7uFyqjbjYW',NULL),(12,'test2','test2@gmail.com','$2b$10$f0VNnRtxQTVnd9126tC5jeYl0cC1oh36Ghqszdo9ciDr08XTUZUR2',NULL),(13,'test1','test1@gmail.com','$2b$10$xQ6CCKEM7mXm.PUqPUZgi.CAonYsSqvQllu7E.C0GyZPRUdRW5UrW',NULL),(15,'test3','test3@gmail.com','$2b$10$kjM3nUyR/3BG2PxCtw49PehBuq39fEJWYLYd8qVO6K9LNjgUQJms6',NULL),(16,'test4','test4@gmail.com','$2b$10$G3MwTIHFgyrr.V0Vt9o9WukqJkfKRDnWAm5j09Uytyjz/a/Aq.DsG',NULL),(17,'123','123@gmail.com','$2b$10$s9.USjqrN29emMuKiCk91O/z6Ob3pmTtia9oal3ApGLmJkgATTj6C',NULL),(18,'1234','1234@gmail.com','$2b$10$3DOryvDMIj/5PJWxVGMLMO5JKlK3DWuMsPCdU7HHLMjCETCJy7yN6',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-23 22:52:15
