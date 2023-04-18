-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: olga
-- ------------------------------------------------------
-- Server version	5.7.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_date` varchar(100) DEFAULT NULL,
  `news_name` varchar(100) DEFAULT NULL,
  `news_text` text,
  `image_path` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'2022-01-03','Muir targets world indoor 1000m record in Birmingham ','Olympic 1500m silver medallist Laura Muir will target the world indoor 1000m record at the Müller\r\nIndoor Grand Prix – a World Athletics Indoor Tour Gold meeting – in Birmingham on\r\nSaturday 19 February.<span>...</span><span>\r\n\r\nMuir, the world indoor 1500m silver medallist, is the European indoor 1000m\r\nrecord-holder, having clocked 2:31.93 in Birmingham in 2017. The current world\r\nrecord is held by Maria Mutola, the 2000 Olympic 800m champion, who ran 2:30.94 in\r\nStockholm in 1999.\r\nWith a packed athletics calendar over the next 12 months featuring two global\r\nchampionships – in addition to the European Championships and Commonwealth Games –\r\nMuir, a multiple European indoor champion, is determined to get her year off to a\r\nstrong start.\r\n\r\n\"I\'m currently out in South Africa continuing my preparations for the 2022 season,\r\nso it will be exciting to get a chance to race indoors and I\'m looking forward to\r\ntesting myself over 1000m at the Müller Indoor Grand Prix in Birmingham,” said the\r\n28-year-old, who also holds the European indoor record over 3000m.\r\n\r\n“I had an incredible year in 2021 and it was fun to finish it off by racing in\r\nScotland over cross country, but it’s time to get back to running fast times on the\r\ntrack. Birmingham holds many fond memories for me, winning two medals at the World\r\nIndoor Championships and breaking a number of national records.\r\n\r\n“I ran the British and European record of 2:31.93 on this track in 2017 which made\r\nme the second fastest of all time over the distance, so I would love to try to go\r\none better and break the world indoor record.\r\n\r\n“It won\'t be an easy record to break – it has stood since 1999 – but the track is\r\nfast and the crowd in Birmingham are great, so hopefully I can run it close.\"\r\n\r\nThe Müller Indoor Grand Prix is the fifth World Athletics Indoor Tour Gold meeting\r\nof 2022. There are seven Gold level meetings across the series, starting with\r\nKarlsruhe on 28 January and culminating in Madrid on 2 March.\r\n\r\nOther athletes set to compete in Birmingham include Olympic pole vault champion\r\nMondo Duplantis, world indoor 60m hurdles record-holder Grant Holloway and Olympic\r\n800m silver medallist Keely Hodgkinson.</span>','images/news/imgnews1.jpg'),(2,'2022-01-02','Barega returns to Lievin with world record target','Organisers have\r\nannounced that Ethiopia\'s Selemon Barega is to return to the Meeting Hauts-de-France\r\nPas-de-Calais – a World Athletics Indoor Tour Gold meeting – in Lievin on 17 February,\r\nto tackle the world indoor 3000m record.<span>...</span><span> The world indoor silver\r\nmedallist moved to third on the world indoor all-time list with his performance in\r\nLievin last year, the 21-year-old clocking 7:26.10 to finish second behind his\r\ncompatriot Getnet Wale who ran 7:24.98 to just miss Daniel Komen’s long-standing\r\nworld record of 7:24.90.\r\n\r\nBarega went on to win over 1500m at World Indoor Tour meetings in Torun, where he\r\nset an indoor PB of 3:32.97, and Madrid, before becoming the Olympic 10,000m\r\nchampion in Tokyo.\r\n\r\nBarega has also been announced for the Copernicus Cup in Torun on 22 February, where\r\nhe is set to be joined by Wale and Lamecha Girma, who finished third behind his\r\ncompatriots in Lievin last year, clocking 7:27.98. Before that race, just six men\r\nhad bettered 7:30 for 3000m indoors. Now the figure stands at 10, with the\r\nfourth-place finisher in Lievin last year, Berihu Aregawi, also dipping under the\r\nmark with 7:29.24.\r\n\r\nAlso among those returning to Lievin is Gudaf Tsegay, who broke the world indoor\r\n1500m record last year and this time races the mile.\r\n\r\nOther athletes announced for the meeting include world indoor 60m hurdles\r\nrecord-holder Grant Holloway, Olympic 100m champion Marcell Jacobs and Olympic 1500m\r\nchampion Jakob Ingebrigtsen.</span>','images/news/imgnews2.jpg'),(3,'2021-03-04','Countdown to the 2022 World Athletics Continental Tour','The 2022 World Athletics Continental Tour will commence in just five days with an expanded schedule featuring\r\nmeetings in all six continental areas, beginning in New Zealand.<span>...</span><span>\r\nMore than 130 meetings have been included so far in this year’s Tour, which will be\r\ndivided into four levels – Gold, Silver, Bronze and Challenger. The status of each\r\nmeeting is determined by the quality of competition and prize money on offer.\r\n\r\nSpanning the globe over the next eight months, the Tour is designed to provide\r\nathletes with more high calibre competitive opportunities to earn prize money and\r\nworld ranking points while reaching fans in nearly every corner of the world.\r\n\r\nIn 2021, 6682 athletes from 147 countries were involved in the Continental Tour,\r\nwith two world records, 12 area records, 99 national records and 1377 personal bests\r\nset across the 69 meetings.\r\n\r\nThe 2022 calendar currently includes nine Gold level meetings – as the top tier of\r\nthe world\'s best one-day competitions outside the Wanda Diamond League – plus 25\r\nSilver, 50 Bronze and 50 Challenger meetings. It is expected that two or three more\r\nUS meetings will also join the Continental Tour in the near future.\r\n\r\nCurrently TV rights for Gold level meetings have been sold in 150 territories across\r\nthe globe and for territories where broadcast coverage is not available either live\r\nor as delayed highlights, a live stream will be shown on the World Athletics YouTube\r\nchannel.\r\n\r\n“The growth and success of the Continental Tour since its inception in 2020 lies in\r\nthe fact that we now have an ever-growing number of high-quality one-day meetings,\r\nproviding more opportunities to athletes and more extensive broadcast coverage\r\navailable around the world,” World Athletics President Sebastian Coe said.</span>','images/news/imgnews3.jpg'),(4,'2019-06-23','D\'Amato and Chepngeno impress as records fall in Houston','Keira D\'Amato broke the\r\nlong-standing US women’s marathon record, while Kenya’s Vicoty Chepngeno set a North\r\nAmerican all-comers’ half marathon record to move to 11th on the world all-time list and\r\nSara Hall broke the US half marathon record on a busy morning of road race action in\r\nHouston on Sunday (16).<span>...</span><span> At the 50th Chevron Houston Marathon and\r\nAramco Houston Half Marathon – both World Athletics Elite Label events – D\'Amato\r\nbecame the first US woman to win the Houston Marathon since 2005 and she did so in a\r\nnational record time of 2:19:12. That followed the record-breaking performances\r\nachieved by Chepngeno and Hall in the half marathon, as they clocked respective\r\ntimes of 1:05:03 and 1:07:15.\r\n\r\nOn a cold and sunny day, the men’s races were won by Kenya’s James Ngandu, who ran\r\n2:11:03 to claim victory on his marathon debut, and Ethiopia’s Milkesa Mengesha, who\r\ntook the half marathon title in 1:00:24.\r\n\r\nD\'Amato dominates\r\nSpeaking after her record run, D\'Amato described her running career as having been\r\n“very unique” but her journey over the past couple of decades has led to some\r\nremarkable results.\r\n\r\nThe 37-year-old stepped away from the sport for seven years between 2009 and 2016\r\nand returned as a “hobby jogger” but went on to set a marathon PB of 2:22:56 and a\r\nNorth American 10-mile record of 51:23 in 2020 before a fourth-place finish in last\r\nyear’s Chicago Marathon and a half marathon PB of 1:07:55 last month. Now she’s also\r\nthe fastest US women\'s marathon runner in history.\r\n\r\nD\'Amato always had Deena Kastor’s US marathon record of 2:19:36, set in London in\r\n2006, in her sights, and she went out with her two pacemakers on schedule to break\r\nit. She went through 5km in 16:25, joined by Ethiopia’s three-time Houston Marathon\r\nwinner Biruktayit Eshetu Degefa, and they remained close through 10km in 32:45 and\r\n15km in 49:14.</span>','images/news/imgnews4.jpg'),(5,'2022-01-02',' Giles faces Kramer in Karlsruhe, quality field event clashes in Torun ','Elliot Giles, the\r\nsecond-fastest man in history for 800m indoors, will return to the INIT Indoor Meeting\r\nKarlsruhe on 28 January where he will take on Swedish record-holder Andreas Kramer at\r\nthe World Athletics Indoor Tour Gold meeting.<span>...</span><span>Giles kick-started\r\nhis remarkable 2021 indoor campaign in the German city last year, winning in\r\n1:45.50. He improved to 1:45.49 in Lievin 10 days later, then capped his indoor\r\nseason with a stunning 1:43.63 run in Torun, elevating him to second place on the\r\nworld indoor all-time list behind world record-holder Wilson Kipketer.\r\n\r\nKramer, the European silver medallist, finished third in that race in Torun,\r\nclocking a Swedish indoor record of 1:45.09.\r\n\r\nOrganisers of another World Athletics Indoor Tour Gold meeting, the Copernicus Cup\r\nin Torun on 22 February, have announced two high-quality field event clashes.\r\n\r\nThe three men who occupied the podium at the 2021 European Indoor Championships,\r\nalso held in Torun, will return to the Polish city as Tomas Stanek of the Czeck\r\nRepublic, Michal Haratyk of Poland and Filip Mihaljevic of Croatia renew their\r\nrivalry.\r\n\r\nIn the pole vault, meanwhile, 2016 Olympic champion Thiago Braz will take on\r\nPoland’s multiple world medallist Piotr Lisek.</span>','images/news/imgnews6.jpg'),(6,'2022-02-03',' Pozzi, Martinot-Lagarde and Belocian set for Karlsruhe hurdles clash','World indoor champion\r\nAndrew Pozzi is to open his World Athletics Indoor Tour Gold campaign at the INIT Indoor\r\nMeeting Karlsruhe on 28 January, when he will again go up against world medallist Pascal\r\nMartinot-Lagarde in the 60m hurdles.<span>...</span><span>A former winner in Karlsruhe,\r\nPozzi clocked 7.44 – a time which remains his second-quickest ever, just 0.01 off\r\nhis PB – for victory in 2017 and the Briton went on to win the European indoor title\r\nlater that season. The following year, he added the world indoor title to his CV,\r\ngaining gold on home soil in Birmingham.\r\n\r\nMartinot-Lagarde finished seventh on that occasion in Karlsruhe but was in\r\nmedal-winning form by the time of the European Indoor Championships in Belgrade,\r\nfinishing just 0.01 behind Pozzi for silver, which he added to the gold he won in\r\nPrague two years earlier. He also claimed European indoor silver in 2019 and bronze\r\nin 2013, plus world indoor medals in 2012, 2014 and 2016, while in the 110m hurdles\r\nhis world bronze was claimed in 2019, the year after his European Championships\r\nvictory.\r\n\r\nThis will be Martinot-Lagarde\'s fifth appearance in Karlsruhe, with the 30-year-old\r\nalso having raced in the German city in 2012, 2013 and 2021.\r\n\r\nThey will line up alongside their fellow European indoor gold medallist Wilhelm\r\nBelocian of France, who won in Karlsruhe last year before taking the continental\r\ntitle in Torun in a PB of 7.42, 0.01 ahead of Pozzi. Germany\'s Martin Vogel joins\r\nthem in the field.\r\n\r\nAlready announced for the meeting are Elliot Giles and Andreas Kramer in the 800m,\r\nand world record-holder Mondo Duplantis in the pole vault.\r\n\r\nThe INIT Indoor Meeting Karlsruhe is the first Gold level meeting in the 2022 World\r\nAthletics Indoor Tour calendar, with the action then moving on to Manhattan, Staten\r\nIsland, Lievin, Birmingham, Torun and Madrid.</span>','images/news/imgnews5.jpg');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `surname` varchar(30) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'olha','ef40ccd80c57866419fc8da1e96dfb56','olchik.test@gmail.com','Olha','Sereda','2004-01-20'),(2,'oleksii','ef40ccd80c57866419fc8da1e96dfb56','oleksii.test@gmail.com','Oleksii','Doroshenko','1976-08-23'),(3,'marek','ef40ccd80c57866419fc8da1e96dfb56','marek.test@gmail.com','Marek','Marek','1980-01-01');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cat_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'K-16'),(2,'M-16'),(3,'K-18'),(4,'M-18'),(5,'K-21E'),(6,'M-21E');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration` (
  `reg_id` int(11) NOT NULL AUTO_INCREMENT,
  `competition_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `chip_id` varchar(12) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`reg_id`),
  KEY `Registration_FK` (`user_id`),
  KEY `Registration_FK_1` (`competition_id`),
  KEY `Category_FK_!` (`cat_id`) USING BTREE,
  CONSTRAINT `Category_FK_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`cat_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_registration_competitions` FOREIGN KEY (`competition_id`) REFERENCES `competitions` (`competition_id`) ON UPDATE CASCADE,
  CONSTRAINT `Registration_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES (14,1,1,1,'01234534','olchik.test@gmail.com,'),(16,2,1,4,'1234512345','olchik.test@gmail.com,'),(17,1,2,6,'0987654321','oleksii.test@gmail.com,'),(18,3,2,6,'0987654321','oleksii.test@gmail.com,'),(19,1,3,4,'123123123','marek.test@gmail.com,'),(20,2,3,4,'123123321','marek.test@gmail.com,'),(21,3,3,6,'321321321','marek.test@gmail.com,'),(22,3,1,1,'456456456','olchik.test@gmail.com,'),(24,6,1,1,'44564565','olchik.test@gmail.com,'),(25,4,1,1,'1234512345','olchik.test@gmail.com,');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competitions`
--

DROP TABLE IF EXISTS `competitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `competitions` (
  `competition_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_date` date NOT NULL,
  `com_name` varchar(30) NOT NULL,
  `com_desc` varchar(1024) DEFAULT NULL,
  `com_registration_deadline` date NOT NULL,
  `image_path` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`competition_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitions`
--

LOCK TABLES `competitions` WRITE;
/*!40000 ALTER TABLE `competitions` DISABLE KEYS */;
INSERT INTO `competitions` VALUES (1,'2023-01-15','Odessa Cup','ODESSA REGION OPEN CHAMPIONSHIP IN ORIENTEERING  \"Cup of Odessa 2019\"','2022-01-05','01.jpg'),(2,'2023-05-17','Cherkasy Cup',NULL,'2023-01-05','02.png'),(3,'2024-06-16','Ukraine orienteering',NULL,'2023-01-09','03.png'),(4,'2023-01-16','Kubek Oniszczuka',NULL,'2022-01-05','04.jpg'),(5,'2023-07-09','The World Games',NULL,'2023-01-08','05.png'),(6,'2023-07-09','Lviv open cup',NULL,'2023-01-09','06.png'),(7,'2023-06-22','O-vesna',NULL,'2023-01-09','07.jpg'),(8,'2023-05-21','Training camp',NULL,'2022-01-09','08.png'),(9,'2023-05-12','O-kompas',NULL,'2023-01-09','09.png'),(10,'2023-05-11','Kyiv Training',NULL,'2022-01-09','10.jpg'),(11,'2022-04-19','Orienteering Kyiv',NULL,'2023-01-09','11.png'),(12,'2022-03-20','Kyiv region',NULL,'2022-01-09','12.jpg'),(13,'2023-03-02','Orienteering league',NULL,'2023-01-09','13.jpg'),(14,'2023-04-01','Istambul cup',NULL,'2023-01-09','14.jpg'),(15,'2022-08-15','Orienteering camp',NULL,'2023-01-09','15.png'),(16,'2022-08-16','Rogaining championship',NULL,'2023-01-09','16.jpg'),(17,'2022-08-18','Vinnitsa cup',NULL,'2023-01-09','17.jpg');
/*!40000 ALTER TABLE `competitions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-23 18:02:45
