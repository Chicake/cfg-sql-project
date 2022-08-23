CREATE DATABASE  IF NOT EXISTS `kaedeanimelistlower` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `kaedeanimelistlower`;
-- MySQL dump 10.13  Distrib 8.0.29, for macos12 (x86_64)
--
-- Host: localhost    Database: kaedeanimelistlower
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `animelist`
--

DROP TABLE IF EXISTS `animelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animelist` (
  `animeName` varchar(50) NOT NULL,
  `genre` char(50) DEFAULT NULL,
  `aired` date DEFAULT NULL,
  `ep` int DEFAULT NULL,
  `status` char(20) DEFAULT NULL,
  `community` varchar(50) DEFAULT NULL,
  `rating` float(3,1) DEFAULT NULL,
  PRIMARY KEY (`animeName`),
  CONSTRAINT `animelist_ibfk_1` FOREIGN KEY (`animeName`) REFERENCES `ratings` (`animeName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animelist`
--

LOCK TABLES `animelist` WRITE;
/*!40000 ALTER TABLE `animelist` DISABLE KEYS */;
INSERT INTO `animelist` VALUES ('5-toubun no hanayome','romance','2022-05-20',1,'completed','movie night',7.0),('aharen-san','comedy','2022-04-02',12,'completed','school life',7.3),('ao ashi','sports','2022-04-09',24,'completed','sportsmanship',6.9),('birdie wing','sports','2022-04-06',12,'completed','sportsmanship',6.9),('boruto','action','2017-04-05',648,'ongoing','boruto',9.6),('crayon shin-chan','comedy','1992-04-13',2405,'ongoing','childhood nostalgia',7.1),('dance dance danseur','drama','2022-04-09',11,'completed','like ballerina',9.5),('date a live iv','sci-fi','2022-04-08',12,'completed','lets go isekai',6.7),('deaimon','slice of life','2022-04-06',12,'completed','hungry rumbly',7.2),('detective conan','mystery','1996-01-08',1890,'ongoing','mysterious death',7.4),('dragon ball super','action','2022-06-11',1,'completed','movie night',7.5),('free','sports','2022-04-22',1,'completed','movie night',7.3),('gaikotsu kishi-sama','fantasy','2022-04-07',12,'completed','lets go isekai',6.7),('gunjou no fanfare','sports','2022-04-02',13,'completed','sportsmanship',7.3),('heroine tarumono','romance','2022-04-07',12,'completed','i am the heroine',7.2),('kaguya sama','comedy','2022-04-09',13,'completed','kaguya lovers',9.5),('kakkou no iinazuke','romance','2022-04-24',24,'completed','school life',5.8),('karakai jouzu no takagi-san','comedy','2022-06-10',1,'completed','movie night',8.4),('kawaii dake ja nai','romance','2022-04-10',12,'completed','school life',6.9),('kingdom 4','action','2022-04-10',26,'completed','my own kingdom',8.1),('komi-san 2','comedy','2022-04-07',12,'completed','school life',7.5),('kyoukai senki 2','sci-fi','2022-04-12',12,'completed','boundary between war',6.7),('love all play','sports','2022-04-02',24,'completed','sportsmanship',6.9),('mobile suit gundam','action','2022-06-03',1,'completed','movie night',6.4),('one piece','adventure','1999-10-20',1245,'ongoing','one piece',8.5),('otome game sekai wa mob','fantasy','2022-04-03',12,'completed','lets go isekai',5.6),('precure','action','2022-02-06',45,'ongoing','childhood nostalgia',6.3),('rikei ga koi','romance','2022-04-02',12,'completed','rikejyo',6.4),('sazae-san','comedy','1969-10-05',6039,'ongoing','childhood nostalgia',7.1),('shadowverse flame','fantasy','2022-04-02',24,'completed','childhood nostalgia',6.8),('spy x family','action','2022-04-09',12,'completed','anya fans',7.1),('summertime render','mystery','2022-04-15',25,'completed','mysterious death',8.2),('tate no yuusha','adventure','2022-04-06',13,'completed','lets go isekai',7.8),('toku: touken ranbu','fantasy','2022-05-20',1,'completed','movie night',6.3),('tomodachi game','suspense','2022-04-06',12,'completed','mysterious death',7.2),('yuusha, yamemasu','fantasy','2022-04-05',12,'completed','lets go isekai',6.9);
/*!40000 ALTER TABLE `animelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communitylist`
--

DROP TABLE IF EXISTS `communitylist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communitylist` (
  `community` varchar(50) NOT NULL,
  `type` char(50) DEFAULT NULL,
  `size` char(10) DEFAULT NULL,
  `genre` char(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `createdDate` date DEFAULT NULL,
  PRIMARY KEY (`community`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communitylist`
--

LOCK TABLES `communitylist` WRITE;
/*!40000 ALTER TABLE `communitylist` DISABLE KEYS */;
INSERT INTO `communitylist` VALUES ('anya fans','single anime','medium','action','etheldoyle','2022-06-01'),('boruto','single anime','large','action','rondallhaley','2020-03-04'),('boundary between war','miltiple anime','medium','sci-fi','rickcarr','2022-06-03'),('childhood nostalgia','multiple anime','large','comedy','lucilenunez','1999-05-19'),('hungry rumbly','multiple anime','small','slice of life','madisondaniel','2022-06-20'),('i am the heroine','single anime','medium','romance','kehlanikane','2022-05-24'),('kaguya lovers','single anime','small','romance','leomckenzie','2022-07-17'),('lets go isekai','topic','large','fantasy','nicholaskennedy','2022-06-12'),('like ballerina','multiple anime','small','drama','deanacraft','2022-07-03'),('movie night','topic','large','all','linahood','2022-05-28'),('my own kingdom','single anime','small','action','simonetran','2022-06-30'),('mysterious death','multiple anime','medium','mystery','neilmoore','2022-05-05'),('one piece','single anime','large','adventure','suzettemaddox','2000-10-03'),('rikejyo','single anime','small','romance','anneunderwood','2022-04-28'),('school life','topic','large','comedy','todneyadams','2022-05-28'),('sportsmanship','topic','large','sports','devainhopkins','2022-07-19');
/*!40000 ALTER TABLE `communitylist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `communityresearch`
--

DROP TABLE IF EXISTS `communityresearch`;
/*!50001 DROP VIEW IF EXISTS `communityresearch`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `communityresearch` AS SELECT 
 1 AS `community`,
 1 AS `age`,
 1 AS `male`,
 1 AS `female`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `meanratings`
--

DROP TABLE IF EXISTS `meanratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meanratings` (
  `mean` decimal(22,8) DEFAULT NULL,
  `animeName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meanratings`
--

LOCK TABLES `meanratings` WRITE;
/*!40000 ALTER TABLE `meanratings` DISABLE KEYS */;
INSERT INTO `meanratings` VALUES (7.00000000,'5-toubun no hanayome'),(7.26666667,'aharen-san'),(6.86666667,'ao ashi'),(6.86666667,'birdie wing'),(9.60000000,'boruto'),(7.13333333,'crayon shin-chan'),(9.53333333,'dance dance danseur'),(6.73333333,'date a live iv'),(7.20000000,'deaimon'),(7.40000000,'detective conan'),(7.53333333,'dragon ball super'),(7.33333333,'free'),(6.66666667,'gaikotsu kishi-sama'),(7.33333333,'gunjou no fanfare'),(7.20000000,'heroine tarumono'),(9.46666667,'kaguya sama'),(5.80000000,'kakkou no iinazuke'),(8.40000000,'karakai jouzu no takagi-san'),(6.93333333,'kawaii dake ja nai'),(8.13333333,'kingdom 4'),(7.53333333,'komi-san 2'),(6.66666667,'kyoukai senki 2'),(6.86666667,'love all play'),(6.40000000,'mobile suit gundam'),(8.53333333,'one piece'),(5.60000000,'otome game sekai wa mob'),(6.33333333,'precure'),(6.40000000,'rikei ga koi'),(7.13333333,'sazae-san'),(6.80000000,'shadowverse flame'),(7.06666667,'spy x family'),(8.20000000,'summertime render'),(7.80000000,'tate no yuusha'),(6.33333333,'toku: touken ranbu'),(7.20000000,'tomodachi game'),(6.93333333,'yuusha, yamemasu');
/*!40000 ALTER TABLE `meanratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ratings` (
  `animeName` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `story` int DEFAULT NULL,
  `person` int DEFAULT NULL,
  `art` int DEFAULT NULL,
  `soundtrack` int DEFAULT NULL,
  `overall` int DEFAULT NULL,
  PRIMARY KEY (`animeName`,`username`),
  KEY `username` (`username`),
  CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`animeName`) REFERENCES `animelist` (`animeName`),
  CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES ('5-toubun no hanayome','alexleach',5,6,4,6,7),('5-toubun no hanayome','linahood',9,10,9,10,10),('5-toubun no hanayome','rileyatkins',5,6,4,6,8),('aharen-san','madisondaniel',5,7,5,8,8),('aharen-san','magdalenastevenson',6,7,5,4,6),('aharen-san','rileyatkins',10,9,10,10,9),('ao ashi','alexleach',4,6,7,5,4),('ao ashi','devainhopkins',10,9,10,10,9),('ao ashi','iriswynn',6,8,4,5,6),('birdie wing','alexleach',9,9,10,9,10),('birdie wing','suzettemaddox',5,7,5,4,5),('birdie wing','thomasgriffin',6,6,5,6,7),('boruto','ennisfitzpatrick',9,10,10,10,9),('boruto','jillstrong',9,10,10,9,10),('boruto','rondallhaley',10,9,9,10,10),('boruto','tristramweiss',9,10,10,9,10),('crayon shin-chan','elsarobinson',9,10,9,10,10),('crayon shin-chan','joydavis',6,8,4,6,8),('crayon shin-chan','staciesheppard',5,7,5,4,6),('dance dance danseur','deanacraft',10,9,9,9,10),('dance dance danseur','staciesheppard',9,9,10,10,10),('dance dance danseur','yvettefulton',9,10,10,9,10),('date a live iv','alexanderson',4,6,4,6,7),('date a live iv','judeannewman',9,9,10,10,9),('date a live iv','linahood',5,7,5,4,6),('deaimon','alexanderson',6,3,6,6,4),('deaimon','jillstrong',5,7,8,9,7),('deaimon','madisondaniel',10,10,9,9,9),('detective conan','annabeasley',10,9,10,10,9),('detective conan','henleyriley',6,7,8,8,5),('detective conan','staciesheppard',5,7,4,6,7),('dragon ball super','caitlinanthony',9,10,9,10,10),('dragon ball super','dajuanduran',6,7,5,4,7),('dragon ball super','tysonfleming',5,7,8,9,7),('free','dajuanduran',5,7,8,5,7),('free','henleyriley',10,9,10,9,9),('free','marshagoodman',5,7,4,7,8),('gaikotsu kishi-sama','arnoldedwards',9,10,10,9,10),('gaikotsu kishi-sama','rickcarr',5,7,5,4,6),('gaikotsu kishi-sama','rondallhaley',5,7,5,3,5),('gunjou no fanfare','rileyatkins',5,7,5,8,9),('gunjou no fanfare','rondallwhitfield',9,9,10,10,10),('gunjou no fanfare','thomasgriffin',5,7,3,6,7),('heroine tarumono','annabeasley',6,7,7,5,7),('heroine tarumono','kehlanikane',9,10,10,9,10),('heroine tarumono','rondallwhitfield',4,6,7,6,5),('kaguya sama','iriswynn',9,10,9,10,10),('kaguya sama','leomckenzie',9,9,9,9,10),('kaguya sama','magdalenastevenson',9,10,10,9,10),('kakkou no iinazuke','nicholaskennedy',6,8,9,7,6),('kakkou no iinazuke','tristramweiss',5,7,5,3,8),('kakkou no iinazuke','yvettefulton',4,6,4,6,3),('karakai jouzu no takagi-san','dajuanduran',7,6,4,7,6),('karakai jouzu no takagi-san','marshagoodman',10,9,9,10,10),('karakai jouzu no takagi-san','neilmoore',9,10,10,9,10),('kawaii dake ja nai','arnoldedwards',5,7,4,3,6),('kawaii dake ja nai','leomckenzie',4,7,8,6,6),('kawaii dake ja nai','todneyadams',10,10,9,9,10),('kingdom 4','annabeasley',6,7,4,3,7),('kingdom 4','simonetran',9,9,10,10,9),('kingdom 4','thomasgriffin',10,10,9,10,9),('komi-san 2','caitlinanthony',5,7,8,5,7),('komi-san 2','etheldoyle',5,7,8,6,7),('komi-san 2','joydavis',9,10,10,9,10),('kyoukai senki 2','alexanderson',5,7,4,3,6),('kyoukai senki 2','davionpatrick',5,6,4,6,7),('kyoukai senki 2','rickcarr',9,9,9,10,10),('love all play','alexanderson',9,9,10,10,9),('love all play','davionpatrick',5,7,4,7,8),('love all play','thomasgriffin',5,3,6,7,4),('mobile suit gundam','anneunderwood',6,8,9,6,7),('mobile suit gundam','marshagoodman',5,7,8,5,7),('mobile suit gundam','staciesheppard',4,6,7,5,6),('one piece','davionpatrick',10,9,10,10,9),('one piece','henleyriley',6,6,7,8,6),('one piece','suzettemaddox',9,10,9,9,10),('otome game sekai wa mob','linahood',3,5,6,7,4),('otome game sekai wa mob','neilmoore',7,8,5,7,9),('otome game sekai wa mob','yvettefulton',5,6,4,3,5),('precure','lucilenunez',4,6,7,5,7),('precure','rondallwhitfield',6,5,7,8,6),('precure','tysonfleming',6,7,7,8,6),('rikei ga koi','anneunderwood',10,9,9,9,10),('rikei ga koi','judeannewman',5,7,4,4,6),('rikei ga koi','yvettefulton',4,6,3,5,5),('sazae-san','alexleach',5,7,8,6,5),('sazae-san','dajuanduran',10,10,9,9,9),('sazae-san','ennisfitzpatrick',5,7,4,6,7),('shadowverse flame','deanacraft',5,7,5,3,5),('shadowverse flame','lucilenunez',10,10,9,10,10),('shadowverse flame','rondallwhitfield',5,6,7,5,5),('spy x family','caitlinanthony',7,4,3,6,7),('spy x family','devainhopkins',6,8,6,5,7),('spy x family','etheldoyle',9,9,10,9,10),('summertime render','jillstrong',5,7,5,4,7),('summertime render','neilmoore',9,10,10,9,9),('summertime render','tysonfleming',9,10,10,10,9),('tate no yuusha','louisecontreras',5,7,8,5,7),('tate no yuusha','nicholaskennedy',10,9,10,10,9),('tate no yuusha','todneyadams',6,8,9,8,6),('toku: touken ranbu','arnoldedwards',6,7,8,4,7),('toku: touken ranbu','kehlanikane',6,7,5,7,8),('toku: touken ranbu','louisecontreras',4,7,8,5,6),('tomodachi game','magdalenastevenson',5,7,8,6,7),('tomodachi game','sapphirehendricks',9,9,10,10,9),('tomodachi game','simonetran',5,6,7,4,6),('yuusha, yamemasu','alexleach',5,7,5,4,6),('yuusha, yamemasu','louisecontreras',9,10,10,9,10),('yuusha, yamemasu','sapphirehendricks',5,7,4,6,7);
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptiontable`
--

DROP TABLE IF EXISTS `subscriptiontable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscriptiontable` (
  `subscription` char(10) NOT NULL,
  `seeingList` tinyint(1) DEFAULT NULL,
  `saveAnime` tinyint(1) DEFAULT NULL,
  `favourite` tinyint(1) DEFAULT NULL,
  `joinCommunity` tinyint(1) DEFAULT NULL,
  `addFriend` tinyint(1) DEFAULT NULL,
  `searchAnime` tinyint(1) DEFAULT NULL,
  `watchTrailer` tinyint(1) DEFAULT NULL,
  `ads` tinyint(1) DEFAULT NULL,
  `badge` tinyint(1) DEFAULT NULL,
  `customPage` tinyint(1) DEFAULT NULL,
  `watchAnime` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`subscription`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptiontable`
--

LOCK TABLES `subscriptiontable` WRITE;
/*!40000 ALTER TABLE `subscriptiontable` DISABLE KEYS */;
INSERT INTO `subscriptiontable` VALUES ('essential',1,1,1,1,1,1,1,0,0,0,0),('premium',1,1,1,1,1,1,1,1,1,1,1),('standard',1,1,1,1,1,1,1,1,1,1,0);
/*!40000 ALTER TABLE `subscriptiontable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `gmail` varchar(50) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `subscription` char(10) DEFAULT NULL,
  `sex` char(10) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `community` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`username`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`username`) REFERENCES `ratings` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('alexanderson','pinkalex@gmail.com','bullfinch1011','premium','male',81,'sportmanship'),('alexleach','slatealex@gmail.com','squid2909','standard','female',24,'sportsmanship'),('annabeasley','greenanna@gmail.com','nightjar2511','premium','female',33,'mysterious death'),('anneunderwood','greyann@gmail.com','crab2806','standard','female',30,'rikejyo'),('arnoldedwards','skybluearnold@gmail.com','fairywren1310','premium','male',45,'lets go isekai'),('caitlinanthony','crimsoncaitlin@gmail.com','porpoise1902','premium','female',44,'movie night'),('dajuanduran','bronzedajuan@gmail.com','osprey2103','standard','male',24,'childhood nostalgia'),('davionpatrick','greydavion@gmail.com','kitten1007','essential','male',28,'one piece'),('deanacraft','yellowdeana@gmail.com','lobster0402','essential','female',36,'like ballerina'),('devainhopkins','reddevian@gmail.com','badger1709','standard','male',48,'sportsmanship'),('elsarobinson','peachelsa@gmail.com','woodcock1210','standard','female',43,'childhood nostalgia'),('ennisfitzpatrick','crimsonennis@gmail.com','seal0202','standard','male',30,'boruto'),('etheldoyle','bronzeethel@gmail.com','grizzlybear1408','essential','female',45,'anya fans'),('henleyriley','aquamarinehenley@gmail.com','blackmamba1709','essential','male',69,'movie night'),('iriswynn','orangeiris@gmail.com','fairywren1302','premium','female',24,'kaguya lovers'),('jillstrong','blackjill@gmail.com','coralsnake2411','standard','female',20,'boruto'),('joydavis','turquoisejoy@gmail.com','beaver0502','essential','male',54,'school life'),('judeannewman','goldjudean@gmail.com','thrush2204','essential','male',61,'lets go isekai'),('kehlanikane','limekehlani@gmail.com','blackcrazyant2606','premium','female',18,'i am the heroine'),('leomckenzie','copperleo@gmail.com','gentoopenguin1103','premium','male',37,'kaguya lovers'),('linahood','goldlina@gmail.com','snake2802','premium','female',26,'movie night'),('louisecontreras','indigolouise@gmail.com','goshawk2409','essential','male',18,'lets go isekai'),('lucilenunez','whitelucile@gmail.com','blackbird1704','essential','female',64,'childhood nostalgia'),('madisondaniel','lilacmadison@gmail.com','lapwing0609','essential','female',41,'hungry rumbly'),('magdalenastevenson','greenmagdalena@gmail.com','dromedary2102','essential','female',23,'kaguya lovers'),('marshagoodman','lilacmarsha@gmail.com','greywolf1602','premium','female',30,'movie nigth'),('neilmoore','purpleneil@gmail.com','heron1011','essential','male',80,'mysterious death'),('nicholaskennedy','coppernicholas@gmail.com','albatross2002','premium','male',18,'lets go isekai'),('rickcarr','bluerick@gmail.com','cichild2207','premium','male',30,'boundary between war'),('rileyatkins','peachriley@gmail.com','trumpeterswan1204','standard','male',72,'school life'),('rondallhaley','silverrondall@gmail.com','wildboar0107','standard','male',23,'boruto'),('rondallwhitfield','lilacrondall@gmail.com','africanelephant0511','essential','male',33,'sportsmanship'),('sapphirehendricks','silversapphire@gmail.com','trapdoorspider0610','essential','female',20,'mysterious death'),('simonetran','whitesimone@gmail.com','watershrew1206','premium','male',32,'my own kingdom'),('staciesheppard','aquamarinestacie@gmail.com','otter2902','essential','female',20,'like ballerina'),('suzettemaddox','cyansuzette@gmail.com','impala2604','standard','female',26,'one piece'),('thomasgriffin','goldthomas@gmail.com','bat0111','standard','male',40,'my own kingdom'),('todneyadams','silvertodney@gmail.com','viper1209','standard','male',19,'school life'),('tristramweiss','redtristram@gmail.com','locust1503','standard','male',27,'boruto'),('tysonfleming','peachtyson@gmail.com','pika2607','standard','male',45,'mysterious death'),('yvettefulton','pinkyvette@gmail.com','seal2707','premium','female',57,'like ballerina');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'kaedeanimelistlower'
--

--
-- Dumping routines for database 'kaedeanimelistlower'
--
/*!50003 DROP FUNCTION IF EXISTS `signin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `signin`(
    entered_gmail VARCHAR(50),
	entered_password VARCHAR(50)
) RETURNS varchar(20) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE login_status VARCHAR(20);
    IF EXISTS(SELECT * FROM USER WHERE gmail=entered_gmail AND password=entered_password) THEN
        SET login_status = 'Success';
	ELSE
        SET login_status = 'Rejected';
    END IF;
    RETURN (login_status);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `see_subscription` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `see_subscription`(
mySubscription VARCHAR(50)
)
BEGIN
    IF (SELECT subscription FROM user WHERE username = mySubscription) = "essential" THEN
        SELECT * FROM subscriptiontable WHERE subscription = "essential";
	ELSEIF (SELECT subscription FROM user WHERE username = mySubscription) = "standard" THEN
        SELECT * FROM subscriptiontable WHERE subscription = "standard";
	ELSEIF (SELECT subscription FROM user WHERE username = mySubscription) = "premium" THEN
        SELECT * FROM subscriptiontable WHERE subscription = "premium";
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `communityresearch`
--

/*!50001 DROP VIEW IF EXISTS `communityresearch`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `communityresearch` AS select `u`.`community` AS `community`,avg(`u`.`age`) AS `age`,count((case when (`u`.`sex` = 'male') then 1 end)) AS `male`,count((case when (`u`.`sex` = 'female') then 1 end)) AS `female` from (`user` `u` join `communitylist` `c` on((`u`.`community` = `c`.`community`))) group by `u`.`community` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-23 18:25:26
