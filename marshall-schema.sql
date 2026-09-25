-- MySQL dump 10.13  Distrib 26.7.0, for macos26.6 (arm64)
--
-- Host: localhost    Database: marshall
-- ------------------------------------------------------
-- Server version	5.5.5-10.11.14-MariaDB-0ubuntu0.24.04.1

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
-- Temporary view structure for view `_subview_object_akas`
--

DROP TABLE IF EXISTS `_subview_object_akas`;
/*!50001 DROP VIEW IF EXISTS `_subview_object_akas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `_subview_object_akas` AS SELECT 
 1 AS `transientBucketId`,
 1 AS `primaryKeyId`,
 1 AS `name`,
 1 AS `survey`,
 1 AS `surveyObjectUrl`,
 1 AS `referenceImageUrl`,
 1 AS `targetImageUrl`,
 1 AS `subtractedImageUrl`,
 1 AS `tripletImageUrl`,
 1 AS `finderImageUrl`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `astronotes_content`
--

DROP TABLE IF EXISTS `astronotes_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `astronotes_content` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `dateCreated` datetime DEFAULT current_timestamp(),
  `dateLastModified` datetime DEFAULT current_timestamp(),
  `updated` tinyint(4) DEFAULT 0,
  `abstract` text DEFAULT NULL,
  `astronote` varchar(30) NOT NULL,
  `authors` text DEFAULT NULL,
  `public_timestamp` datetime DEFAULT NULL,
  `source_group` varchar(100) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `html_parsed_flag` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `astronote` (`astronote`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `astronotes_keywords`
--

DROP TABLE IF EXISTS `astronotes_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `astronotes_keywords` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `dateCreated` datetime DEFAULT current_timestamp(),
  `dateLastModified` datetime DEFAULT current_timestamp(),
  `updated` tinyint(4) DEFAULT 0,
  `astronote` varchar(30) NOT NULL,
  `keyword` varchar(30) NOT NULL,
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `astronote_keyword` (`astronote`,`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `astronotes_transients`
--

DROP TABLE IF EXISTS `astronotes_transients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `astronotes_transients` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `dateCreated` datetime DEFAULT current_timestamp(),
  `dateLastModified` datetime DEFAULT current_timestamp(),
  `updated` tinyint(4) DEFAULT 0,
  `alt_name` varchar(100) DEFAULT NULL,
  `astronote` varchar(30) NOT NULL,
  `decdeg` double DEFAULT NULL,
  `iauname_full` varchar(30) DEFAULT NULL,
  `iauname_prefix` varchar(10) DEFAULT NULL,
  `objtype` varchar(30) DEFAULT NULL,
  `radeg` double DEFAULT NULL,
  `redshift` double DEFAULT NULL,
  `catalog` varchar(100) DEFAULT NULL,
  `host_name` varchar(100) DEFAULT NULL,
  `host_redshift` double DEFAULT NULL,
  `phase` varchar(100) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `date_observed` varchar(100) DEFAULT NULL,
  `fluxdensity_mu_jy` double DEFAULT NULL,
  `mean_obs_freq_ghz` double DEFAULT NULL,
  `time_observed_ut` varchar(100) DEFAULT NULL,
  `uncertainty_mu_jy` double DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `disc_date` varchar(100) DEFAULT NULL,
  `disc_mag` varchar(100) DEFAULT NULL,
  `spec_date_ut` varchar(100) DEFAULT NULL,
  `obs_date` varchar(100) DEFAULT NULL,
  `peak_abs_mag` varchar(100) DEFAULT NULL,
  `pslsn` varchar(100) DEFAULT NULL,
  `transientBucketId` bigint(20) DEFAULT NULL,
  `ingested` tinyint(4) DEFAULT 0,
  `iauname` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `astronote_iauname` (`astronote`,`iauname`),
  UNIQUE KEY `astronote_alt_name` (`alt_name`,`astronote`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`marshall`@`localhost`*/ /*!50003 TRIGGER `astronotes_transients_BEFORE_INSERT` BEFORE INSERT ON `astronotes_transients` FOR EACH ROW
BEGIN
		if  new.iauname_full is null then set new.iauname_full = concat(new.iauname_prefix, new.iauname);
     end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `atel_coordinates`
--

DROP TABLE IF EXISTS `atel_coordinates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atel_coordinates` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT,
  `atelNumber` int(11) NOT NULL,
  `raDeg` double NOT NULL,
  `decDeg` double NOT NULL,
  `crossMatchDate` datetime DEFAULT NULL,
  `singleClassification` varchar(45) DEFAULT NULL,
  `supernovaTag` int(11) DEFAULT NULL,
  `ingested` int(11) DEFAULT 0,
  `atelName` varchar(45) NOT NULL,
  `atelUrl` varchar(200) NOT NULL,
  `htm16ID` bigint(20) DEFAULT NULL,
  `summaryRow` tinyint(4) DEFAULT NULL,
  `survey` varchar(45) NOT NULL,
  `titleToComment` tinyint(4) NOT NULL DEFAULT 0,
  `htm13ID` int(11) DEFAULT NULL,
  `htm10ID` int(11) DEFAULT NULL,
  `updated` tinyint(1) DEFAULT 0,
  `dateLastModified` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dateCreated` datetime DEFAULT current_timestamp(),
  `transientBucketId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `atelnumber_ra_dec` (`atelNumber`,`raDeg`,`decDeg`),
  KEY `ra_deg` (`raDeg`,`decDeg`),
  KEY `atelNumber` (`atelNumber`),
  KEY `idx_htm16ID` (`htm16ID`),
  KEY `idx_htm10ID` (`htm13ID`),
  KEY `idx_htm13ID` (`htm13ID`),
  KEY `i_htm10ID` (`htm10ID`),
  KEY `i_htm13ID` (`htm13ID`),
  KEY `i_htm16ID` (`htm16ID`),
  KEY `idx_transientBucketId` (`transientBucketId`),
  KEY `idx_ingested` (`ingested`)
) ENGINE=InnoDB AUTO_INCREMENT=18130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `atel_fullcontent`
--

DROP TABLE IF EXISTS `atel_fullcontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atel_fullcontent` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `atelNumber` int(11) DEFAULT NULL,
  `authors` mediumtext DEFAULT NULL,
  `backRefList` varchar(450) DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `dateLastModified` datetime DEFAULT NULL,
  `dateLastRead` datetime DEFAULT NULL,
  `email` varchar(450) DEFAULT NULL,
  `refList` varchar(450) DEFAULT NULL,
  `tags` varchar(450) DEFAULT NULL,
  `title` varchar(450) DEFAULT NULL,
  `userText` mediumtext DEFAULT NULL,
  `datePublished` datetime NOT NULL,
  `atelType` varchar(500) DEFAULT NULL,
  `dateParsed` datetime DEFAULT NULL COMMENT 'The date the ATel text was parsed for names and coordinates',
  `updated` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `atelnumber` (`atelNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=18020 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `atel_names`
--

DROP TABLE IF EXISTS `atel_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atel_names` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT,
  `atelNumber` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `crossMatchDate` datetime DEFAULT NULL,
  `singleClassification` varchar(45) DEFAULT NULL,
  `supernovaTag` int(11) DEFAULT NULL,
  `ingested` int(11) DEFAULT 0,
  `atelName` varchar(45) NOT NULL,
  `atelUrl` varchar(200) NOT NULL,
  `survey` varchar(45) NOT NULL,
  `titleToComment` tinyint(4) NOT NULL DEFAULT 0,
  `summaryRow` tinyint(4) DEFAULT NULL,
  `transientBucketId` bigint(20) DEFAULT NULL,
  `dateLastModified` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `atelnumber_name` (`atelNumber`,`name`),
  KEY `atelNumber` (`atelNumber`),
  KEY `name` (`name`),
  KEY `idx_transientBucketId` (`transientBucketId`),
  KEY `idx_ingested` (`ingested`)
) ENGINE=InnoDB AUTO_INCREMENT=34418 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fs_asassn_sne`
--

DROP TABLE IF EXISTS `fs_asassn_sne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fs_asassn_sne` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `Classification_Age` varchar(100) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Disc_Age` varchar(100) DEFAULT NULL,
  `Galaxy_name` varchar(100) DEFAULT NULL,
  `ID` varchar(100) DEFAULT NULL,
  `No` varchar(100) DEFAULT NULL,
  `Offset` double DEFAULT NULL,
  `RA` double DEFAULT NULL,
  `Redshift` double DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `V_abs` double DEFAULT NULL,
  `V_disc` double DEFAULT NULL,
  `dateCreated` datetime DEFAULT current_timestamp(),
  `decl` double DEFAULT NULL,
  `ingested` tinyint(4) DEFAULT NULL,
  `summaryRow` tinyint(4) DEFAULT NULL,
  `htm16ID` bigint(20) DEFAULT NULL,
  `surveyUrl` varchar(100) DEFAULT NULL,
  `htm13ID` int(11) DEFAULT NULL,
  `htm10ID` int(11) DEFAULT NULL,
  `transientBucketId` bigint(20) DEFAULT NULL,
  `dateLastModified` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `id` (`ID`,`Date`),
  UNIQUE KEY `id_date` (`ID`,`Date`),
  KEY `htm16` (`htm16ID`),
  KEY `ra_dec` (`RA`,`decl`),
  KEY `ingested` (`ingested`),
  KEY `idx_htm16ID` (`htm16ID`),
  KEY `idx_htm10ID` (`htm13ID`),
  KEY `idx_htm13ID` (`htm13ID`),
  KEY `i_htm10ID` (`htm10ID`),
  KEY `i_htm13ID` (`htm13ID`),
  KEY `i_htm16ID` (`htm16ID`),
  KEY `idx_transientBucketId` (`transientBucketId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fs_asassn_transients`
--

DROP TABLE IF EXISTS `fs_asassn_transients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fs_asassn_transients` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `Vmag` double DEFAULT NULL,
  `comment` varchar(700) DEFAULT NULL,
  `dateCreated` datetime DEFAULT current_timestamp(),
  `decDeg` double DEFAULT NULL,
  `discDate` datetime DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `raDeg` double DEFAULT NULL,
  `specClass` varchar(100) DEFAULT NULL,
  `commentAdded` tinyint(4) NOT NULL DEFAULT 0,
  `surveyUrl` varchar(100) DEFAULT NULL,
  `ingested` tinyint(4) DEFAULT NULL,
  `summaryRow` tinyint(4) DEFAULT NULL,
  `htm16ID` bigint(20) DEFAULT NULL,
  `htm13ID` int(11) DEFAULT NULL,
  `htm10ID` int(11) DEFAULT NULL,
  `transientBucketId` bigint(20) DEFAULT NULL,
  `dateLastModified` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `name` (`name`),
  KEY `ra_dec` (`decDeg`,`raDeg`),
  KEY `html16` (`htm16ID`),
  KEY `ingested` (`ingested`),
  KEY `idx_htm16ID` (`htm16ID`),
  KEY `idx_htm10ID` (`htm13ID`),
  KEY `idx_htm13ID` (`htm13ID`),
  KEY `i_htm10ID` (`htm10ID`),
  KEY `i_htm13ID` (`htm13ID`),
  KEY `i_htm16ID` (`htm16ID`),
  KEY `idx_transientBucketId` (`transientBucketId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fs_atlas`
--

DROP TABLE IF EXISTS `fs_atlas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fs_atlas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `candidateID` varchar(20) NOT NULL,
  `ra_deg` double NOT NULL,
  `dec_deg` double NOT NULL,
  `mag` float DEFAULT NULL,
  `magErr` float DEFAULT NULL COMMENT 'Mag error only available in the recurrence data',
  `filter` varchar(10) DEFAULT NULL COMMENT 'Observaton filter',
  `observationMJD` double DEFAULT NULL COMMENT 'Observation date in MJD',
  `discDate` datetime DEFAULT NULL,
  `discMag` float DEFAULT NULL,
  `suggestedType` varchar(50) DEFAULT NULL,
  `catalogType` varchar(50) DEFAULT NULL,
  `hostZ` float DEFAULT NULL,
  `targetImageURL` varchar(512) DEFAULT NULL,
  `refImageURL` varchar(512) DEFAULT NULL,
  `diffImageURL` varchar(512) DEFAULT NULL,
  `objectURL` varchar(512) DEFAULT NULL,
  `summaryRow` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Summary row flag. 1 = summary row, 0 = recurrence. There should always be one summary row and at least one recurrence.',
  `ingested` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Transient Bucket ingest flag.  Has this data been ingested yet?',
  `htm16ID` bigint(20) unsigned DEFAULT NULL,
  `survey` varchar(45) NOT NULL DEFAULT 'ATLAS',
  `dateCreated` datetime DEFAULT current_timestamp(),
  `dateLastModified` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dateLastRead` datetime DEFAULT NULL,
  `htm13ID` int(11) DEFAULT NULL,
  `htm10ID` int(11) DEFAULT NULL,
  `transientBucketId` bigint(20) DEFAULT NULL,
  `updated` tinyint(4) DEFAULT 0,
  `cz` double DEFAULT NULL,
  `cx` double DEFAULT NULL,
  `htm20ID` bigint(20) DEFAULT NULL,
  `cy` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_uq_candidateID_observationMJD_mag_filter_summaryRow` (`candidateID`,`observationMJD`,`mag`,`filter`,`summaryRow`),
  UNIQUE KEY `idx_uq_candidateID_discDate` (`candidateID`,`discDate`),
  KEY `idx_candidateID` (`candidateID`),
  KEY `idx_htm16ID` (`htm16ID`),
  KEY `htm16` (`htm16ID`),
  KEY `ingested` (`ingested`),
  KEY `summaryRow` (`summaryRow`),
  KEY `idx_htm10ID` (`htm13ID`),
  KEY `idx_htm13ID` (`htm13ID`),
  KEY `i_htm10ID` (`htm10ID`),
  KEY `i_htm13ID` (`htm13ID`),
  KEY `i_htm16ID` (`htm16ID`),
  KEY `idx_htm20ID` (`htm20ID`),
  KEY `idx_transientBucketId` (`transientBucketId`)
) ENGINE=InnoDB AUTO_INCREMENT=66916 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fs_atlas_forced_phot`
--

DROP TABLE IF EXISTS `fs_atlas_forced_phot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fs_atlas_forced_phot` (
  `primaryId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `atlas_object_id` bigint(20) unsigned NOT NULL,
  `atlas_designation` varchar(255) NOT NULL,
  `mjd_obs` double NOT NULL,
  `filter` varchar(10) NOT NULL,
  `mag` float NOT NULL,
  `dm` float DEFAULT NULL,
  `snr` float DEFAULT NULL,
  `zp` float DEFAULT NULL,
  `limiting_mag` tinyint(1) NOT NULL,
  `raDeg` double NOT NULL,
  `decDeg` double NOT NULL,
  `ingested` tinyint(4) DEFAULT 0,
  `survey` varchar(45) DEFAULT 'ATLAS FP',
  `htm16ID` bigint(20) DEFAULT NULL,
  `summaryRow` tinyint(4) DEFAULT NULL,
  `htm13ID` int(11) DEFAULT NULL,
  `htm10ID` int(11) DEFAULT NULL,
  `peakval` float DEFAULT NULL,
  `skyval` float DEFAULT NULL,
  `peakfit` float DEFAULT NULL,
  `dpeak` float DEFAULT NULL,
  `skyfit` float DEFAULT NULL,
  `flux` float DEFAULT NULL,
  `dflux` float DEFAULT NULL,
  `chin` float DEFAULT NULL,
  `major` float DEFAULT NULL,
  `minor` float DEFAULT NULL,
  `snrdet` float DEFAULT NULL,
  `snrlimit` float DEFAULT NULL,
  `wpflx` float DEFAULT NULL,
  `dwpflx` float DEFAULT NULL,
  `texp` float DEFAULT NULL,
  `expname` varchar(45) DEFAULT NULL,
  `apfit` float DEFAULT NULL,
  `fnu` float DEFAULT NULL,
  `marshall_mag` float DEFAULT NULL,
  `marshall_limiting_mag` float DEFAULT NULL,
  `marshall_mag_error` float DEFAULT NULL,
  `fnu_error` float DEFAULT NULL,
  `updated` tinyint(4) DEFAULT 0,
  `dateLastModified` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `transientBucketId` bigint(20) DEFAULT NULL,
  `dateCreated` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `unq_atlas_id_expname` (`atlas_object_id`,`expname`),
  KEY `idx_htm16ID` (`htm16ID`),
  KEY `idx_htm10ID` (`htm13ID`),
  KEY `idx_htm13ID` (`htm13ID`),
  KEY `idx_transientBucketId` (`transientBucketId`),
  KEY `idx_dateCreated` (`dateCreated`),
  KEY `idx_dateLastModified` (`dateLastModified`),
  KEY `idx_ingested` (`ingested`),
  KEY `idx_marshall_limiting_mag` (`marshall_limiting_mag`),
  KEY `idx_marshall_mag` (`marshall_mag`,`dateLastModified`),
  KEY `idx_atlas_designation` (`atlas_designation`),
  KEY `idx_ingested_transientBucketid` (`ingested`,`transientBucketId`),
  KEY `idx_maglimit_dpeak_snr` (`marshall_limiting_mag`,`dpeak`,`snr`),
  KEY `idx_marshall_mag_snr_dpeak` (`marshall_mag`,`snr`,`dpeak`),
  KEY `idx_apfit_zp_fnu_peakfit` (`zp`,`apfit`,`fnu`,`peakfit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fs_atlas_forced_phot_old`
--

DROP TABLE IF EXISTS `fs_atlas_forced_phot_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fs_atlas_forced_phot_old` (
  `primaryId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `atlas_object_id` bigint(20) unsigned NOT NULL,
  `atlas_designation` varchar(255) NOT NULL,
  `mjd_obs` double NOT NULL,
  `filter` varchar(10) NOT NULL,
  `mag` float NOT NULL,
  `dm` float DEFAULT NULL,
  `snr` float DEFAULT NULL,
  `zp` float DEFAULT NULL,
  `limiting_mag` tinyint(1) NOT NULL,
  `raDeg` double NOT NULL,
  `decDeg` double NOT NULL,
  `ingested` tinyint(4) DEFAULT 0,
  `survey` varchar(45) DEFAULT 'ATLAS FP',
  `htm16ID` bigint(20) DEFAULT NULL,
  `summaryRow` tinyint(4) DEFAULT NULL,
  `htm13ID` int(11) DEFAULT NULL,
  `htm10ID` int(11) DEFAULT NULL,
  `peakval` float DEFAULT NULL,
  `skyval` float DEFAULT NULL,
  `peakfit` float DEFAULT NULL,
  `dpeak` float DEFAULT NULL,
  `skyfit` float DEFAULT NULL,
  `flux` float DEFAULT NULL,
  `dflux` float DEFAULT NULL,
  `chin` float DEFAULT NULL,
  `major` float DEFAULT NULL,
  `minor` float DEFAULT NULL,
  `snrdet` float DEFAULT NULL,
  `snrlimit` float DEFAULT NULL,
  `wpflx` float DEFAULT NULL,
  `dwpflx` float DEFAULT NULL,
  `texp` float DEFAULT NULL,
  `expname` varchar(45) DEFAULT NULL,
  `apfit` float DEFAULT NULL,
  `fnu` float DEFAULT NULL,
  `marshall_mag` float DEFAULT NULL,
  `marshall_limiting_mag` float DEFAULT NULL,
  `marshall_mag_error` float DEFAULT NULL,
  `fnu_error` float DEFAULT NULL,
  `updated` tinyint(4) DEFAULT 0,
  `dateLastModified` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `transientBucketId` bigint(20) DEFAULT NULL,
  `dateCreated` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`primaryId`),
  KEY `idx_htm16ID` (`htm16ID`),
  KEY `idx_htm10ID` (`htm13ID`),
  KEY `idx_htm13ID` (`htm13ID`),
  KEY `idx_transientBucketId` (`transientBucketId`),
  KEY `idx_dateCreated` (`dateCreated`),
  KEY `idx_dateLastModified` (`dateLastModified`),
  KEY `idx_ingested` (`ingested`),
  KEY `idx_marshall_limiting_mag` (`marshall_limiting_mag`),
  KEY `idx_marshall_mag` (`marshall_mag`,`dateLastModified`),
  KEY `idx_atlas_designation` (`atlas_designation`),
  KEY `idx_ingested_transientBucketid` (`ingested`,`transientBucketId`),
  KEY `idx_maglimit_dpeak_snr` (`marshall_limiting_mag`,`dpeak`,`snr`),
  KEY `idx_marshall_mag_snr_dpeak` (`marshall_mag`,`snr`,`dpeak`),
  KEY `idx_apfit_zp_fnu_peakfit` (`zp`,`apfit`,`fnu`,`peakfit`),
  KEY `idx_transientBucketId_dateLastModified` (`transientBucketId`,`dateLastModified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fs_crts_css`
--

DROP TABLE IF EXISTS `fs_crts_css`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fs_crts_css` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `circularUrl` varchar(450) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `commentIngested` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime DEFAULT current_timestamp(),
  `dateLastModified` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dateLastRead` datetime DEFAULT NULL,
  `decDeg` double DEFAULT NULL,
  `filter` varchar(450) DEFAULT NULL,
  `finderChartUrl` varchar(644) DEFAULT NULL,
  `finderChartWebpage` varchar(450) DEFAULT NULL,
  `imagesUrl` varchar(450) DEFAULT NULL,
  `ingested` tinyint(4) DEFAULT NULL,
  `lightcurveUrl` varchar(450) DEFAULT NULL,
  `mag` double DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `observationDate` varchar(450) DEFAULT NULL,
  `observationMJD` double DEFAULT NULL,
  `raDeg` double DEFAULT NULL,
  `summaryRow` tinyint(4) DEFAULT NULL,
  `survey` varchar(450) DEFAULT NULL,
  `surveyObjectUrl` varchar(450) DEFAULT NULL,
  `targetImageUrl` varchar(624) DEFAULT NULL,
  `transientTypePrediction` varchar(450) DEFAULT NULL,
  `uniqueId` bigint(20) DEFAULT NULL,
  `htm16ID` bigint(20) DEFAULT NULL,
  `magErr` double DEFAULT NULL,
  `lastNonDetectionDate` datetime DEFAULT NULL,
  `lastNonDetectionMJD` double DEFAULT NULL,
  `htm13ID` int(11) DEFAULT NULL,
  `htm10ID` int(11) DEFAULT NULL,
  `transientBucketId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `observationmjd_name` (`observationMJD`,`name`),
  KEY `name` (`name`),
  KEY `htm16` (`htm16ID`),
  KEY `ra_dec` (`decDeg`,`raDeg`),
  KEY `ingested` (`ingested`),
  KEY `summaryRow` (`summaryRow`),
  KEY `idx_htm16ID` (`htm16ID`),
  KEY `idx_htm10ID` (`htm10ID`),
  KEY `idx_htm13ID` (`htm13ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fs_crts_mls`
--

DROP TABLE IF EXISTS `fs_crts_mls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fs_crts_mls` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `circularUrl` varchar(450) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `commentIngested` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime DEFAULT current_timestamp(),
  `dateLastModified` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dateLastRead` datetime DEFAULT NULL,
  `decDeg` double DEFAULT NULL,
  `filter` varchar(450) DEFAULT NULL,
  `finderChartUrl` varchar(618) DEFAULT NULL,
  `finderChartWebpage` varchar(450) DEFAULT NULL,
  `imagesUrl` varchar(450) DEFAULT NULL,
  `ingested` tinyint(4) DEFAULT NULL,
  `lightcurveUrl` varchar(450) DEFAULT NULL,
  `mag` double DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `observationDate` varchar(450) DEFAULT NULL,
  `observationMJD` double DEFAULT NULL,
  `raDeg` double DEFAULT NULL,
  `summaryRow` tinyint(4) DEFAULT NULL,
  `survey` varchar(450) DEFAULT NULL,
  `surveyObjectUrl` varchar(450) DEFAULT NULL,
  `targetImageUrl` varchar(614) DEFAULT NULL,
  `transientTypePrediction` varchar(450) DEFAULT NULL,
  `uniqueId` bigint(20) DEFAULT NULL,
  `htm16ID` bigint(20) DEFAULT NULL,
  `magErr` double DEFAULT NULL,
  `lastNonDetectionDate` datetime DEFAULT NULL,
  `lastNonDetectionMJD` double DEFAULT NULL,
  `htm13ID` int(11) DEFAULT NULL,
  `htm10ID` int(11) DEFAULT NULL,
  `transientBucketId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `observationmjd_name` (`observationMJD`,`name`),
  KEY `name` (`name`),
  KEY `htm16` (`htm16ID`),
  KEY `ra_dec` (`decDeg`,`raDeg`),
  KEY `ingested` (`ingested`),
  KEY `summaryRow` (`summaryRow`),
  KEY `idx_htm16ID` (`htm16ID`),
  KEY `idx_htm10ID` (`htm10ID`),
  KEY `idx_htm13ID` (`htm13ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fs_crts_sss`
--

DROP TABLE IF EXISTS `fs_crts_sss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fs_crts_sss` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `circularUrl` varchar(450) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `commentIngested` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime DEFAULT current_timestamp(),
  `dateLastModified` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dateLastRead` datetime DEFAULT NULL,
  `decDeg` double DEFAULT NULL,
  `filter` varchar(450) DEFAULT NULL,
  `finderChartUrl` varchar(618) DEFAULT NULL,
  `finderChartWebpage` varchar(450) DEFAULT NULL,
  `imagesUrl` varchar(450) DEFAULT NULL,
  `ingested` tinyint(4) DEFAULT NULL,
  `lightcurveUrl` varchar(450) DEFAULT NULL,
  `mag` double DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `observationDate` varchar(450) DEFAULT NULL,
  `observationMJD` double DEFAULT NULL,
  `raDeg` double DEFAULT NULL,
  `summaryRow` tinyint(4) DEFAULT NULL,
  `survey` varchar(450) DEFAULT NULL,
  `surveyObjectUrl` varchar(450) DEFAULT NULL,
  `targetImageUrl` varchar(614) DEFAULT NULL,
  `transientTypePrediction` varchar(450) DEFAULT NULL,
  `uniqueId` bigint(20) DEFAULT NULL,
  `htm16ID` bigint(20) DEFAULT NULL,
  `magErr` double DEFAULT NULL,
  `lastNonDetectionDate` datetime DEFAULT NULL,
  `lastNonDetectionMJD` double DEFAULT NULL,
  `htm13ID` int(11) DEFAULT NULL,
  `htm10ID` int(11) DEFAULT NULL,
  `transientBucketId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `observationmjd_name` (`observationMJD`,`name`),
  KEY `name` (`name`),
  KEY `htm16` (`htm16ID`),
  KEY `ra_dec` (`decDeg`,`raDeg`),
  KEY `ingested` (`ingested`),
  KEY `summaryRow` (`summaryRow`),
  KEY `idx_htm16ID` (`htm16ID`),
  KEY `idx_htm10ID` (`htm10ID`),
  KEY `idx_htm13ID` (`htm13ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fs_des`
--

DROP TABLE IF EXISTS `fs_des`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fs_des` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `dateCreated` datetime DEFAULT current_timestamp(),
  `decDeg` double DEFAULT NULL,
  `filter` varchar(100) DEFAULT NULL,
  `lastNonDetectionDate` datetime DEFAULT NULL,
  `lastNonDetectionMJD` double DEFAULT NULL,
  `limitingMag` tinyint(4) DEFAULT NULL,
  `magnitude` double DEFAULT NULL,
  `magnitudeError` double DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `observationDate` datetime DEFAULT NULL,
  `observationMJD` double DEFAULT NULL,
  `raDeg` double DEFAULT NULL,
  `signal_to_noise` double DEFAULT NULL,
  `stampUrl` varchar(690) DEFAULT NULL,
  `summaryRow` tinyint(4) DEFAULT NULL,
  `survey` varchar(100) DEFAULT NULL,
  `surveyUrl` varchar(100) DEFAULT NULL,
  `transientTypePrediction` varchar(100) DEFAULT NULL,
  `finderImageUrl` varchar(100) DEFAULT NULL,
  `ingested` tinyint(4) DEFAULT NULL,
  `htm16ID` bigint(20) DEFAULT NULL,
  `diffUrl` varchar(684) DEFAULT NULL,
  `refUrl` varchar(684) DEFAULT NULL,
  `tarUrl` varchar(682) DEFAULT NULL,
  `htm13ID` int(11) DEFAULT NULL,
  `htm10ID` int(11) DEFAULT NULL,
  `transientBucketId` bigint(20) DEFAULT NULL,
  `dateLastModified` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `name_observationmjd` (`name`,`observationMJD`),
  KEY `idx_htm16ID` (`htm16ID`),
  KEY `idx_htm10ID` (`htm13ID`),
  KEY `idx_htm13ID` (`htm13ID`),
  KEY `i_htm10ID` (`htm10ID`),
  KEY `i_htm13ID` (`htm13ID`),
  KEY `i_htm16ID` (`htm16ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fs_gaia`
--

DROP TABLE IF EXISTS `fs_gaia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fs_gaia` (
  `primaryId` int(11) NOT NULL AUTO_INCREMENT,
  `candidateID` varchar(100) DEFAULT NULL,
  `dateCreated` datetime DEFAULT current_timestamp(),
  `dec_deg` double DEFAULT NULL,
  `discDate` varchar(100) DEFAULT NULL,
  `discMag` double DEFAULT NULL,
  `filter` varchar(100) DEFAULT NULL,
  `mag` double DEFAULT NULL,
  `objectURL` varchar(100) DEFAULT NULL,
  `observationMJD` double DEFAULT NULL,
  `ra_deg` double DEFAULT NULL,
  `summaryRow` tinyint(4) DEFAULT NULL,
  `htm16ID` bigint(20) DEFAULT NULL,
  `ingested` tinyint(4) DEFAULT NULL,
  `survey` varchar(10) DEFAULT 'Gaia',
  `htm13ID` int(11) DEFAULT NULL,
  `htm10ID` int(11) DEFAULT NULL,
  `transientBucketId` bigint(20) DEFAULT NULL,
  `cz` double DEFAULT NULL,
  `cx` double DEFAULT NULL,
  `htm20ID` bigint(20) DEFAULT NULL,
  `cy` double DEFAULT NULL,
  `dateLastModified` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `candidateid_observationmjd` (`candidateID`,`observationMJD`),
  KEY `idx_htm16ID` (`htm16ID`),
  KEY `idx_htm10ID` (`htm13ID`),
  KEY `idx_htm13ID` (`htm13ID`),
  KEY `i_htm10ID` (`htm10ID`),
  KEY `i_htm13ID` (`htm13ID`),
  KEY `i_htm16ID` (`htm16ID`),
  KEY `idx_htm20ID` (`htm20ID`),
  KEY `idx_transientBucketId` (`transientBucketId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fs_master`
--

DROP TABLE IF EXISTS `fs_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fs_master` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `comment` varchar(700) DEFAULT NULL,
  `dateCreated` datetime DEFAULT current_timestamp(),
  `imageUrl` varchar(200) DEFAULT NULL,
  `magnitude` double DEFAULT NULL,
  `masterInt` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `telescope` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `survey` varchar(45) DEFAULT 'master',
  `discoveryMjd` double DEFAULT NULL,
  `decDeg` double DEFAULT NULL,
  `raDeg` double DEFAULT NULL,
  `filter` varchar(45) DEFAULT 'unfiltered',
  `candidateUrl` varchar(100) DEFAULT 'http://observ.pereplet.ru/sn_e.html',
  `ingested` tinyint(4) DEFAULT NULL,
  `summaryRow` tinyint(4) DEFAULT NULL,
  `htm16ID` bigint(20) DEFAULT NULL,
  `day` varchar(100) DEFAULT NULL,
  `month` varchar(100) DEFAULT NULL,
  `tripletImageUrl` varchar(100) DEFAULT NULL,
  `year` varchar(100) DEFAULT NULL,
  `htm13ID` int(11) DEFAULT NULL,
  `htm10ID` int(11) DEFAULT NULL,
  `transientBucketId` bigint(20) DEFAULT NULL,
  `dateLastModified` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `name` (`name`),
  KEY `htm16` (`htm16ID`),
  KEY `ra_dec` (`decDeg`,`raDeg`),
  KEY `ingested` (`ingested`),
  KEY `summaryRow` (`summaryRow`),
  KEY `idx_htm16ID` (`htm16ID`),
  KEY `idx_htm10ID` (`htm13ID`),
  KEY `idx_htm13ID` (`htm13ID`),
  KEY `i_htm10ID` (`htm10ID`),
  KEY `i_htm13ID` (`htm13ID`),
  KEY `i_htm16ID` (`htm16ID`),
  KEY `idx_transientBucketId` (`transientBucketId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fs_ogle`
--

DROP TABLE IF EXISTS `fs_ogle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fs_ogle` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `dateCreated` datetime DEFAULT current_timestamp(),
  `dateLastModified` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dateLastRead` datetime DEFAULT NULL,
  `decDeg` double DEFAULT NULL,
  `filter` varchar(450) DEFAULT NULL,
  `ingested` tinyint(4) DEFAULT NULL,
  `lastNonDetectionDate` varchar(450) DEFAULT NULL,
  `lastNonDetectionMJD` double DEFAULT NULL,
  `lightcurveUrl` varchar(614) DEFAULT NULL,
  `mag` double DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `observationDate` varchar(450) DEFAULT NULL,
  `observationMJD` double DEFAULT NULL,
  `raDeg` double DEFAULT NULL,
  `referenceFitsUrl` varchar(616) DEFAULT NULL,
  `referenceImageUrl` varchar(616) DEFAULT NULL,
  `subtractedFitsUrl` varchar(634) DEFAULT NULL,
  `subtractedImageUrl` varchar(634) DEFAULT NULL,
  `summaryRow` tinyint(4) DEFAULT NULL,
  `survey` varchar(50) DEFAULT NULL,
  `surveyObjectUrl` varchar(450) DEFAULT NULL,
  `targetFitsUrl` varchar(638) DEFAULT NULL,
  `targetImageUrl` varchar(638) DEFAULT NULL,
  `transientTypePrediction` varchar(450) DEFAULT NULL,
  `htm16ID` bigint(20) DEFAULT NULL,
  `seeing` double DEFAULT NULL,
  `background` double DEFAULT NULL,
  `magErr` double DEFAULT NULL,
  `limitingMag` tinyint(4) DEFAULT NULL,
  `htm13ID` int(11) DEFAULT NULL,
  `htm10ID` int(11) DEFAULT NULL,
  `transientBucketId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `observationmjd_name_survey` (`observationMJD`,`name`,`survey`),
  UNIQUE KEY `observationmjd_name` (`observationMJD`,`name`),
  KEY `name` (`name`),
  KEY `htm16` (`htm16ID`),
  KEY `ra_dec` (`decDeg`,`raDeg`),
  KEY `ingested` (`ingested`),
  KEY `summaryRow` (`summaryRow`),
  KEY `idx_htm16ID` (`htm16ID`),
  KEY `idx_htm10ID` (`htm13ID`),
  KEY `idx_htm13ID` (`htm13ID`),
  KEY `i_htm10ID` (`htm10ID`),
  KEY `i_htm13ID` (`htm13ID`),
  KEY `i_htm16ID` (`htm16ID`),
  KEY `idx_transientBucketId` (`transientBucketId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fs_panstarrs`
--

DROP TABLE IF EXISTS `fs_panstarrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fs_panstarrs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `candidateID` varchar(20) NOT NULL,
  `ra_deg` double NOT NULL,
  `dec_deg` double NOT NULL,
  `mag` float DEFAULT NULL,
  `magErr` float DEFAULT NULL COMMENT 'Mag error only available in the recurrence data',
  `filter` varchar(10) DEFAULT NULL COMMENT 'Observaton filter',
  `observationMJD` double DEFAULT NULL COMMENT 'Observation date in MJD',
  `discDate` date DEFAULT NULL,
  `discMag` float DEFAULT NULL,
  `suggestedType` varchar(50) DEFAULT NULL,
  `catalogType` varchar(50) DEFAULT NULL,
  `hostZ` float DEFAULT NULL,
  `targetImageURL` varchar(512) DEFAULT NULL,
  `refImageURL` varchar(512) DEFAULT NULL,
  `diffImageURL` varchar(512) DEFAULT NULL,
  `objectURL` varchar(512) DEFAULT NULL,
  `ingested` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Transient Bucket ingest flag.  Has this data been ingested yet?',
  `htm16ID` bigint(20) unsigned DEFAULT NULL,
  `survey` varchar(45) NOT NULL DEFAULT 'PS1',
  `dateCreated` datetime DEFAULT current_timestamp(),
  `dateLastModified` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `htm13ID` int(11) DEFAULT NULL,
  `htm10ID` int(11) DEFAULT NULL,
  `updated` tinyint(4) DEFAULT 0,
  `transientBucketId` bigint(20) DEFAULT NULL,
  `summaryRow` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `idx_uq_candidateID_discDate` (`candidateID`,`discDate`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `uni_id_mag_mjd` (`candidateID`,`mag`,`observationMJD`),
  KEY `idx_candidateID` (`candidateID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm16ID` (`htm16ID`) KEY_BLOCK_SIZE=1024,
  KEY `htm16` (`htm16ID`) KEY_BLOCK_SIZE=1024,
  KEY `ingested` (`ingested`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm10ID` (`htm13ID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm13ID` (`htm13ID`) KEY_BLOCK_SIZE=1024,
  KEY `i_htm10ID` (`htm10ID`) KEY_BLOCK_SIZE=1024,
  KEY `i_htm13ID` (`htm13ID`) KEY_BLOCK_SIZE=1024,
  KEY `i_htm16ID` (`htm16ID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_transientBucketId` (`transientBucketId`)
) ENGINE=InnoDB AUTO_INCREMENT=143799 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fs_skymapper`
--

DROP TABLE IF EXISTS `fs_skymapper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fs_skymapper` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `DECL` double DEFAULT NULL COMMENT 'original keyword: DEC',
  `RA` double DEFAULT NULL,
  `bestType` varchar(100) DEFAULT NULL,
  `candidateID` varchar(100) NOT NULL,
  `candidateURL` varchar(1000) DEFAULT NULL,
  `comment` varchar(2000) DEFAULT NULL,
  `dateCreated` datetime DEFAULT current_timestamp(),
  `dateLastModified` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dateLastRead` datetime DEFAULT NULL,
  `diffThumbURL` varchar(1000) DEFAULT NULL,
  `discFilt` varchar(10) DEFAULT NULL,
  `discMJD` double DEFAULT NULL,
  `discMag` double DEFAULT NULL,
  `filt` varchar(10) DEFAULT NULL,
  `mag` double DEFAULT NULL,
  `magerr` double DEFAULT NULL,
  `mjd` double DEFAULT NULL,
  `newThumbURL` varchar(1000) DEFAULT NULL,
  `noneFilt` varchar(10) DEFAULT NULL,
  `noneMJD` double DEFAULT NULL,
  `noneMag` double DEFAULT NULL,
  `numDet` int(11) DEFAULT NULL,
  `refThumbURL` varchar(1000) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `htm16ID` bigint(20) unsigned DEFAULT NULL,
  `survey` varchar(45) DEFAULT 'skymapper',
  `ingested` tinyint(4) DEFAULT 0,
  `summaryRow` tinyint(4) DEFAULT NULL,
  `finderURL` varchar(624) DEFAULT NULL,
  `htm13ID` int(11) DEFAULT NULL,
  `htm10ID` int(11) DEFAULT NULL,
  `transientBucketId` bigint(20) DEFAULT NULL,
  `cz` double DEFAULT NULL,
  `cx` double DEFAULT NULL,
  `htm20ID` bigint(20) DEFAULT NULL,
  `cy` double DEFAULT NULL,
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `candidateid_mjd` (`candidateID`,`mjd`),
  KEY `htm16` (`htm16ID`),
  KEY `ingested` (`ingested`),
  KEY `summaryRow` (`summaryRow`),
  KEY `idx_htm16ID` (`htm16ID`),
  KEY `idx_htm10ID` (`htm13ID`),
  KEY `idx_htm13ID` (`htm13ID`),
  KEY `i_htm10ID` (`htm10ID`),
  KEY `i_htm13ID` (`htm13ID`),
  KEY `i_htm16ID` (`htm16ID`),
  KEY `idx_htm20ID` (`htm20ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fs_tns_transients`
--

DROP TABLE IF EXISTS `fs_tns_transients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fs_tns_transients` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `dateCreated` datetime DEFAULT current_timestamp(),
  `decDeg` double NOT NULL,
  `decSex` varchar(100) DEFAULT NULL,
  `discDate` datetime DEFAULT NULL,
  `discMag` double DEFAULT NULL,
  `discMagFilter` varchar(20) DEFAULT NULL,
  `discoverer` varchar(100) DEFAULT NULL,
  `hostName` varchar(100) DEFAULT NULL,
  `hostRedshift` double DEFAULT NULL,
  `objectName` varchar(120) NOT NULL,
  `objectUrl` varchar(100) DEFAULT NULL,
  `raDeg` double NOT NULL,
  `raSex` varchar(100) DEFAULT NULL,
  `survey` varchar(40) DEFAULT NULL,
  `tnsId` int(11) DEFAULT NULL,
  `specType` varchar(20) DEFAULT NULL,
  `transRedshift` double DEFAULT NULL,
  `lastNonDetectionDate` datetime DEFAULT NULL,
  `ingested` tinyint(4) DEFAULT NULL,
  `summaryRow` tinyint(4) DEFAULT NULL,
  `htm16ID` bigint(20) DEFAULT NULL,
  `classificationDate` datetime DEFAULT NULL,
  `classificationDateParsed` tinyint(4) DEFAULT 0,
  `lastNonDetectionDateParsed` tinyint(4) DEFAULT 0,
  `htm13ID` int(11) DEFAULT NULL,
  `htm10ID` int(11) DEFAULT NULL,
  `transientBucketId` bigint(20) DEFAULT NULL,
  `dateLastModified` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `objectname` (`objectName`),
  KEY `idx_htm16ID` (`htm16ID`),
  KEY `idx_htm10ID` (`htm13ID`),
  KEY `idx_htm13ID` (`htm13ID`),
  KEY `i_htm10ID` (`htm10ID`),
  KEY `i_htm13ID` (`htm13ID`),
  KEY `i_htm16ID` (`htm16ID`),
  KEY `idx_transientBucketId` (`transientBucketId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fs_user_added`
--

DROP TABLE IF EXISTS `fs_user_added`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fs_user_added` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `candidateID` varchar(70) NOT NULL,
  `ra_deg` double NOT NULL,
  `dec_deg` double NOT NULL,
  `mag` float DEFAULT NULL,
  `magErr` float DEFAULT NULL COMMENT 'Mag error only available in the recurrence data',
  `filter` varchar(10) DEFAULT NULL COMMENT 'Observaton filter',
  `observationMJD` double DEFAULT NULL COMMENT 'Observation date in MJD',
  `discDate` date DEFAULT NULL,
  `discMag` float DEFAULT NULL,
  `suggestedType` varchar(50) DEFAULT NULL,
  `catalogType` varchar(50) DEFAULT NULL,
  `hostZ` float DEFAULT NULL,
  `targetImageURL` varchar(512) DEFAULT NULL,
  `objectURL` varchar(512) DEFAULT NULL,
  `summaryRow` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Summary row flag. 1 = summary row, 0 = recurrence. There should always be one summary row and at least one recurrence.',
  `ingested` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Transient Bucket ingest flag.  Has this data been ingested yet?',
  `htm16ID` bigint(20) unsigned DEFAULT NULL,
  `survey` varchar(20) DEFAULT NULL,
  `author` varchar(100) NOT NULL,
  `dateCreated` datetime DEFAULT current_timestamp(),
  `dateLastModified` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `suggestedClassification` varchar(45) DEFAULT NULL,
  `htm13ID` int(11) DEFAULT NULL,
  `htm10ID` int(11) DEFAULT NULL,
  `transientBucketId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_uq_candidateID_observationMJD_mag_filter_summaryRow` (`candidateID`,`observationMJD`,`mag`,`filter`,`summaryRow`),
  UNIQUE KEY `idx_uq_candidateID_discDate` (`candidateID`,`discDate`),
  KEY `idx_candidateID` (`candidateID`),
  KEY `idx_htm16ID` (`htm16ID`),
  KEY `ingested` (`ingested`),
  KEY `summaryRow` (`summaryRow`),
  KEY `idx_htm10ID` (`htm13ID`),
  KEY `idx_htm13ID` (`htm13ID`),
  KEY `i_htm10ID` (`htm10ID`),
  KEY `i_htm13ID` (`htm13ID`),
  KEY `i_htm16ID` (`htm16ID`),
  KEY `idx_transientBucketId` (`transientBucketId`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fs_ztf`
--

DROP TABLE IF EXISTS `fs_ztf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fs_ztf` (
  `candidateId` bigint(20) DEFAULT NULL,
  `objectId` varchar(50) NOT NULL,
  `raDeg` double DEFAULT NULL,
  `decDeg` double DEFAULT NULL,
  `mjd` double NOT NULL,
  `fid` tinyint(4) DEFAULT NULL,
  `magpsf` double DEFAULT NULL,
  `sigmapsf` double DEFAULT NULL,
  `isdiffpos` char(1) DEFAULT NULL,
  `rb` float DEFAULT NULL,
  `magzpsci` double DEFAULT NULL,
  `magzpsciunc` double DEFAULT NULL,
  `filt` char(1) DEFAULT NULL,
  `surveyUrl` varchar(200) DEFAULT NULL,
  `tripletImageUrl` varchar(200) DEFAULT NULL,
  `ingested` tinyint(4) DEFAULT 0,
  `htm16ID` bigint(20) DEFAULT NULL,
  `htm13ID` int(11) DEFAULT NULL,
  `htm10ID` int(11) DEFAULT NULL,
  `scorr` double DEFAULT NULL,
  `limitingMag` tinyint(4) DEFAULT 0,
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT,
  `magnr` double DEFAULT NULL,
  `sigmagnr` double DEFAULT NULL,
  `distnr` double DEFAULT NULL,
  `distpsnr1` double DEFAULT NULL,
  `sgscore1` double DEFAULT NULL,
  `dateCreated` datetime DEFAULT current_timestamp(),
  `dateLastModified` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `transientBucketId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `uni_objectId_mjd` (`objectId`,`mjd`),
  UNIQUE KEY `candidateId_UNIQUE` (`candidateId`),
  KEY `idx_htm16ID` (`htm16ID`),
  KEY `idx_htm10ID` (`htm10ID`),
  KEY `idx_htm13ID` (`htm13ID`),
  KEY `idx_filt` (`filt`),
  KEY `idx_fid` (`fid`),
  KEY `idx_filt_fid` (`fid`,`filt`),
  KEY `idx_transientBucketID` (`transientBucketId`),
  KEY `idx_dateCreated` (`dateCreated`),
  KEY `idx_objectID` (`objectId`),
  KEY `idx_surveyUrl` (`surveyUrl`),
  KEY `idx_tripletImageUrl` (`tripletImageUrl`),
  KEY `idx_mjd` (`mjd`),
  KEY `idx_isdiffpos` (`isdiffpos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `logs_executable_timings`
--

DROP TABLE IF EXISTS `logs_executable_timings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs_executable_timings` (
  `primaryId` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(200) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `running_time` varchar(100) NOT NULL,
  PRIMARY KEY (`primaryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lvk_alerts`
--

DROP TABLE IF EXISTS `lvk_alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lvk_alerts` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT,
  `superevent_id` varchar(20) NOT NULL,
  `significant` tinyint(4) DEFAULT NULL,
  `alert_type` varchar(20) DEFAULT NULL,
  `alert_time` datetime DEFAULT NULL,
  `alert_delta_sec` int(11) DEFAULT NULL,
  `date_obs` datetime DEFAULT NULL COMMENT 'original keyword: date-obs',
  `mjd_obs` double DEFAULT NULL COMMENT 'original keyword: mjd-obs',
  `far_hz` double DEFAULT NULL,
  `far_years` double DEFAULT NULL,
  `distmean` double DEFAULT NULL,
  `diststd` double DEFAULT NULL,
  `class_bbh` double DEFAULT NULL,
  `class_bns` double DEFAULT NULL,
  `class_nsbh` double DEFAULT NULL,
  `class_terrestrial` double DEFAULT NULL,
  `prop_hasns` double DEFAULT NULL,
  `prop_hasremnant` double DEFAULT NULL,
  `prop_hasmassgap` double DEFAULT NULL,
  `area10` double DEFAULT NULL,
  `area50` double DEFAULT NULL,
  `area90` double DEFAULT NULL,
  `creator` varchar(30) DEFAULT NULL,
  `ra_centre` double DEFAULT NULL,
  `dec_centre` double DEFAULT NULL,
  `group` varchar(100) DEFAULT NULL,
  `logbci` double DEFAULT NULL,
  `logbsn` double DEFAULT NULL,
  `pipeline` varchar(100) DEFAULT NULL,
  `search` varchar(100) DEFAULT NULL,
  `map` varchar(400) DEFAULT NULL,
  `dateAdded` datetime DEFAULT current_timestamp(),
  `dateLastModified` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dateLastMatched` datetime DEFAULT NULL,
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `primaryId_UNIQUE` (`primaryId`),
  UNIQUE KEY `superevent_id_alert_time_alert_type` (`superevent_id`,`alert_time`,`alert_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `lvk_events`
--

DROP TABLE IF EXISTS `lvk_events`;
/*!50001 DROP VIEW IF EXISTS `lvk_events`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lvk_events` AS SELECT 
 1 AS `superevent_id`,
 1 AS `significant`,
 1 AS `latest_alert`,
 1 AS `alert_time`,
 1 AS `alert_delta_sec`,
 1 AS `date_obs`,
 1 AS `mjd_obs`,
 1 AS `far_hz`,
 1 AS `far_years`,
 1 AS `distmean`,
 1 AS `diststd`,
 1 AS `class_bbh`,
 1 AS `class_bns`,
 1 AS `class_nsbh`,
 1 AS `class_terrestrial`,
 1 AS `prop_hasns`,
 1 AS `prop_hasremnant`,
 1 AS `prop_hasmassgap`,
 1 AS `area10`,
 1 AS `area50`,
 1 AS `area90`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `lvk_skytag`
--

DROP TABLE IF EXISTS `lvk_skytag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lvk_skytag` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `dateCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `dateLastModified` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `contour` double NOT NULL,
  `daysSinceEvent` double NOT NULL,
  `mapId` tinyint(4) NOT NULL,
  `superevent_id` varchar(100) NOT NULL,
  `transientBucketId` int(11) NOT NULL,
  `distMpc` double DEFAULT NULL,
  `sigmaMpc` double DEFAULT NULL,
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `mapid_transientbucketid` (`mapId`,`transientBucketId`),
  KEY `idx_transientBucketId` (`transientBucketId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `map_survey_marshall_discoveries`
--

DROP TABLE IF EXISTS `map_survey_marshall_discoveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `map_survey_marshall_discoveries` (
  `columnName` varchar(150) NOT NULL,
  `tns_sources` varchar(150) DEFAULT NULL,
  `tns_photometry` varchar(150) DEFAULT NULL,
  `view_tns_photometry_discoveries` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`columnName`),
  UNIQUE KEY `columnName_UNIQUE` (`columnName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `map_survey_marshall_photometry`
--

DROP TABLE IF EXISTS `map_survey_marshall_photometry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `map_survey_marshall_photometry` (
  `columnName` varchar(150) NOT NULL,
  `tns_photometry` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`columnName`),
  UNIQUE KEY `columnName_UNIQUE` (`columnName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `map_survey_marshall_spectra`
--

DROP TABLE IF EXISTS `map_survey_marshall_spectra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `map_survey_marshall_spectra` (
  `columnName` varchar(150) NOT NULL,
  `tns_spectra` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`columnName`),
  UNIQUE KEY `columnName_UNIQUE` (`columnName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `map_survey_transientbucket`
--

DROP TABLE IF EXISTS `map_survey_transientbucket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `map_survey_transientbucket` (
  `columnName` varchar(150) NOT NULL,
  PRIMARY KEY (`columnName`),
  UNIQUE KEY `columnName_UNIQUE` (`columnName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marshall_fs_column_map`
--

DROP TABLE IF EXISTS `marshall_fs_column_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marshall_fs_column_map` (
  `primaryId` int(11) NOT NULL AUTO_INCREMENT,
  `fs_table_name` varchar(45) NOT NULL,
  `fs_survey_name` varchar(45) DEFAULT NULL,
  `transientBucket_column` varchar(45) DEFAULT NULL,
  `fs_table_column` varchar(45) NOT NULL,
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `unquie_fs_table_name_fs_table_column` (`fs_table_name`,`fs_table_column`)
) ENGINE=InnoDB AUTO_INCREMENT=1161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marshall_sources`
--

DROP TABLE IF EXISTS `marshall_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marshall_sources` (
  `marshallId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'The primary key for this table',
  `raDeg` double DEFAULT NULL COMMENT 'RA is decimal degreed',
  `decDeg` double DEFAULT NULL COMMENT 'DEC in decimal degrees',
  `dateCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `sherlockClassification` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`marshallId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `u_marshallId` (`marshallId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `u_raDeg_decDeg` (`raDeg`,`decDeg`) KEY_BLOCK_SIZE=1024,
  KEY `i_marshallId` (`marshallId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marshall_sources_discoveries`
--

DROP TABLE IF EXISTS `marshall_sources_discoveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marshall_sources_discoveries` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'The primary key for this table',
  `marshallId` bigint(20) NOT NULL,
  `name` varchar(40) NOT NULL COMMENT 'the name of the transient given by the reporting survey.',
  `survey` varchar(20) NOT NULL COMMENT 'the survey reporting observation of this transient',
  `discoveryPhase` varchar(20) DEFAULT NULL COMMENT 'the discovery phase given by the reporting survey (if any)',
  `surveyObjectUrl` varchar(200) DEFAULT NULL COMMENT 'the url for dedicated webpage of transients supplied by the reporting survey (if any)',
  `transientTypePrediction` varchar(40) DEFAULT NULL COMMENT 'an attempt at predicting the transient type by the reporting survey.',
  `transientTypePredicationSource` varchar(40) DEFAULT NULL COMMENT 'the name of the source/catalogue that was used to predict the transient type',
  `hostRedshift` float DEFAULT NULL COMMENT 'redshift measure for the host',
  `hostRedshiftType` varchar(10) DEFAULT NULL COMMENT 'type of redshift measure for the host galaxy\n',
  `referenceImageUrl` varchar(140) DEFAULT NULL COMMENT 'true or false',
  `targetImageUrl` varchar(140) DEFAULT NULL COMMENT 'true or false',
  `subtractedImageUrl` varchar(140) DEFAULT NULL,
  `tripletImageUrl` varchar(140) DEFAULT NULL,
  `finderImageUrl` varchar(140) DEFAULT NULL,
  `lightcurveURL` varchar(140) DEFAULT NULL,
  `dateCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `masterId` int(11) NOT NULL DEFAULT 0 COMMENT 'If this flag is set (=1) then the transient is assigned this name as it''s master ID. If not set (=0) then there is another entry in this table where the master ID has been set.',
  `raDeg` double NOT NULL,
  `decDeg` double NOT NULL,
  PRIMARY KEY (`primaryId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `u_primaryId` (`primaryId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `marshallId_survey` (`marshallId`,`survey`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `i_marshallId` (`marshallId`),
  KEY `i_survey` (`survey`),
  KEY `i_surveyId` (`name`),
  KEY `i_masterId` (`masterId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marshall_sources_photometry`
--

DROP TABLE IF EXISTS `marshall_sources_photometry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marshall_sources_photometry` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'The primary key for this table',
  `marshallId` bigint(20) NOT NULL,
  `name` varchar(40) NOT NULL COMMENT 'the name of the transient given by the reporting survey.',
  `observationDate` datetime NOT NULL COMMENT 'the survey observation date',
  `observationMJD` double NOT NULL COMMENT 'the survey observation MJD',
  `magnitude` float NOT NULL COMMENT 'the survey magnitude',
  `magnitudeError` float DEFAULT NULL COMMENT 'the survey magnitude error',
  `filter` varchar(20) DEFAULT NULL COMMENT 'survey filter',
  `telescope` varchar(100) DEFAULT NULL,
  `instrument` varchar(100) DEFAULT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `limitingMag` tinyint(4) DEFAULT 0,
  `dateCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `dateLastModified` datetime DEFAULT current_timestamp(),
  `updated` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`primaryId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `u_primaryId` (`primaryId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `u_surveyId_mjd` (`name`,`observationMJD`),
  KEY `i_marshallId` (`marshallId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marshall_sources_related_files`
--

DROP TABLE IF EXISTS `marshall_sources_related_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marshall_sources_related_files` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'The primary key for this table',
  `marshallId` bigint(20) NOT NULL,
  `dateCreated` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`primaryId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `u_primaryId` (`primaryId`) KEY_BLOCK_SIZE=1024,
  KEY `i_marshallId` (`marshallId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marshall_sources_spectra`
--

DROP TABLE IF EXISTS `marshall_sources_spectra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marshall_sources_spectra` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'The primary key for this table',
  `marshallId` bigint(20) NOT NULL,
  `name` varchar(40) NOT NULL COMMENT 'the name of the transient given by the reporting survey.',
  `observationDate` datetime DEFAULT NULL COMMENT 'the survey observation date',
  `observationMJD` double NOT NULL COMMENT 'the survey observation MJD',
  `transientRedshift` float DEFAULT NULL COMMENT 'redshift as measured from a spectrum of the transient',
  `transientRedshiftNotes` varchar(40) DEFAULT NULL COMMENT 'transient redshift notes',
  `spectralType` varchar(20) NOT NULL COMMENT 'the spectral classification given by the reporting survey (if any)',
  `telescope` varchar(100) DEFAULT NULL,
  `instrument` varchar(100) DEFAULT NULL,
  `reducer` varchar(100) DEFAULT NULL,
  `dateCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `classificationWRTMax` varchar(45) DEFAULT NULL,
  `classificationPhase` int(11) DEFAULT NULL,
  `survey` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`primaryId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `u_primaryId` (`primaryId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `u_marshallId_mjd` (`marshallId`,`observationMJD`),
  UNIQUE KEY `u_name_mjd` (`name`,`observationMJD`),
  UNIQUE KEY `u_id_survey_specType` (`spectralType`,`marshallId`,`survey`),
  KEY `i_marshallId` (`marshallId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marshall_transient_akas`
--

DROP TABLE IF EXISTS `marshall_transient_akas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marshall_transient_akas` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT,
  `transientBucketId` bigint(20) NOT NULL,
  `name` varchar(45) NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  `master` tinyint(1) DEFAULT 0,
  `hidden` tinyint(1) DEFAULT 0,
  `addedDate` datetime NOT NULL,
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `uni_transientbucketid_name` (`transientBucketId`,`name`),
  KEY `idx_transientbucketid` (`transientBucketId`),
  KEY `idx_name` (`name`),
  KEY `idx_url` (`url`),
  KEY `idx_url_name_transientbucketid_addedDate` (`transientBucketId`,`name`,`url`,`addedDate`),
  KEY `idx_master_name_transinetbucketid` (`master`,`name`,`transientBucketId`)
) ENGINE=InnoDB AUTO_INCREMENT=361649 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `meta_workflow_lists_counts`
--

DROP TABLE IF EXISTS `meta_workflow_lists_counts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_workflow_lists_counts` (
  `primaryId` int(11) NOT NULL AUTO_INCREMENT,
  `listname` varchar(100) DEFAULT NULL,
  `count` mediumint(9) DEFAULT NULL,
  PRIMARY KEY (`primaryId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `primaryId_UNIQUE` (`primaryId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `listname_unique` (`listname`) KEY_BLOCK_SIZE=1024
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pessto_marshall_object_summaries`
--

DROP TABLE IF EXISTS `pessto_marshall_object_summaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessto_marshall_object_summaries` (
  `transientBucketId` bigint(20) NOT NULL COMMENT 'This is set to the primaryKeyId of the **first** entry of this object into the database (i.e. earliest dateCreated)',
  `name` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'the name of the transient given by the reporting survey.',
  `survey` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'the survey reporting observation of this transient',
  `raDeg` double DEFAULT NULL COMMENT 'RA is decimal degreed',
  `decDeg` double DEFAULT NULL COMMENT 'DEC in decimal degrees',
  `spectralType` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'the spectral classification given by the reporting survey (if any)',
  `transientRedshift` float DEFAULT NULL COMMENT 'redshift as measured from a spectrum of the transient'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pessto_papers`
--

DROP TABLE IF EXISTS `pessto_papers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessto_papers` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `abstract_url` varchar(640) DEFAULT NULL,
  `article_url` varchar(638) DEFAULT NULL,
  `athors` varchar(800) DEFAULT NULL,
  `bibcode` varchar(200) DEFAULT NULL,
  `citations_count` int(11) DEFAULT NULL,
  `citations_url` varchar(642) DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `dateLastModified` datetime DEFAULT NULL,
  `dateLastRead` datetime DEFAULT NULL,
  `ejournal_url` varchar(640) DEFAULT NULL,
  `journal` varchar(616) DEFAULT NULL,
  `preprint_url` varchar(640) DEFAULT NULL,
  `pubdate` datetime DEFAULT NULL,
  `refcit_count` tinyint(4) DEFAULT NULL,
  `refcit_url` varchar(636) DEFAULT NULL,
  `title` varchar(800) DEFAULT NULL,
  `authors` varchar(800) DEFAULT NULL,
  PRIMARY KEY (`primaryId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `bibcode_pubdate` (`bibcode`,`pubdate`) KEY_BLOCK_SIZE=4096
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pesstoobjects`
--

DROP TABLE IF EXISTS `pesstoobjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pesstoobjects` (
  `pesstoObjectsId` int(11) NOT NULL AUTO_INCREMENT COMMENT 'This is the primary ID for all pessto objects. All helper tables with reference this ID to associate data with the pessto object.',
  `transientBucketId` int(11) NOT NULL COMMENT 'the primary ID of the pessto object in the master_sn_list table.',
  `classifiedFlag` tinyint(4) NOT NULL DEFAULT 0,
  `marshallWorkflowLocation` varchar(45) NOT NULL COMMENT 'pessto workflow status flag 01 (cannot be null)',
  `alertWorkflowLocation` varchar(45) NOT NULL COMMENT 'pessto workflow status flag 02 (can be null)',
  `publicStatus` int(11) NOT NULL COMMENT 'the release status of the object',
  `dateAdded` datetime NOT NULL COMMENT 'date the pessto object was added to this database',
  `dateLastModified` datetime NOT NULL COMMENT 'date the entry for the pessto object **in this table** was last modified.',
  `finderChartLocalUrl` varchar(300) DEFAULT NULL,
  `lsq_stamp` tinyint(4) DEFAULT NULL,
  `css_stamp` tinyint(4) DEFAULT NULL,
  `lsq_lightcurve` tinyint(4) DEFAULT NULL,
  `ogle_target_stamp` tinyint(4) DEFAULT NULL,
  `ogle_lightcurve` tinyint(4) DEFAULT NULL,
  `ogle_subtracted_stamp` tinyint(4) DEFAULT NULL,
  `ogle_reference_stamp` tinyint(4) DEFAULT NULL,
  `mls_stamp` tinyint(4) DEFAULT NULL,
  `sss_stamp` tinyint(4) DEFAULT NULL,
  `css_lightcurve` tinyint(4) DEFAULT NULL,
  `sss_lightcurve` tinyint(4) DEFAULT NULL,
  `mls_lightcurve` tinyint(4) DEFAULT NULL,
  `ps1_subtracted_stamp` tinyint(4) DEFAULT NULL,
  `ps1_target_stamp` tinyint(4) DEFAULT NULL,
  `ps1_reference_stamp` tinyint(4) DEFAULT NULL,
  `skymapper_reference_stamp` tinyint(4) DEFAULT NULL,
  `skymapper_subtracted_stamp` tinyint(4) DEFAULT NULL,
  `skymapper_target_stamp` tinyint(4) DEFAULT NULL,
  `ogle_color_context_stamp` tinyint(4) DEFAULT NULL,
  `pi_name` varchar(200) DEFAULT NULL,
  `pi_email` varchar(200) DEFAULT NULL,
  `master_pessto_lightcurve` tinyint(4) DEFAULT NULL,
  `classification_finalised` tinyint(4) NOT NULL DEFAULT 0,
  `master_stamp` tinyint(4) DEFAULT NULL,
  `bsl_stamp` tinyint(4) DEFAULT NULL,
  `observationPriority` tinyint(4) DEFAULT 2,
  `mpcMatch` varchar(200) DEFAULT NULL,
  `snoozed` tinyint(4) DEFAULT 0,
  `lastReviewedMag` float DEFAULT NULL,
  `lastReviewedMagDate` datetime DEFAULT NULL,
  `des_target_stamp` tinyint(4) DEFAULT NULL,
  `des_reference_stamp` tinyint(4) DEFAULT NULL,
  `des_subtracted_stamp` tinyint(4) DEFAULT NULL,
  `gaia_stamp` tinyint(4) DEFAULT NULL,
  `ps1_map` tinyint(4) DEFAULT NULL,
  `photometry_catalogue_release` varchar(45) DEFAULT NULL,
  `transient_catalogue_release` varchar(45) DEFAULT NULL,
  `followup_target_release` varchar(45) DEFAULT NULL,
  `pessto_citations` varchar(200) DEFAULT NULL,
  `atlas_target_stamp` tinyint(4) DEFAULT NULL,
  `atlas_subtracted_stamp` tinyint(4) DEFAULT NULL,
  `atlas_reference_stamp` tinyint(4) DEFAULT NULL,
  `atlas_fp_lightcurve` datetime DEFAULT NULL,
  `ztf_stamp` tinyint(4) DEFAULT NULL,
  `user_added_stamp` tinyint(4) DEFAULT NULL,
  `resurrectionCount` tinyint(4) DEFAULT 0,
  `unarchiveToMarshallWorkflowLocation` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pesstoObjectsId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `pesstoObjectId_UNIQUE` (`pesstoObjectsId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `masterSnId_UNIQUE` (`transientBucketId`) KEY_BLOCK_SIZE=1024,
  KEY `transientBucketId` (`transientBucketId`),
  KEY `classified` (`classifiedFlag`),
  KEY `mwl` (`marshallWorkflowLocation`),
  KEY `awl` (`alertWorkflowLocation`),
  KEY `idx_ps1_target_stamp` (`ps1_target_stamp`),
  FULLTEXT KEY `fulltext` (`pi_name`),
  FULLTEXT KEY `fulltext_pi_name` (`pi_name`)
) ENGINE=InnoDB AUTO_INCREMENT=56023 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pesstoobjectschangelog`
--

DROP TABLE IF EXISTS `pesstoobjectschangelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pesstoobjectschangelog` (
  `pesstoObjectsChangeLog` int(11) NOT NULL AUTO_INCREMENT,
  `pesstoObjectsId` int(11) NOT NULL,
  `whatWasChanged` mediumtext NOT NULL,
  `whenChangeOccured` datetime NOT NULL,
  `changeAuthor` varchar(45) NOT NULL,
  PRIMARY KEY (`pesstoObjectsChangeLog`) KEY_BLOCK_SIZE=1024
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pesstoobjectscomments`
--

DROP TABLE IF EXISTS `pesstoobjectscomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pesstoobjectscomments` (
  `pesstoObjectsCommentsId` int(11) NOT NULL AUTO_INCREMENT,
  `pesstoObjectsId` int(11) NOT NULL,
  `commentAuthor` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `dateLastModified` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `removed` tinyint(4) NOT NULL DEFAULT 0,
  `localAttachmentUrl` varchar(300) DEFAULT NULL,
  `comment` longtext NOT NULL,
  PRIMARY KEY (`pesstoObjectsCommentsId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `objectId_date_author_comment` (`pesstoObjectsId`,`dateCreated`,`commentAuthor`,`comment`(90)) KEY_BLOCK_SIZE=1024,
  KEY `pesstoObjectsId` (`pesstoObjectsId`)
) ENGINE=InnoDB AUTO_INCREMENT=525 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `scheduler_api_calls`
--

DROP TABLE IF EXISTS `scheduler_api_calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduler_api_calls` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT,
  `transientBucketId` bigint(20) NOT NULL,
  `objectName` varchar(50) NOT NULL,
  `magnitude` double DEFAULT NULL,
  `limitingMagnitude` tinyint(4) DEFAULT NULL,
  `apiCallType` varchar(45) DEFAULT NULL,
  `triggerTime` datetime NOT NULL,
  `stampUrl` varchar(200) DEFAULT NULL,
  `raDeg` double DEFAULT NULL,
  `decDeg` double DEFAULT NULL,
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `primaryId_UNIQUE` (`primaryId`),
  UNIQUE KEY `uni_transientbucketid_triggerDate` (`transientBucketId`,`triggerTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `scheduler_obs`
--

DROP TABLE IF EXISTS `scheduler_obs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduler_obs` (
  `transientBucketId` bigint(20) unsigned NOT NULL,
  `OB_ID` bigint(20) DEFAULT NULL,
  `dateCreated` datetime DEFAULT current_timestamp(),
  `dateLastModified` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `latestMag` varchar(45) DEFAULT NULL,
  `latestMagFilter` varchar(30) DEFAULT NULL,
  `latestMagDate` datetime DEFAULT NULL,
  `targetName` varchar(45) NOT NULL,
  `updated` tinyint(1) DEFAULT 0,
  `ESO_OB_Status` varchar(45) DEFAULT NULL,
  `autoOB` int(11) DEFAULT 1,
  `insertedMag` double DEFAULT NULL COMMENT 'This column contains the magnitude of the transient when entered the scheduler',
  `insertedFilter` varchar(100) DEFAULT NULL COMMENT 'This field contains the filter of the insertedMagnitude which correspond to the brightness of the transient when entered the scheduler for the first time',
  PRIMARY KEY (`transientBucketId`),
  UNIQUE KEY `transientBucketId_autoOB_UNIQUE` (`transientBucketId`,`autoOB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sherlock_classifications`
--

DROP TABLE IF EXISTS `sherlock_classifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sherlock_classifications` (
  `transient_object_id` bigint(20) NOT NULL,
  `classification` varchar(45) DEFAULT NULL,
  `annotation` mediumtext DEFAULT NULL,
  `summary` varchar(50) DEFAULT NULL,
  `mismatchComment` varchar(500) DEFAULT NULL,
  `dateLastModified` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dateCreated` datetime DEFAULT current_timestamp(),
  `updated` varchar(45) DEFAULT '0',
  `user` varchar(80) DEFAULT NULL,
  `commentDate` datetime DEFAULT NULL,
  `separationArcsec` double DEFAULT NULL,
  PRIMARY KEY (`transient_object_id`),
  KEY `idx_classification` (`classification`),
  KEY `idx_summary` (`summary`),
  KEY `idx_dateLastModified` (`dateLastModified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`marshall`@`localhost`*/ /*!50003 TRIGGER `sherlock_classifications_BEFORE_INSERT` BEFORE INSERT ON `sherlock_classifications` FOR EACH ROW
BEGIN
    IF new.classification = "ORPHAN" THEN
        SET new.annotation = "The transient location is not matched against any known catalogued source", new.summary = "No catalogued match";
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`marshall`@`localhost`*/ /*!50003 TRIGGER `sherlock_classifications_AFTER_INSERT` AFTER INSERT ON `sherlock_classifications` FOR EACH ROW
BEGIN
update `transientBucket` set `sherlockClassification` = new.classification
					where `transientBucketId`  = new.transient_object_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sherlock_crossmatches`
--

DROP TABLE IF EXISTS `sherlock_crossmatches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sherlock_crossmatches` (
  `transient_object_id` bigint(20) unsigned DEFAULT NULL,
  `catalogue_object_id` varchar(200) DEFAULT NULL,
  `catalogue_table_id` smallint(5) unsigned DEFAULT NULL,
  `separationArcsec` double DEFAULT NULL,
  `northSeparationArcsec` double DEFAULT NULL,
  `eastSeparationArcsec` double DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `z` double DEFAULT NULL,
  `scale` double DEFAULT NULL,
  `z_distance` double DEFAULT NULL,
  `z_distance_modulus` double DEFAULT NULL,
  `photoZ` double DEFAULT NULL,
  `photoZErr` double DEFAULT NULL,
  `association_type` varchar(45) DEFAULT NULL,
  `dateCreated` datetime DEFAULT current_timestamp(),
  `physical_separation_kpc` double DEFAULT NULL,
  `catalogue_object_type` varchar(45) DEFAULT NULL,
  `catalogue_object_subtype` varchar(45) DEFAULT NULL,
  `association_rank` int(11) DEFAULT NULL,
  `catalogue_table_name` varchar(100) DEFAULT NULL,
  `catalogue_view_name` varchar(100) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `rankScore` double DEFAULT NULL,
  `search_name` varchar(100) DEFAULT NULL,
  `major_axis_arcsec` double DEFAULT NULL,
  `direct_distance` double DEFAULT NULL,
  `direct_distance_scale` double DEFAULT NULL,
  `direct_distance_modulus` double DEFAULT NULL,
  `raDeg` double DEFAULT NULL,
  `decDeg` double DEFAULT NULL,
  `original_search_radius_arcsec` double DEFAULT NULL,
  `catalogue_view_id` int(11) DEFAULT NULL,
  `U` double DEFAULT NULL,
  `UErr` double DEFAULT NULL,
  `B` double DEFAULT NULL,
  `BErr` double DEFAULT NULL,
  `V` double DEFAULT NULL,
  `VErr` double DEFAULT NULL,
  `R` double DEFAULT NULL,
  `RErr` double DEFAULT NULL,
  `I` double DEFAULT NULL,
  `IErr` double DEFAULT NULL,
  `J` double DEFAULT NULL,
  `JErr` double DEFAULT NULL,
  `H` double DEFAULT NULL,
  `HErr` double DEFAULT NULL,
  `K` double DEFAULT NULL,
  `KErr` double DEFAULT NULL,
  `_u` double DEFAULT NULL,
  `_uErr` double DEFAULT NULL,
  `_g` double DEFAULT NULL,
  `_gErr` double DEFAULT NULL,
  `_r` double DEFAULT NULL,
  `_rErr` double DEFAULT NULL,
  `_i` double DEFAULT NULL,
  `_iErr` double DEFAULT NULL,
  `_z` double DEFAULT NULL,
  `_zErr` double DEFAULT NULL,
  `_y` double DEFAULT NULL,
  `_yErr` double DEFAULT NULL,
  `G` double DEFAULT NULL,
  `GErr` double DEFAULT NULL,
  `unkMag` double DEFAULT NULL,
  `unkMagErr` double DEFAULT NULL,
  `dateLastModified` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated` tinyint(4) DEFAULT 0,
  `classificationReliability` tinyint(4) DEFAULT NULL,
  `transientAbsMag` double DEFAULT NULL,
  `merged_rank` tinyint(4) DEFAULT NULL,
  `W1` double DEFAULT NULL,
  `W1Err` double DEFAULT NULL,
  `direct_distance_cat` varchar(100) DEFAULT NULL,
  `pz_distance_cat` varchar(100) DEFAULT NULL,
  `sm_axis_arcsec` double DEFAULT NULL,
  `z_distance_cat` varchar(100) DEFAULT NULL,
  `pz_distance_modulus` float DEFAULT NULL,
  `pz_distance` float DEFAULT NULL,
  `pz_distance_scale` float DEFAULT NULL,
  `W2` double DEFAULT NULL,
  `W2Err` double DEFAULT NULL,
  `W3` double DEFAULT NULL,
  `W3Err` double DEFAULT NULL,
  `W4` double DEFAULT NULL,
  `W4Err` double DEFAULT NULL,
  `best_distance_flag` varchar(10) DEFAULT NULL,
  `best_distance_source` varchar(45) DEFAULT NULL,
  `best_distance` float DEFAULT NULL,
  `z_distance_scale` float DEFAULT NULL,
  `distance` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `key_transient_object_id` (`transient_object_id`),
  KEY `key_catalogue_object_id` (`catalogue_object_id`),
  KEY `idx_separationArcsec` (`separationArcsec`),
  KEY `idx_rank` (`rank`),
  KEY `idx_original_search_radius_arcsec` (`original_search_radius_arcsec`)
) ENGINE=InnoDB AUTO_INCREMENT=303360 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stats_full_release_overview`
--

DROP TABLE IF EXISTS `stats_full_release_overview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats_full_release_overview` (
  `primaryId` int(11) NOT NULL AUTO_INCREMENT,
  `filetype` varchar(200) DEFAULT NULL,
  `numberOfFiles` int(11) DEFAULT NULL,
  `dataVolumeBytes` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`primaryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stats_ssdr1_overview`
--

DROP TABLE IF EXISTS `stats_ssdr1_overview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats_ssdr1_overview` (
  `primaryId` int(11) NOT NULL AUTO_INCREMENT,
  `filetype` varchar(200) DEFAULT NULL,
  `numberOfFiles` int(11) DEFAULT NULL,
  `dataVolumeBytes` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`primaryId`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stats_ssdr2_overview`
--

DROP TABLE IF EXISTS `stats_ssdr2_overview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats_ssdr2_overview` (
  `primaryId` int(11) NOT NULL AUTO_INCREMENT,
  `filetype` varchar(200) DEFAULT NULL,
  `numberOfFiles` int(11) DEFAULT NULL,
  `dataVolumeBytes` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`primaryId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stats_ssdr3_overview`
--

DROP TABLE IF EXISTS `stats_ssdr3_overview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats_ssdr3_overview` (
  `primaryId` int(11) NOT NULL AUTO_INCREMENT,
  `filetype` varchar(200) DEFAULT NULL,
  `numberOfFiles` int(11) DEFAULT NULL,
  `dataVolumeBytes` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`primaryId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcs_catalogue_tables`
--

DROP TABLE IF EXISTS `tcs_catalogue_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcs_catalogue_tables` (
  `id` smallint(5) unsigned NOT NULL,
  `table_name` varchar(40) NOT NULL,
  `description` varchar(60) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcs_helper_catalogue_tables_info`
--

DROP TABLE IF EXISTS `tcs_helper_catalogue_tables_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcs_helper_catalogue_tables_info` (
  `id` smallint(5) unsigned NOT NULL,
  `table_name` varchar(100) DEFAULT NULL,
  `description` varchar(60) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `number_of_rows` bigint(20) DEFAULT NULL,
  `reference_url` varchar(200) DEFAULT NULL,
  `reference_text` varchar(70) DEFAULT NULL,
  `notes` mediumtext DEFAULT NULL,
  `vizier_link` varchar(200) DEFAULT NULL,
  `in_ned` tinyint(4) DEFAULT NULL,
  `object_types` varchar(100) DEFAULT NULL,
  `version_number` varchar(45) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `legacy_table` tinyint(4) DEFAULT 0,
  `old_table_name` varchar(100) DEFAULT NULL,
  `raColName` varchar(45) DEFAULT NULL,
  `decColName` varchar(45) DEFAULT NULL,
  `subTypeColName` varchar(45) DEFAULT NULL,
  `objectNameColName` varchar(100) DEFAULT NULL,
  `redshiftColName` varchar(100) DEFAULT NULL,
  `distanceColName` varchar(45) DEFAULT NULL,
  `object_type_accuracy` tinyint(2) DEFAULT NULL,
  `semiMajorColName` varchar(100) DEFAULT NULL,
  `semiMajorToArcsec` float DEFAULT NULL,
  `transientStream` tinyint(4) DEFAULT 0,
  `filter1ColName` varchar(45) DEFAULT NULL,
  `filterName1ColName` varchar(45) DEFAULT NULL,
  `filterErr1ColName` varchar(45) DEFAULT NULL,
  `filter2ColName` varchar(45) DEFAULT NULL,
  `filterName2ColName` varchar(45) DEFAULT NULL,
  `filterErr2ColName` varchar(45) DEFAULT NULL,
  `filter3ColName` varchar(45) DEFAULT NULL,
  `filterName3ColName` varchar(45) DEFAULT NULL,
  `filterErr3ColName` varchar(45) DEFAULT NULL,
  `filter4ColName` varchar(45) DEFAULT NULL,
  `filterName4ColName` varchar(45) DEFAULT NULL,
  `filterErr4ColName` varchar(45) DEFAULT NULL,
  `filter5ColName` varchar(45) DEFAULT NULL,
  `filterName5ColName` varchar(45) DEFAULT NULL,
  `filterErr5ColName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcs_helper_catalogue_views_info`
--

DROP TABLE IF EXISTS `tcs_helper_catalogue_views_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcs_helper_catalogue_views_info` (
  `id` smallint(5) unsigned NOT NULL,
  `view_name` varchar(100) DEFAULT NULL,
  `number_of_rows` bigint(20) DEFAULT NULL,
  `object_type` varchar(100) DEFAULT NULL,
  `legacy_view` tinyint(4) DEFAULT 0,
  `old_view_name` varchar(100) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcs_stats_catalogues`
--

DROP TABLE IF EXISTS `tcs_stats_catalogues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcs_stats_catalogues` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `all_transient_associations` double DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `number_of_rows` double DEFAULT NULL,
  `object_types` varchar(100) DEFAULT NULL,
  `table_id` tinyint(4) DEFAULT NULL,
  `table_name` varchar(100) DEFAULT NULL,
  `top_ranked_transient_associations` double DEFAULT NULL,
  `transientStream` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `table_id` (`table_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tns_files`
--

DROP TABLE IF EXISTS `tns_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tns_files` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `TNSId` varchar(55) NOT NULL,
  `dateCreated` datetime DEFAULT current_timestamp(),
  `dateObs` datetime DEFAULT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `spec1phot2` tinyint(4) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `updated` tinyint(4) DEFAULT 0,
  `dateLastModified` datetime DEFAULT NULL,
  `comment` varchar(800) DEFAULT NULL,
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `tnsid_url` (`TNSId`,`url`)
) ENGINE=InnoDB AUTO_INCREMENT=123135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tns_photometry`
--

DROP TABLE IF EXISTS `tns_photometry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tns_photometry` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `TNSId` varchar(20) NOT NULL,
  `dateCreated` datetime DEFAULT current_timestamp(),
  `exptime` double DEFAULT NULL,
  `filter` varchar(100) DEFAULT NULL,
  `limitingMag` tinyint(4) DEFAULT NULL,
  `mag` double DEFAULT NULL,
  `magErr` double DEFAULT NULL,
  `magUnit` varchar(100) DEFAULT NULL,
  `objectName` varchar(100) DEFAULT NULL,
  `obsdate` datetime DEFAULT NULL,
  `reportAddedDate` datetime DEFAULT NULL,
  `suggestedType` varchar(100) DEFAULT NULL,
  `survey` varchar(100) DEFAULT NULL,
  `telescope` varchar(100) DEFAULT NULL,
  `updated` tinyint(4) DEFAULT 0,
  `dateLastModified` datetime DEFAULT NULL,
  `remarks` varchar(800) DEFAULT NULL,
  `sourceComment` varchar(800) DEFAULT NULL,
  `observationMJD` double DEFAULT NULL,
  `transientBucketId` bigint(20) DEFAULT NULL,
  `ingested` tinyint(4) DEFAULT 0,
  `raDeg` double DEFAULT NULL,
  `decDeg` double DEFAULT NULL,
  `reportingGroup` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `u_tnsid_obsdate_mag` (`mag`,`obsdate`,`TNSId`),
  UNIQUE KEY `u_tnsid_survey_obsdate` (`TNSId`,`survey`,`obsdate`),
  UNIQUE KEY `u_tnsid_obsdate_objname` (`TNSId`,`obsdate`,`objectName`),
  KEY `idx_transientBucketId` (`transientBucketId`)
) ENGINE=InnoDB AUTO_INCREMENT=358281 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tns_sources`
--

DROP TABLE IF EXISTS `tns_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tns_sources` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `TNSId` varchar(20) NOT NULL,
  `TNSName` varchar(20) DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `decDeg` double DEFAULT NULL,
  `decSex` varchar(45) DEFAULT NULL,
  `discDate` datetime DEFAULT NULL,
  `discMag` double DEFAULT NULL,
  `discMagFilter` varchar(45) DEFAULT NULL,
  `discSurvey` varchar(100) DEFAULT NULL,
  `discoveryName` varchar(100) DEFAULT NULL,
  `objectUrl` varchar(200) DEFAULT NULL,
  `raDeg` double DEFAULT NULL,
  `raSex` varchar(45) DEFAULT NULL,
  `specType` varchar(100) DEFAULT NULL,
  `transRedshift` double DEFAULT NULL,
  `updated` tinyint(4) DEFAULT 0,
  `dateLastModified` datetime DEFAULT NULL,
  `hostName` varchar(100) DEFAULT NULL,
  `hostRedshift` double DEFAULT NULL,
  `survey` varchar(100) DEFAULT NULL,
  `transientBucketId` bigint(20) DEFAULT NULL,
  `ingested` tinyint(4) DEFAULT 0,
  `reportingSurvey` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `tnsid` (`TNSId`),
  KEY `idx_transientBucketId` (`transientBucketId`),
  KEY `idx_ingested` (`ingested`)
) ENGINE=InnoDB AUTO_INCREMENT=180378 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tns_spectra`
--

DROP TABLE IF EXISTS `tns_spectra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tns_spectra` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `TNSId` varchar(45) NOT NULL,
  `TNSuser` varchar(45) DEFAULT NULL,
  `dateCreated` datetime DEFAULT current_timestamp(),
  `exptime` double DEFAULT NULL,
  `obsdate` datetime DEFAULT NULL,
  `reportAddedDate` datetime DEFAULT NULL,
  `specType` varchar(100) DEFAULT NULL,
  `survey` varchar(100) DEFAULT NULL,
  `telescope` varchar(100) DEFAULT NULL,
  `transRedshift` double DEFAULT NULL,
  `updated` tinyint(4) DEFAULT 0,
  `dateLastModified` datetime DEFAULT NULL,
  `remarks` varchar(800) DEFAULT NULL,
  `sourceComment` varchar(800) DEFAULT NULL,
  `observationMJD` double DEFAULT NULL,
  `discoveryName` varchar(50) DEFAULT NULL,
  `transientBucketId` bigint(20) DEFAULT NULL,
  `ingested` tinyint(4) DEFAULT 0,
  `TNSName` varchar(45) DEFAULT NULL,
  `raDeg` double DEFAULT NULL,
  `decDeg` double DEFAULT NULL,
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `tnsid_survey_obsdate` (`TNSId`,`survey`,`obsdate`),
  UNIQUE KEY `u_tnsid_TNSUser_obsdate` (`TNSId`,`TNSuser`,`obsdate`),
  KEY `idx_transientBucketId` (`transientBucketId`),
  KEY `idx_ingested` (`ingested`),
  KEY `idx_TNSName` (`TNSName`),
  KEY `idx_dateCreated` (`dateCreated`)
) ENGINE=InnoDB AUTO_INCREMENT=119175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `transientbucket`
--

DROP TABLE IF EXISTS `transientbucket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transientbucket` (
  `primaryKeyId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'The primary key for this table',
  `transientBucketId` bigint(20) NOT NULL COMMENT 'This is set to the primaryKeyId of the **first** entry of this object into the database (i.e. earliest dateCreated)',
  `masterIDFlag` int(11) NOT NULL DEFAULT 0 COMMENT 'If this flag is set (=1) then the transient is assigned this name as it''s master ID. If not set (=0) then there is another entry in this table where the master ID has been set.',
  `name` varchar(40) NOT NULL COMMENT 'the name of the transient given by the reporting survey.',
  `survey` varchar(45) DEFAULT 'unknown' COMMENT 'the survey reporting observation of this transient',
  `raDeg` double DEFAULT NULL COMMENT 'RA is decimal degreed',
  `decDeg` double DEFAULT NULL COMMENT 'DEC in decimal degrees',
  `raDegErr` double DEFAULT NULL,
  `decDegErr` double DEFAULT NULL,
  `observationDate` datetime DEFAULT NULL COMMENT 'the survey observation date',
  `observationMJD` double DEFAULT NULL COMMENT 'the survey observation MJD',
  `magnitude` float DEFAULT NULL COMMENT 'the survey discovery magnitude',
  `magnitudeError` float DEFAULT NULL,
  `filter` varchar(20) DEFAULT NULL COMMENT 'survey discovery filter',
  `transientRedshift` float DEFAULT NULL COMMENT 'redshift as measured from a spectrum of the transient',
  `transientRedshiftNotes` varchar(40) DEFAULT NULL COMMENT 'transient redshift notes',
  `spectralType` varchar(20) DEFAULT NULL COMMENT 'the spectral classification given by the reporting survey (if any)',
  `discoveryPhase` varchar(20) DEFAULT NULL COMMENT 'the discovery phase given by the reporting survey (if any)',
  `dateCreated` datetime DEFAULT current_timestamp(),
  `dateLastModified` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `surveyObjectUrl` varchar(140) DEFAULT NULL COMMENT 'the url for dedicated webpage of transients supplied by the reporting survey (if any)',
  `transientTypePrediction` varchar(40) DEFAULT NULL COMMENT 'an attempt at predicting the transient type by the reporting survey.',
  `transientTypePredicationSource` varchar(40) DEFAULT NULL COMMENT 'the name of the source/catalogue that was used to predict the transient type',
  `hostRedshift` float DEFAULT NULL COMMENT 'redshift measure for the host',
  `hostRedshiftType` varchar(10) DEFAULT NULL COMMENT 'type of redshift measure for the host galaxy\n',
  `referenceImageUrl` varchar(140) DEFAULT NULL COMMENT 'true or false',
  `targetImageUrl` varchar(140) DEFAULT NULL COMMENT 'true or false',
  `subtractedImageUrl` varchar(140) DEFAULT NULL,
  `tripletImageUrl` varchar(140) DEFAULT NULL,
  `htm16ID` bigint(20) unsigned DEFAULT NULL COMMENT 'HTM Level 16',
  `telescope` varchar(100) DEFAULT NULL,
  `instrument` varchar(100) DEFAULT NULL,
  `reducer` varchar(100) DEFAULT NULL,
  `lastNonDetectionDate` datetime DEFAULT NULL,
  `lastNonDetectionMJD` double DEFAULT NULL,
  `dateLastRead` datetime DEFAULT NULL,
  `finderImageUrl` varchar(140) DEFAULT NULL,
  `lightcurveURL` varchar(140) DEFAULT NULL,
  `classificationWRTMax` varchar(45) DEFAULT NULL,
  `classificationPhase` int(11) DEFAULT NULL,
  `limitingMag` tinyint(4) DEFAULT 0,
  `sherlockClassification` varchar(20) DEFAULT NULL,
  `tmpFlag` int(11) DEFAULT NULL,
  `replacedByRowId` bigint(20) DEFAULT 0,
  `dateDeleted` datetime DEFAULT NULL,
  `updated` tinyint(4) DEFAULT 0,
  `htm13ID` int(11) DEFAULT NULL,
  `htm10ID` int(11) DEFAULT NULL,
  `cz` double DEFAULT NULL,
  `cx` double DEFAULT NULL,
  `htm20ID` bigint(20) DEFAULT NULL,
  `cy` double DEFAULT NULL,
  `htm07ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`primaryKeyId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `primaryKey_UNIQUE` (`primaryKeyId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `name_observationmjd_magnitude_filter_survey` (`name`,`observationMJD`,`magnitude`,`filter`,`survey`,`replacedByRowId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `name_observationmjd_magnitude_filter` (`name`,`observationMJD`,`magnitude`,`filter`,`replacedByRowId`),
  UNIQUE KEY `name_survey_obsmjd_decDeg_classification` (`name`,`survey`,`decDeg`,`observationMJD`,`replacedByRowId`,`spectralType`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm16ID` (`htm16ID`) KEY_BLOCK_SIZE=1024,
  KEY `tbi` (`transientBucketId`),
  KEY `masterflag` (`masterIDFlag`),
  KEY `idx_htm13ID` (`htm13ID`),
  KEY `idx_htm20ID` (`htm20ID`),
  KEY `idx_dateCreated` (`dateCreated`),
  KEY `idx_dateLastModified` (`dateLastModified`),
  KEY `idx_htm10ID` (`htm10ID`),
  KEY `idx_survey_masterId` (`survey`,`masterIDFlag`),
  KEY `ixs_replaceByRow` (`replacedByRowId`),
  KEY `idx_observationMjd_dateCreated` (`observationMJD`,`dateCreated`),
  KEY `idx_masterId_replaceBy` (`masterIDFlag`,`replacedByRowId`),
  KEY `idx_tbi_dateCreated_survey` (`transientBucketId`,`dateCreated`,`survey`),
  KEY `idx_htm07ID` (`htm07ID`)
) ENGINE=InnoDB AUTO_INCREMENT=455224 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `transientbucketsummaries`
--

DROP TABLE IF EXISTS `transientbucketsummaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transientbucketsummaries` (
  `transientBucketId` int(11) unsigned NOT NULL,
  `sdss_coverage` tinyint(4) DEFAULT NULL,
  `lastNonDetectionDate` datetime DEFAULT NULL,
  `earliestDetection` datetime DEFAULT NULL,
  `recentClassification` varchar(45) DEFAULT NULL,
  `peakMagnitude` double DEFAULT NULL,
  `absolutePeakMagnitude` decimal(20,17) DEFAULT NULL,
  `distanceMpc` double DEFAULT NULL,
  `best_redshift` double DEFAULT NULL,
  `masterName` varchar(200) DEFAULT NULL,
  `surveyObjectUrl` varchar(500) DEFAULT NULL,
  `currentMagnitude` double DEFAULT NULL,
  `dateAdded` datetime DEFAULT NULL,
  `raDeg` double DEFAULT NULL,
  `decDeg` double DEFAULT NULL,
  `classificationSurvey` varchar(200) DEFAULT NULL,
  `classificationDate` datetime DEFAULT NULL,
  `currentMagnitudeEstimate` double DEFAULT NULL,
  `currentMagnitudeEstimateUpdated` datetime DEFAULT NULL,
  `recentSlopeOfLightcurve` double DEFAULT NULL,
  `classificationWRTMax` varchar(45) DEFAULT NULL,
  `classificationPhase` int(11) DEFAULT NULL,
  `classificationAddedBy` varchar(100) DEFAULT NULL,
  `objectAddedToMarshallBy` varchar(100) DEFAULT NULL,
  `currentMagnitudeDate` datetime DEFAULT NULL,
  `classificationAddedDate` datetime DEFAULT NULL,
  `sherlockClassification` varchar(20) DEFAULT NULL,
  `earliestMagnitude` double DEFAULT NULL,
  `earliestMagnitudeFilter` varchar(45) DEFAULT NULL,
  `earliestMagnitudeSurvey` varchar(45) DEFAULT NULL,
  `host_redshift` double DEFAULT NULL,
  `gLat` double DEFAULT NULL,
  `gLon` double DEFAULT NULL,
  `separationArcsec` double DEFAULT NULL,
  `currentMagnitudeFilter` varchar(45) DEFAULT NULL,
  `currentMagnitudeSurvey` varchar(45) DEFAULT NULL,
  `updateNeeded` tinyint(4) DEFAULT 1,
  `dateLastModified` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `htm16ID` bigint(20) DEFAULT NULL,
  `htm13ID` int(11) DEFAULT NULL,
  `htm10ID` int(11) DEFAULT NULL,
  `htm07ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`transientBucketId`) KEY_BLOCK_SIZE=1024,
  KEY `tbi` (`transientBucketId`),
  KEY `masterName` (`masterName`),
  KEY `ra_dec` (`raDeg`,`decDeg`),
  KEY `idx_updateNeeded` (`updateNeeded`),
  KEY `idx_surveyObjectUrl` (`surveyObjectUrl`),
  KEY `idx_htm10ID` (`htm10ID`),
  KEY `idx_htm13ID` (`htm13ID`),
  KEY `idx_htm16ID` (`htm16ID`),
  KEY `idx_dateLastModified` (`dateLastModified`),
  KEY `idx_htm07ID` (`htm07ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `transients_history_logs`
--

DROP TABLE IF EXISTS `transients_history_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transients_history_logs` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT,
  `transientBucketId` bigint(20) NOT NULL,
  `dateCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `log` varchar(200) NOT NULL,
  PRIMARY KEY (`primaryId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `unique_index` (`transientBucketId`,`dateCreated`) KEY_BLOCK_SIZE=1024,
  KEY `tbi` (`transientBucketId`)
) ENGINE=InnoDB AUTO_INCREMENT=9299 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `vview_fs_crts_css_summary`
--

DROP TABLE IF EXISTS `vview_fs_crts_css_summary`;
/*!50001 DROP VIEW IF EXISTS `vview_fs_crts_css_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vview_fs_crts_css_summary` AS SELECT 
 1 AS `primaryId`,
 1 AS `circularUrl`,
 1 AS `comment`,
 1 AS `commentIngested`,
 1 AS `dateCreated`,
 1 AS `dateLastModified`,
 1 AS `dateLastRead`,
 1 AS `decDeg`,
 1 AS `filter`,
 1 AS `finderChartUrl`,
 1 AS `finderChartWebpage`,
 1 AS `imagesUrl`,
 1 AS `ingested`,
 1 AS `lightcurveUrl`,
 1 AS `mag`,
 1 AS `name`,
 1 AS `observationDate`,
 1 AS `observationMJD`,
 1 AS `raDeg`,
 1 AS `summaryRow`,
 1 AS `survey`,
 1 AS `surveyObjectUrl`,
 1 AS `targetImageUrl`,
 1 AS `transientTypePrediction`,
 1 AS `uniqueId`,
 1 AS `htm16ID`,
 1 AS `magErr`,
 1 AS `lastNonDetectionDate`,
 1 AS `lastNonDetectionMJD`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vview_fs_crts_mls_summary`
--

DROP TABLE IF EXISTS `vview_fs_crts_mls_summary`;
/*!50001 DROP VIEW IF EXISTS `vview_fs_crts_mls_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vview_fs_crts_mls_summary` AS SELECT 
 1 AS `primaryId`,
 1 AS `circularUrl`,
 1 AS `comment`,
 1 AS `commentIngested`,
 1 AS `dateCreated`,
 1 AS `dateLastModified`,
 1 AS `dateLastRead`,
 1 AS `decDeg`,
 1 AS `filter`,
 1 AS `finderChartUrl`,
 1 AS `finderChartWebpage`,
 1 AS `imagesUrl`,
 1 AS `ingested`,
 1 AS `lightcurveUrl`,
 1 AS `mag`,
 1 AS `name`,
 1 AS `observationDate`,
 1 AS `observationMJD`,
 1 AS `raDeg`,
 1 AS `summaryRow`,
 1 AS `survey`,
 1 AS `surveyObjectUrl`,
 1 AS `targetImageUrl`,
 1 AS `transientTypePrediction`,
 1 AS `uniqueId`,
 1 AS `htm16ID`,
 1 AS `magErr`,
 1 AS `lastNonDetectionDate`,
 1 AS `lastNonDetectionMJD`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vview_fs_crts_sss_summary`
--

DROP TABLE IF EXISTS `vview_fs_crts_sss_summary`;
/*!50001 DROP VIEW IF EXISTS `vview_fs_crts_sss_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vview_fs_crts_sss_summary` AS SELECT 
 1 AS `primaryId`,
 1 AS `circularUrl`,
 1 AS `comment`,
 1 AS `commentIngested`,
 1 AS `dateCreated`,
 1 AS `dateLastModified`,
 1 AS `dateLastRead`,
 1 AS `decDeg`,
 1 AS `filter`,
 1 AS `finderChartUrl`,
 1 AS `finderChartWebpage`,
 1 AS `imagesUrl`,
 1 AS `ingested`,
 1 AS `lightcurveUrl`,
 1 AS `mag`,
 1 AS `name`,
 1 AS `observationDate`,
 1 AS `observationMJD`,
 1 AS `raDeg`,
 1 AS `summaryRow`,
 1 AS `survey`,
 1 AS `surveyObjectUrl`,
 1 AS `targetImageUrl`,
 1 AS `transientTypePrediction`,
 1 AS `uniqueId`,
 1 AS `htm16ID`,
 1 AS `magErr`,
 1 AS `lastNonDetectionDate`,
 1 AS `lastNonDetectionMJD`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vview_fs_ogle_summary`
--

DROP TABLE IF EXISTS `vview_fs_ogle_summary`;
/*!50001 DROP VIEW IF EXISTS `vview_fs_ogle_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vview_fs_ogle_summary` AS SELECT 
 1 AS `primaryId`,
 1 AS `dateCreated`,
 1 AS `dateLastModified`,
 1 AS `dateLastRead`,
 1 AS `decDeg`,
 1 AS `filter`,
 1 AS `ingested`,
 1 AS `lastNonDetectionDate`,
 1 AS `lastNonDetectionMJD`,
 1 AS `lightcurveUrl`,
 1 AS `mag`,
 1 AS `name`,
 1 AS `observationDate`,
 1 AS `observationMJD`,
 1 AS `raDeg`,
 1 AS `referenceFitsUrl`,
 1 AS `referenceImageUrl`,
 1 AS `subtractedFitsUrl`,
 1 AS `subtractedImageUrl`,
 1 AS `summaryRow`,
 1 AS `survey`,
 1 AS `surveyObjectUrl`,
 1 AS `targetFitsUrl`,
 1 AS `targetImageUrl`,
 1 AS `transientTypePrediction`,
 1 AS `htm16ID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vview_object_akas`
--

DROP TABLE IF EXISTS `vview_object_akas`;
/*!50001 DROP VIEW IF EXISTS `vview_object_akas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vview_object_akas` AS SELECT 
 1 AS `transientBucketId`,
 1 AS `primaryKeyId`,
 1 AS `name`,
 1 AS `survey`,
 1 AS `surveyObjectUrl`,
 1 AS `referenceImageUrl`,
 1 AS `targetImageUrl`,
 1 AS `subtractedImageUrl`,
 1 AS `tripletImageUrl`,
 1 AS `finderImageUrl`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vview_object_temporal_data`
--

DROP TABLE IF EXISTS `vview_object_temporal_data`;
/*!50001 DROP VIEW IF EXISTS `vview_object_temporal_data`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vview_object_temporal_data` AS SELECT 
 1 AS `transientBucketId`,
 1 AS `name`,
 1 AS `survey`,
 1 AS `observationDate`,
 1 AS `observationMJD`,
 1 AS `magnitude`,
 1 AS `magnitudeError`,
 1 AS `filter`,
 1 AS `surveyObjectUrl`,
 1 AS `referenceImageUrl`,
 1 AS `targetImageUrl`,
 1 AS `subtractedImageUrl`,
 1 AS `tripletImageUrl`,
 1 AS `telescope`,
 1 AS `instrument`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vview_objectredshifts`
--

DROP TABLE IF EXISTS `vview_objectredshifts`;
/*!50001 DROP VIEW IF EXISTS `vview_objectredshifts`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vview_objectredshifts` AS SELECT 
 1 AS `transientBucketId`,
 1 AS `transientRedshift`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vview_objectspectraltypes`
--

DROP TABLE IF EXISTS `vview_objectspectraltypes`;
/*!50001 DROP VIEW IF EXISTS `vview_objectspectraltypes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vview_objectspectraltypes` AS SELECT 
 1 AS `transientBucketId`,
 1 AS `spectralType`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vview_tns_photometry_discoveries`
--

DROP TABLE IF EXISTS `vview_tns_photometry_discoveries`;
/*!50001 DROP VIEW IF EXISTS `vview_tns_photometry_discoveries`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vview_tns_photometry_discoveries` AS SELECT 
 1 AS `raDeg`,
 1 AS `decDeg`,
 1 AS `objectName`,
 1 AS `survey`,
 1 AS `suggestedType`,
 1 AS `hostRedshift`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vview_transientbucketmaster`
--

DROP TABLE IF EXISTS `vview_transientbucketmaster`;
/*!50001 DROP VIEW IF EXISTS `vview_transientbucketmaster`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vview_transientbucketmaster` AS SELECT 
 1 AS `primaryKeyId`,
 1 AS `transientBucketId`,
 1 AS `masterIDFlag`,
 1 AS `name`,
 1 AS `survey`,
 1 AS `raDeg`,
 1 AS `decDeg`,
 1 AS `raDegErr`,
 1 AS `decDegErr`,
 1 AS `observationDate`,
 1 AS `observationMJD`,
 1 AS `magnitude`,
 1 AS `magnitudeError`,
 1 AS `filter`,
 1 AS `transientRedshift`,
 1 AS `transientRedshiftNotes`,
 1 AS `spectralType`,
 1 AS `discoveryPhase`,
 1 AS `dateCreated`,
 1 AS `dateLastModified`,
 1 AS `surveyObjectUrl`,
 1 AS `transientTypePrediction`,
 1 AS `transientTypePredicationSource`,
 1 AS `hostRedshift`,
 1 AS `hostRedshiftType`,
 1 AS `referenceImageUrl`,
 1 AS `targetImageUrl`,
 1 AS `subtractedImageUrl`,
 1 AS `tripletImageUrl`,
 1 AS `htm20ID`,
 1 AS `htm16ID`,
 1 AS `cx`,
 1 AS `cy`,
 1 AS `cz`,
 1 AS `telescope`,
 1 AS `instrument`,
 1 AS `reducer`,
 1 AS `lastNonDetectionDate`,
 1 AS `lastNonDetectionMJD`,
 1 AS `dateLastRead`,
 1 AS `finderImageUrl`,
 1 AS `lightcurveURL`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vview_wiserep_object_summaries`
--

DROP TABLE IF EXISTS `vview_wiserep_object_summaries`;
/*!50001 DROP VIEW IF EXISTS `vview_wiserep_object_summaries`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vview_wiserep_object_summaries` AS SELECT 
 1 AS `transientBucketId`,
 1 AS `name`,
 1 AS `survey`,
 1 AS `raDeg`,
 1 AS `decDeg`,
 1 AS `spectralType`,
 1 AS `transientRedshift`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `webapp_users`
--

DROP TABLE IF EXISTS `webapp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webapp_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `secondname` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL DEFAULT '$5$rounds=110000$MAKWStjFVWb2dqhG$oqBc8072dGM.mtWRmEFQ.WnhSZ79hn9yphtE8QflxT1',
  `permissions` varchar(45) NOT NULL DEFAULT 'edit_users',
  PRIMARY KEY (`id`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `first_second` (`firstname`,`secondname`) KEY_BLOCK_SIZE=1024
) ENGINE=InnoDB AUTO_INCREMENT=874 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zlegacy_april2016_april2017_stats`
--

DROP TABLE IF EXISTS `zlegacy_april2016_april2017_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zlegacy_april2016_april2017_stats` (
  `transientBucketId` bigint(20) unsigned NOT NULL,
  `atelNumber` int(11) NOT NULL,
  `classificationDate` datetime DEFAULT NULL,
  `discSurvey` varchar(45) DEFAULT NULL,
  `discMag` double DEFAULT NULL,
  `discDate` datetime DEFAULT NULL,
  `redshift` double DEFAULT NULL,
  `classification` varchar(45) DEFAULT NULL,
  `discName` varchar(100) DEFAULT NULL,
  `tnsName` varchar(100) DEFAULT NULL,
  `atelRa` varchar(45) DEFAULT NULL,
  `atelDec` varchar(45) DEFAULT NULL,
  `classificationPhaseRange` varchar(45) DEFAULT NULL,
  `classificationPhaseDays` int(11) DEFAULT NULL,
  `classificationType` varchar(45) DEFAULT NULL,
  `classificationSubtype` varchar(45) DEFAULT NULL,
  `classificationPhaseBin` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`transientBucketId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zlegacy_cbats`
--

DROP TABLE IF EXISTS `zlegacy_cbats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zlegacy_cbats` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `ra` varchar(30) DEFAULT NULL,
  `decl` varchar(30) DEFAULT NULL,
  `hostGalaxy` varchar(60) DEFAULT NULL,
  `dateAndPosition` varchar(60) DEFAULT NULL,
  `offsetWE` varchar(20) DEFAULT NULL,
  `offsetNS` varchar(20) DEFAULT NULL,
  `mag` float DEFAULT NULL,
  `discoveryRef` varchar(40) DEFAULT NULL,
  `positionRef` varchar(40) DEFAULT NULL,
  `snType` varchar(20) DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `discoverers` varchar(300) DEFAULT NULL,
  `raDeg` double NOT NULL,
  `decDeg` double NOT NULL,
  `htm20ID` bigint(20) unsigned DEFAULT NULL,
  `htm16ID` bigint(20) unsigned DEFAULT NULL,
  `cx` double DEFAULT NULL,
  `cy` double DEFAULT NULL,
  `cz` double DEFAULT NULL,
  `cbatType` char(8) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_name` (`name`),
  KEY `idx_htm20ID` (`htm20ID`),
  KEY `idx_htm16ID` (`htm16ID`),
  KEY `idx_cbat_type` (`cbatType`),
  KEY `name` (`snType`),
  KEY `ra_dec` (`raDeg`,`decDeg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zlegacy_fs_asassn_discoveries`
--

DROP TABLE IF EXISTS `zlegacy_fs_asassn_discoveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zlegacy_fs_asassn_discoveries` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `candidateID` varchar(100) DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `dec_deg` double DEFAULT NULL,
  `decl` varchar(100) DEFAULT NULL,
  `discDate` datetime DEFAULT NULL,
  `discMag` varchar(100) DEFAULT NULL,
  `observationMJD` double DEFAULT NULL,
  `ra` varchar(100) DEFAULT NULL,
  `ra_deg` double DEFAULT NULL,
  `summaryRow` tinyint(4) DEFAULT NULL,
  `ingested` tinyint(4) DEFAULT 0,
  `htm16ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `candidateid` (`candidateID`),
  KEY `ra_dec` (`dec_deg`,`ra_deg`),
  KEY `htm16` (`htm16ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zlegacy_fs_brightsnlist_discoveries`
--

DROP TABLE IF EXISTS `zlegacy_fs_brightsnlist_discoveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zlegacy_fs_brightsnlist_discoveries` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `dateCreated` datetime DEFAULT NULL,
  `decDeg` double DEFAULT NULL,
  `discoveryMag` double DEFAULT NULL,
  `discoveryMjd` double DEFAULT NULL,
  `imageUrl` varchar(300) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `objectUrl` varchar(300) DEFAULT NULL,
  `raDeg` double DEFAULT NULL,
  `survey` varchar(50) DEFAULT 'bright sn list',
  `type` varchar(45) DEFAULT 'SN',
  `ingested` tinyint(4) DEFAULT NULL,
  `summaryRow` tinyint(4) DEFAULT NULL,
  `htm16ID` bigint(20) DEFAULT NULL,
  `htm13ID` int(11) DEFAULT NULL,
  `htm10ID` int(11) DEFAULT NULL,
  `transientBucketId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `name` (`name`),
  KEY `htm16` (`htm16ID`),
  KEY `ra_dec` (`decDeg`,`raDeg`),
  KEY `ingested` (`ingested`),
  KEY `idx_htm16ID` (`htm16ID`),
  KEY `idx_htm10ID` (`htm13ID`),
  KEY `idx_htm13ID` (`htm13ID`),
  KEY `i_htm10ID` (`htm10ID`),
  KEY `i_htm13ID` (`htm13ID`),
  KEY `i_htm16ID` (`htm16ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zlegacy_fs_lsq`
--

DROP TABLE IF EXISTS `zlegacy_fs_lsq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zlegacy_fs_lsq` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `candidateID` varchar(20) NOT NULL,
  `ra` varchar(20) DEFAULT NULL,
  `decl` varchar(20) DEFAULT NULL,
  `mag` float DEFAULT NULL,
  `magErr` float DEFAULT NULL COMMENT 'Mag error only available in the recurrence data',
  `observationJD` double DEFAULT NULL COMMENT 'Observation date in JD',
  `discDate` date DEFAULT NULL,
  `discMag` float DEFAULT NULL,
  `suggestedType` varchar(50) DEFAULT NULL,
  `catalogType` varchar(50) DEFAULT NULL,
  `hostZ` float DEFAULT NULL,
  `lastNonDetection` date DEFAULT NULL,
  `tripletImageURL` varchar(512) DEFAULT NULL,
  `obsDate` date DEFAULT NULL,
  `historyURL` varchar(512) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `numPhoto` int(11) DEFAULT NULL,
  `numSpectra` int(11) DEFAULT NULL,
  `specType` varchar(50) DEFAULT NULL,
  `discPhase` int(11) DEFAULT NULL,
  `minObsDate` date DEFAULT NULL,
  `fieldID` int(11) DEFAULT NULL,
  `num3sigpix7` int(11) DEFAULT NULL,
  `num2sigpix7` int(11) DEFAULT NULL,
  `a` float DEFAULT NULL,
  `b` float DEFAULT NULL,
  `symmetry` float DEFAULT NULL,
  `fwhm` float DEFAULT NULL,
  `chipName` varchar(20) DEFAULT NULL,
  `summaryRow` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Summary row flag. 1 = summary row, 0 = recurrence. There should always be one summary row and at least one recurrence.',
  `ingested` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Transient Bucket ingest flag.  Has this data been ingested yet?',
  `ra_deg` double NOT NULL,
  `dec_deg` double NOT NULL,
  `htm16ID` bigint(20) unsigned DEFAULT NULL,
  `transientZ` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_uq_candidateID_observationJD` (`candidateID`,`observationJD`),
  UNIQUE KEY `idx_uq_candidateID_discDate` (`candidateID`,`discDate`),
  KEY `idx_candidateID` (`candidateID`),
  KEY `idx_htm16ID` (`htm16ID`),
  KEY `htm16` (`htm16ID`),
  KEY `ingested` (`ingested`),
  KEY `summaryRow` (`summaryRow`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zlegacy_fs_lsq_current_summaries`
--

DROP TABLE IF EXISTS `zlegacy_fs_lsq_current_summaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zlegacy_fs_lsq_current_summaries` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `candidateID` varchar(20) NOT NULL,
  `ra` varchar(20) DEFAULT NULL,
  `decl` varchar(20) DEFAULT NULL,
  `mag` float DEFAULT NULL,
  `magErr` float DEFAULT NULL COMMENT 'Mag error only available in the recurrence data',
  `observationJD` double DEFAULT NULL COMMENT 'Observation date in JD',
  `discDate` date DEFAULT NULL,
  `discMag` float DEFAULT NULL,
  `suggestedType` varchar(50) DEFAULT NULL,
  `catalogType` varchar(50) DEFAULT NULL,
  `hostZ` float DEFAULT NULL,
  `lastNonDetection` date DEFAULT NULL,
  `tripletImageURL` varchar(512) DEFAULT NULL,
  `obsDate` date DEFAULT NULL,
  `historyURL` varchar(512) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `numPhoto` int(11) DEFAULT NULL,
  `numSpectra` int(11) DEFAULT NULL,
  `specType` varchar(50) DEFAULT NULL,
  `discPhase` int(11) DEFAULT NULL,
  `minObsDate` date DEFAULT NULL,
  `fieldID` int(11) DEFAULT NULL,
  `num3sigpix7` int(11) DEFAULT NULL,
  `num2sigpix7` int(11) DEFAULT NULL,
  `a` float DEFAULT NULL,
  `b` float DEFAULT NULL,
  `symmetry` float DEFAULT NULL,
  `fwhm` float DEFAULT NULL,
  `chipName` varchar(20) DEFAULT NULL,
  `summaryRow` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Summary row flag. 1 = summary row, 0 = recurrence. There should always be one summary row and at least one recurrence.',
  `ingested` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Transient Bucket ingest flag.  Has this data been ingested yet?',
  `ra_deg` double NOT NULL,
  `dec_deg` double NOT NULL,
  `htm16ID` bigint(20) unsigned DEFAULT NULL,
  `transientZ` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_uq_candidateID_observationJD` (`candidateID`,`observationJD`),
  UNIQUE KEY `idx_uq_candidateID_discDate` (`candidateID`,`discDate`),
  KEY `idx_candidateID` (`candidateID`),
  KEY `idx_htm16ID` (`htm16ID`),
  KEY `htm16` (`htm16ID`),
  KEY `ingested` (`ingested`),
  KEY `summaryRow` (`summaryRow`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zlegacy_fs_lsq_discoveries`
--

DROP TABLE IF EXISTS `zlegacy_fs_lsq_discoveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zlegacy_fs_lsq_discoveries` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `candidateID` varchar(20) DEFAULT NULL,
  `catalogType` varchar(100) DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `dateLastModified` datetime DEFAULT NULL,
  `dateLastRead` datetime DEFAULT NULL,
  `dec_deg` double DEFAULT NULL,
  `decl` varchar(100) DEFAULT NULL,
  `discDate` datetime DEFAULT NULL,
  `discMag` double DEFAULT NULL,
  `discPhase` varchar(100) DEFAULT NULL,
  `historyURL` varchar(1000) DEFAULT NULL,
  `hostZ` double DEFAULT NULL,
  `isFollowed` tinyint(4) DEFAULT NULL,
  `lastNonDetection` datetime DEFAULT NULL,
  `mag` varchar(100) DEFAULT NULL,
  `minObsDate` datetime DEFAULT NULL,
  `numPhoto` tinyint(4) DEFAULT NULL,
  `numSpectra` tinyint(4) DEFAULT NULL,
  `obsDate` datetime DEFAULT NULL,
  `observationMJD` double DEFAULT NULL,
  `ra` varchar(100) DEFAULT NULL,
  `ra_deg` double DEFAULT NULL,
  `specType` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `subtractedLightcurveURL` varchar(300) DEFAULT NULL,
  `suggestedType` varchar(100) DEFAULT NULL,
  `summaryRow` tinyint(4) DEFAULT NULL,
  `tripletImageURL` varchar(1000) DEFAULT NULL,
  `transientBucketId` int(11) DEFAULT NULL,
  `htm16ID` bigint(20) DEFAULT NULL,
  `ingested` tinyint(4) DEFAULT NULL,
  `survey` varchar(45) NOT NULL DEFAULT 'LSQ',
  `transientHistoryLogAdded` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `candidateid` (`candidateID`),
  KEY `htm16` (`htm16ID`),
  KEY `ingested` (`ingested`),
  KEY `summaryRow` (`summaryRow`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zlegacy_fs_lsq_recalibrated_data`
--

DROP TABLE IF EXISTS `zlegacy_fs_lsq_recalibrated_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zlegacy_fs_lsq_recalibrated_data` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `Detector` varchar(200) DEFAULT NULL,
  `Filename` varchar(200) DEFAULT NULL,
  `MJD` double DEFAULT NULL,
  `PhotSource` varchar(100) DEFAULT NULL,
  `ccd` varchar(100) DEFAULT NULL,
  `counts` double DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `dateLastModified` datetime DEFAULT NULL,
  `dateLastRead` datetime DEFAULT NULL,
  `dcounts` double DEFAULT NULL,
  `dzp` double DEFAULT NULL,
  `filter` varchar(100) DEFAULT NULL,
  `magsys` varchar(100) DEFAULT NULL,
  `mjddisc` double DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `nbad` tinyint(4) DEFAULT NULL,
  `zp` double DEFAULT NULL,
  `csvUpdateDate` datetime NOT NULL,
  `magnitude` double DEFAULT NULL,
  `magnitudeError` double DEFAULT NULL,
  `summaryRow` tinyint(4) DEFAULT NULL,
  `ingested` tinyint(4) DEFAULT 0,
  `dec_deg` double DEFAULT NULL,
  `ra_deg` double DEFAULT NULL,
  `htm16ID` bigint(20) DEFAULT NULL,
  `Source` varchar(100) DEFAULT NULL,
  `signaltonoise` double DEFAULT NULL,
  `dryxDiscMJD` double DEFAULT NULL,
  `dryxLastNonDetectionMJD` double DEFAULT NULL,
  `PSFDIR` varchar(100) DEFAULT NULL,
  `Telescope` varchar(100) DEFAULT NULL,
  `chi2` varchar(100) DEFAULT NULL,
  `iscoadd` varchar(100) DEFAULT NULL,
  `transientBucketId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `name_mjd` (`name`,`MJD`),
  KEY `htm16` (`htm16ID`),
  KEY `ingested` (`ingested`),
  KEY `summaryRow` (`summaryRow`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zlegacy_fs_tocp`
--

DROP TABLE IF EXISTS `zlegacy_fs_tocp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zlegacy_fs_tocp` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `dateCreated` datetime DEFAULT NULL,
  `decDeg` double DEFAULT NULL,
  `discoveryMjd` double DEFAULT NULL,
  `filter` varchar(100) DEFAULT NULL,
  `magnitude` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `raDeg` double DEFAULT NULL,
  `surveyObjectUrl` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `survey` varchar(45) DEFAULT 'tocp',
  `ingested` tinyint(4) DEFAULT NULL,
  `summaryRow` tinyint(4) DEFAULT NULL,
  `htm16ID` bigint(20) DEFAULT NULL,
  `htm13ID` int(11) DEFAULT NULL,
  `htm10ID` int(11) DEFAULT NULL,
  `transientBucketId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`primaryId`),
  UNIQUE KEY `name` (`name`),
  KEY `htm16` (`htm16ID`),
  KEY `ra_dec` (`decDeg`,`raDeg`),
  KEY `ingested` (`ingested`),
  KEY `summaryRow` (`summaryRow`),
  KEY `idx_htm16ID` (`htm16ID`),
  KEY `idx_htm10ID` (`htm13ID`),
  KEY `idx_htm13ID` (`htm13ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zlegacy_lssndb_candidates`
--

DROP TABLE IF EXISTS `zlegacy_lssndb_candidates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zlegacy_lssndb_candidates` (
  `cand_id` int(11) unsigned NOT NULL,
  `observer` varchar(20) DEFAULT NULL,
  `obs_date` int(11) DEFAULT NULL,
  `field_id` varchar(10) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `cand_name` varchar(20) DEFAULT NULL,
  `cand_index` int(11) DEFAULT NULL,
  `sub_index` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `type` varchar(20) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `jd` double DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `ra` double DEFAULT NULL,
  `dec` double DEFAULT NULL,
  `mag` double DEFAULT NULL,
  `mag_err` double DEFAULT NULL,
  `num_3sig_pix7` int(11) DEFAULT NULL,
  `num_2sig_pix7` int(11) DEFAULT NULL,
  `a` double DEFAULT NULL,
  `b` double DEFAULT NULL,
  `symmetry` double DEFAULT NULL,
  `fwhm` double DEFAULT NULL,
  `fake_index` int(11) DEFAULT NULL,
  `chip_name` varchar(10) DEFAULT NULL,
  `reffilename` varchar(50) DEFAULT NULL,
  `newfilename` varchar(50) DEFAULT NULL,
  `subfilename` varchar(50) DEFAULT NULL,
  `gifname` varchar(50) DEFAULT NULL,
  `nn_dist_ref` double DEFAULT NULL,
  `mag_ref` double DEFAULT NULL,
  `fwhm_ref` double DEFAULT NULL,
  `seeing_ref` double DEFAULT NULL,
  `band` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cand_id`),
  KEY `cand_name` (`cand_name`),
  KEY `cand_index` (`cand_index`),
  KEY `ra_dec` (`ra`,`dec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zlegacy_lssndb_comments`
--

DROP TABLE IF EXISTS `zlegacy_lssndb_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zlegacy_lssndb_comments` (
  `comment_id` int(11) unsigned NOT NULL,
  `cand_name` varchar(20) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `comment_added` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_id`),
  KEY `cand_name` (`cand_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zlegacy_lssndb_followup_status`
--

DROP TABLE IF EXISTS `zlegacy_lssndb_followup_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zlegacy_lssndb_followup_status` (
  `cand_name` varchar(20) DEFAULT NULL,
  `snf` varchar(200) DEFAULT NULL,
  `snf_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `carnegie` varchar(200) DEFAULT NULL,
  `carnegie_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pessto` varchar(200) DEFAULT NULL,
  `pessto_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `oxford` varchar(200) DEFAULT NULL,
  `oxford_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `berkeley` varchar(200) DEFAULT NULL,
  `berkeley_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lcogt` varchar(200) DEFAULT NULL,
  `lcogt_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `other` varchar(200) DEFAULT NULL,
  `other_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zlegacy_lssndb_marshall_comments`
--

DROP TABLE IF EXISTS `zlegacy_lssndb_marshall_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zlegacy_lssndb_marshall_comments` (
  `id` int(11) unsigned NOT NULL,
  `cand_name` varchar(20) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cand_name` (`cand_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zlegacy_lssndb_marshall_lc_followup`
--

DROP TABLE IF EXISTS `zlegacy_lssndb_marshall_lc_followup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zlegacy_lssndb_marshall_lc_followup` (
  `id` int(11) unsigned NOT NULL,
  `cand_name` varchar(20) DEFAULT NULL,
  `survey` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cand_name` (`cand_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zlegacy_lssndb_ms_lightcurves`
--

DROP TABLE IF EXISTS `zlegacy_lssndb_ms_lightcurves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zlegacy_lssndb_ms_lightcurves` (
  `obs_id` int(11) unsigned NOT NULL,
  `cand_name` varchar(20) DEFAULT NULL,
  `filter` varchar(10) DEFAULT NULL,
  `mjd` double DEFAULT NULL,
  `counts` double DEFAULT NULL,
  `dcounts` double DEFAULT NULL,
  `zp` double DEFAULT NULL,
  `nbad` int(11) DEFAULT NULL,
  `ccd` varchar(10) DEFAULT NULL,
  `dzp` varchar(20) DEFAULT NULL,
  `magsys` varchar(10) DEFAULT NULL,
  `detector` varchar(20) DEFAULT NULL,
  `source` varchar(20) DEFAULT NULL,
  `raDeg` double DEFAULT NULL,
  `decDeg` double DEFAULT NULL,
  `signaltonoise` double DEFAULT NULL,
  `magnitude` double DEFAULT NULL,
  `magnitudeError` double DEFAULT NULL,
  `dryxLastNonDetectionMJD` double DEFAULT NULL,
  `dryxDiscMJD` double DEFAULT NULL,
  `ingested` tinyint(4) DEFAULT 0,
  `summaryRow` tinyint(4) DEFAULT NULL,
  `htm16ID` bigint(20) DEFAULT NULL,
  `magnitudeLimit` double DEFAULT NULL,
  PRIMARY KEY (`obs_id`),
  UNIQUE KEY `obs_id` (`obs_id`),
  UNIQUE KEY `name_mjd` (`cand_name`,`mjd`),
  KEY `name_index` (`cand_name`),
  KEY `ingested` (`ingested`),
  KEY `ra_dec` (`raDeg`,`decDeg`),
  KEY `signal` (`signaltonoise`),
  KEY `mjd` (`mjd`),
  KEY `summary` (`summaryRow`),
  KEY `idx_htm16ID` (`htm16ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zlegacy_lssndb_summary`
--

DROP TABLE IF EXISTS `zlegacy_lssndb_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zlegacy_lssndb_summary` (
  `id` int(11) DEFAULT NULL,
  `cand_name` varchar(20) DEFAULT NULL,
  `disc_date` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `catalog_type` varchar(40) DEFAULT NULL,
  `simbad_type` varchar(40) DEFAULT NULL,
  `ned_type` varchar(40) DEFAULT NULL,
  `sloan_type` varchar(40) DEFAULT NULL,
  `num_photo` int(11) DEFAULT NULL,
  `num_spectra` int(11) DEFAULT NULL,
  `followup_lead` varchar(20) DEFAULT NULL,
  `avg_ra` double DEFAULT NULL,
  `avg_dec` double DEFAULT NULL,
  `screening_date` datetime DEFAULT NULL,
  `followup_approved` int(11) DEFAULT NULL,
  `spec_type` varchar(20) DEFAULT NULL,
  `disc_mag` double DEFAULT NULL,
  `z` double DEFAULT NULL,
  `disc_phase` int(11) DEFAULT NULL,
  `variable_followup_approved` int(11) DEFAULT NULL,
  `catalog_z` double DEFAULT NULL,
  `latest_nondiscovery_subtraction` int(11) DEFAULT NULL,
  `spectrum_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `spectrum_phase` int(11) DEFAULT NULL,
  `spectrum_source` varchar(40) DEFAULT NULL,
  `min_obs_date` int(11) DEFAULT NULL,
  `last_obs_date` int(11) DEFAULT NULL,
  `last_mag` double DEFAULT NULL,
  `earliest_detection` date DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `dateLastModified` datetime DEFAULT NULL,
  `survey` varchar(45) NOT NULL DEFAULT 'LSQ',
  `transientHistoryLogAdded` tinyint(4) DEFAULT 0,
  `subtractedLightcurveUrl` varchar(200) DEFAULT NULL,
  `tripletImageURL` varchar(200) DEFAULT NULL,
  `historyURL` varchar(200) DEFAULT NULL,
  `observationMJD` double DEFAULT NULL,
  `ingested` tinyint(4) NOT NULL DEFAULT 0,
  `summaryRow` tinyint(4) DEFAULT NULL,
  `htm16ID` bigint(20) DEFAULT NULL,
  `cz` double DEFAULT NULL,
  `cx` double DEFAULT NULL,
  `htm20ID` bigint(20) DEFAULT NULL,
  `cy` double DEFAULT NULL,
  `qubId` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`qubId`),
  UNIQUE KEY `qubId_UNIQUE` (`qubId`),
  UNIQUE KEY `cand_name_type` (`cand_name`,`type`),
  KEY `htm20` (`htm20ID`),
  KEY `htm16` (`htm16ID`),
  KEY `ingested` (`ingested`),
  KEY `summaryRow` (`summaryRow`),
  KEY `cand_name` (`cand_name`),
  KEY `ra_dec` (`avg_ra`,`avg_dec`),
  KEY `idx_htm20ID` (`htm20ID`),
  KEY `idx_htm16ID` (`htm16ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'marshall'
--
--
-- WARNING: can't read the INFORMATION_SCHEMA.libraries table. It's most probably an old server 5.5.5-10.11.14-MariaDB-0ubuntu0.24.04.1.
--
--
-- WARNING: can't read the INFORMATION_SCHEMA.libraries table. It's most probably an old server 5.5.5-10.11.14-MariaDB-0ubuntu0.24.04.1.
--
/*!50003 DROP FUNCTION IF EXISTS `does_column_exist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`marshall`@`localhost` FUNCTION `does_column_exist`(table_name_IN VARCHAR(100), column_name_IN VARCHAR(100)) RETURNS int(11)
RETURN (
    SELECT COUNT(COLUMN_NAME) 
    FROM INFORMATION_SCHEMA.columns 
    WHERE TABLE_SCHEMA = DATABASE() 
    AND TABLE_NAME = table_name_IN 
    AND COLUMN_NAME = column_name_IN
) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
--
-- WARNING: can't read the INFORMATION_SCHEMA.libraries table. It's most probably an old server 5.5.5-10.11.14-MariaDB-0ubuntu0.24.04.1.
--
/*!50003 DROP PROCEDURE IF EXISTS `create_table_column` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`marshall`@`localhost` PROCEDURE `create_table_column`(
    IN table_name_IN VARCHAR(100)
    , IN column_name_IN VARCHAR(100)
    , IN column_definition_IN VARCHAR(100)
)
BEGIN

    SET @columnExists = does_column_exist(table_name_IN, column_name_IN);
    IF (@columnExists = 0) THEN

        SET @ddl = CONCAT('ALTER TABLE ', table_name_IN);
        SET @ddl = CONCAT(@ddl, ' ', 'ADD COLUMN') ;
        SET @ddl = CONCAT(@ddl, ' ', column_name_IN);
        SET @ddl = CONCAT(@ddl, ' ', column_definition_IN);

        PREPARE stmt FROM @ddl;
        EXECUTE stmt;
        DEALLOCATE PREPARE stmt;

    END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
--
-- WARNING: can't read the INFORMATION_SCHEMA.libraries table. It's most probably an old server 5.5.5-10.11.14-MariaDB-0ubuntu0.24.04.1.
--
/*!50003 DROP PROCEDURE IF EXISTS `insert_atel_titles_to_comments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`marshall`@`localhost` PROCEDURE `insert_atel_titles_to_comments`()
BEGIN
INSERT IGNORE INTO pesstoObjectsComments (pesstoObjectsId,dateCreated,commentAuthor,comment) SELECT 
	t.transientBucketId,c.datePublished,a.atelName,concat("<a href='",a.atelUrl,"'>ATEL#",c.atelNumber,"</a>: ", c.title)
FROM
    atel_coordinates a,
    transientbucketsummaries t,
    atel_fullcontent c
WHERE
	a.atelNumber = c.atelNumber and 
    t.transientBucketId = a.transientBucketId
        AND a.titleToComment = 0;
       
update 
    atel_coordinates a,
    transientbucketsummaries t
    set a.titleToComment = 1
WHERE
    t.transientBucketId = a.transientBucketId
        AND a.titleToComment = 0;
       
INSERT IGNORE INTO pesstoObjectsComments (pesstoObjectsId,dateCreated,commentAuthor,comment) 
SELECT 
    t.transientBucketId,c.datePublished,a.atelName,concat("<a href='",a.atelUrl,"'>ATEL#",c.atelNumber,"</a>: ", c.title)
FROM
    atel_names a,
    transientbucketsummaries t,
    atel_fullcontent c
WHERE
	a.atelNumber = c.atelNumber and 
    t.transientBucketId = a.transientBucketId
        AND a.titleToComment = 0;
        

update 
    atel_names a,
    transientbucketsummaries t
    set a.titleToComment = 1
WHERE
    t.transientBucketId = a.transientBucketId
        AND a.titleToComment = 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
--
-- WARNING: can't read the INFORMATION_SCHEMA.libraries table. It's most probably an old server 5.5.5-10.11.14-MariaDB-0ubuntu0.24.04.1.
--
/*!50003 DROP PROCEDURE IF EXISTS `insert_new_marshall_objects` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`marshall`@`localhost` PROCEDURE `insert_new_marshall_objects`()
BEGIN
INSERT INTO pesstoObjects (
		pesstoObjectsId,
		transientBucketId,
		classifiedFlag,
		marshallWorkflowLocation,
		alertWorkflowLocation,
		publicStatus,
		dateAdded,
		dateLastModified)  
	SELECT 
		distinct transientBucketId, transientBucketId, 0, "Inbox", 'Pending Classification', 1, now(), now()
	FROM
		transientBucket
	WHERE
		transientBucketId NOT IN (SELECT 
				transientBucketId
			FROM
				pesstoObjects) AND transientBucketId > 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
--
-- WARNING: can't read the INFORMATION_SCHEMA.libraries table. It's most probably an old server 5.5.5-10.11.14-MariaDB-0ubuntu0.24.04.1.
--
/*!50003 DROP PROCEDURE IF EXISTS `insert_new_transients_into_transientbucketsummaries` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`marshall`@`localhost` PROCEDURE `insert_new_transients_into_transientbucketsummaries`()
BEGIN

INSERT ignore INTO transientBucketSummaries (transientBucketId)
select distinct transientBucketId from transientBucket where replacedByRowId = 0 and transientBucketId != 0 and masterIDFlag = 1 and dateLastModified > NOW() -  INTERVAL 1 WEEK;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
--
-- WARNING: can't read the INFORMATION_SCHEMA.libraries table. It's most probably an old server 5.5.5-10.11.14-MariaDB-0ubuntu0.24.04.1.
--
/*!50003 DROP PROCEDURE IF EXISTS `insert_object_comment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`marshall`@`localhost` PROCEDURE `insert_object_comment`(transientBucketId_IN BIGINT(11), author_in VARCHAR(100), comment_in VARCHAR(500))
BEGIN
	INSERT INTO pesstoObjectsComments (pesstoObjectsId,
                                                    dateCreated,
                                                    dateLastModified,
                                                    commentAuthor,
                                                    comment
                                                  )
                VALUES (transientBucketId_IN,NOW(),NOW(),author_in,comment_in);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
--
-- WARNING: can't read the INFORMATION_SCHEMA.libraries table. It's most probably an old server 5.5.5-10.11.14-MariaDB-0ubuntu0.24.04.1.
--
/*!50003 DROP PROCEDURE IF EXISTS `refresh_meta_workflow_lists_counts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`marshall`@`localhost` PROCEDURE `refresh_meta_workflow_lists_counts`()
BEGIN
  UPDATE meta_workflow_lists_counts m
  SET m.count = (
    SELECT COUNT(*) FROM pesstoObjects p
    WHERE p.marshallWorkflowLocation = 'inbox'
  )
  WHERE m.listName = 'inbox';
  UPDATE meta_workflow_lists_counts m
  SET m.count = (
    SELECT COUNT(*) FROM pesstoObjects p
    WHERE p.marshallWorkflowLocation = 'archive'
  )
  WHERE m.listName = 'archive';
  UPDATE meta_workflow_lists_counts m
  SET m.count = (
    SELECT COUNT(*) FROM pesstoObjects p
    WHERE p.marshallWorkflowLocation = 'following'
  )
  WHERE m.listName = 'following';
  UPDATE meta_workflow_lists_counts m
  SET m.count = (
    SELECT COUNT(*) FROM pesstoObjects p
    WHERE p.marshallWorkflowLocation = 'pending observation'
  )
  WHERE m.listName = 'pending observation';
  UPDATE meta_workflow_lists_counts m
  SET m.count = (
    SELECT COUNT(*) FROM pesstoObjects p
    WHERE p.marshallWorkflowLocation = 'followup complete'
  )
  WHERE m.listName = 'followup complete';
  UPDATE meta_workflow_lists_counts m
  SET m.count = (
    SELECT COUNT(*) FROM pesstoObjects p
    WHERE p.marshallWorkflowLocation = 'review for followup'
  )
  WHERE m.listName = 'review for followup';
  UPDATE meta_workflow_lists_counts m
  SET m.count = (
    SELECT COUNT(*) FROM pesstoObjects p
    WHERE p.marshallWorkflowLocation = 'pending classification'
  )
  WHERE m.listName = 'pending classification';
  UPDATE meta_workflow_lists_counts m
  SET m.count = (
    SELECT COUNT(*) FROM pesstoObjects p
    WHERE p.alertWorkflowLocation = 'external alert released'
  )
  WHERE m.listName = 'external alert released';
  UPDATE meta_workflow_lists_counts m
  SET m.count = (
    SELECT COUNT(*) FROM pesstoObjects p
    WHERE p.alertWorkflowLocation = 'pessto classification released'
  )
  WHERE m.listName = 'pessto classification released';
  UPDATE meta_workflow_lists_counts m
  SET m.count = (
    SELECT COUNT(*) FROM pesstoObjects p
    WHERE p.alertWorkflowLocation = 'archived without alert'
  )
  WHERE m.listName = 'archived without alert';
  UPDATE meta_workflow_lists_counts m
  SET m.count = (
    SELECT COUNT(*) FROM pesstoObjects p
    WHERE p.alertWorkflowLocation = 'queued for atel'
  )
  WHERE m.listName = 'queued for atel';
  UPDATE meta_workflow_lists_counts m
  SET m.count = (SELECT COUNT(*) FROM pesstoObjects)
  WHERE m.listName = 'all';
  UPDATE meta_workflow_lists_counts m
  SET m.count = (
    SELECT COUNT(*) FROM pesstoObjects p
    WHERE p.classifiedFlag = 1
  )
  WHERE m.listName = 'classified';
  UPDATE meta_workflow_lists_counts m
  SET m.count = (
    SELECT COUNT(*) FROM pesstoObjects p
    WHERE p.snoozed = 1
  )
  WHERE m.listName = 'snoozed';
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
--
-- WARNING: can't read the INFORMATION_SCHEMA.libraries table. It's most probably an old server 5.5.5-10.11.14-MariaDB-0ubuntu0.24.04.1.
--
/*!50003 DROP PROCEDURE IF EXISTS `resurrect_objects` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`marshall`@`localhost` PROCEDURE `resurrect_objects`()
BEGIN


update transientbucketsummaries set currentMagnitudeEstimate = -9999 where currentMagnitudeEstimate > 21.5;





insert into transients_history_logs (transientBucketId, log) (SELECT 
    s.transientBucketId, "moved to 'inbox' by marshall's object resurrector"
FROM
    transientBucketSummaries s,
    pesstoObjects p
WHERE
    currentMagnitudeEstimate < 19.5
        AND currentMagnitudeEstimate > 3.0
        AND p.resurrectionCount < 5
        AND sherlockClassification not in ('VS','BS','CV','AGN')
        AND (p.lastReviewedMagDate < s.currentMagnitudeEstimateUpdated)
        AND (currentMagnitudeEstimate < p.lastReviewedMag)
        AND currentMagnitudeEstimateUpdated > NOW() - INTERVAL 10 DAY
        AND (p.marshallWorkflowLocation = 'archive'
		OR p.marshallWorkflowLocation = 'followup complete')
        AND s.transientBucketId = p.transientBucketId);
        

update pesstoObjects set snoozed = 2, marshallWorkflowLocation = "inbox", resurrectionCount = resurrectionCount+1  where transientBucketId in (select * from (SELECT 
    s.transientBucketId
FROM
    transientBucketSummaries s,
    pesstoObjects p
WHERE
    currentMagnitudeEstimate < 19.5
        AND currentMagnitudeEstimate > 3.0
        AND p.resurrectionCount < 5
        AND sherlockClassification not in ('VS','BS','CV','AGN')
        AND (p.lastReviewedMagDate < s.currentMagnitudeEstimateUpdated)
        AND (currentMagnitudeEstimate < p.lastReviewedMag)
        AND currentMagnitudeEstimateUpdated > NOW() - INTERVAL 10 DAY
        AND (p.marshallWorkflowLocation = 'archive'
        OR p.marshallWorkflowLocation = 'followup complete')
        AND s.transientBucketId = p.transientBucketId) as a);
        

UPDATE pesstoObjects p,
    transientBucketSummaries t 
SET 
    p.classifiedFlag = 1
WHERE
    t.recentClassification IS NOT NULL
        AND p.classifiedFlag != 1
        AND p.transientBucketId = t.transientBucketId;
                        

insert into transients_history_logs  (transientBucketId, log) SELECT 
                pesstoObjectsId, CONCAT("moved from ",marshallWorkflowLocation, " to 'review for followup' by marshall code")
            FROM
                pesstoObjects
            WHERE
                marshallWorkflowLocation in ('pending classification', 'inbox')
                    AND classifiedFlag = 1;


UPDATE pesstoObjects 
SET 
    marshallWorkflowLocation = 'review for followup',
    snoozed = 0
WHERE
    pesstoObjectsId IN (SELECT 
            *
        FROM
            (SELECT 
                pesstoObjectsId
            FROM
                pesstoObjects
            WHERE
                marshallWorkflowLocation in ('pending classification', 'inbox')
                    AND classifiedFlag = 1) AS alias);
        

update pesstoObjects set lastReviewedMagDate = NOW();
update pesstoObjects set lastReviewedMagDate = NOW();
        

update 
	pesstoobjects p,
    transientbucketsummaries t
    set lastReviewedMag = currentMagnitudeEstimate,
    lastReviewedMagDate = now()
WHERE
	p.transientBucketId = t.transientBucketId
	and (lastReviewedMag is null or lastReviewedMag != currentMagnitudeEstimate)
    and currentMagnitudeEstimate > 0;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
--
-- WARNING: can't read the INFORMATION_SCHEMA.libraries table. It's most probably an old server 5.5.5-10.11.14-MariaDB-0ubuntu0.24.04.1.
--
/*!50003 DROP PROCEDURE IF EXISTS `sync_marshall_feeder_survey_transientBucketId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`marshall`@`localhost` PROCEDURE `sync_marshall_feeder_survey_transientBucketId`(ARG_fs_table varchar(45))
sync_marshall_feeder_survey_transientBucketId:BEGIN
	
    set @inLastDays = 3;
    set @fs_table = convert(ARG_fs_table using utf8mb4) collate utf8mb4_general_ci;
    
	
	set @object = (select fs_table_column from marshall_fs_column_map where transientBucket_column = "name" and fs_table_name = @fs_table);  
    set @object2 = (select fs_table_column from marshall_fs_column_map where transientBucket_column = "name_alt" and fs_table_name = @fs_table); 
    set @survey = (select fs_survey_name from marshall_fs_column_map where fs_table_name = @fs_table limit 1);  
    
    if @fs_table in ('fs_atlas_forced_phot') then   
		set @myquery = 'UPDATE fs_atlas_forced_phot a, marshall_transient_akas b set a.transientBucketId = b.transientBucketId where a.atlas_designation = b.name and a.transientBucketId IS NULL and b.name like "ATLAS%" AND a.dateCreated > NOW() - INTERVAL 1 WEEK;';
	else
		set @myquery = concat('UPDATE ',@fs_table,' a INNER JOIN 
		transientBucket b
		ON a.',@object,' = b.name
		set a.transientBucketId = b.transientBucketId
		where a.transientBucketId IS NULL and a.dateLastModified > NOW() - INTERVAL 1 WEEK;');
    end if;

	PREPARE stmt FROM @myquery;
	EXECUTE stmt;
    
    if @object2 is not null then 
		set @myquery = concat('UPDATE ',@fs_table,' a
	INNER JOIN 
	transientBucket b
	ON a.',@object2,' = b.name
	set a.transientBucketId = b.transientBucketId
	where a.transientBucketId IS NULL and a.dateLastModified > NOW() - INTERVAL 1 WEEK;');
		PREPARE stmt FROM @myquery;
		EXECUTE stmt;
	end if;
    
	if @fs_table in ('astronotes_transients') then   
        LEAVE sync_marshall_feeder_survey_transientBucketId;
    end if;

    if @survey is not null then 
		set @tbcolumns = (select CONCAT_WS(',',GROUP_CONCAT(transientBucket_column  order  by primaryId),'survey') from marshall_fs_column_map where fs_table_name = @fs_table and transientBucket_column != "name_alt");
		set @fscolumns = (select GROUP_CONCAT(fs_table_column  order  by primaryId) from marshall_fs_column_map where fs_table_name = ARG_fs_table and transientBucket_column != "name_alt");
		set @myquery = concat('insert ignore into transientBucket (transientBucketId,',@tbcolumns,') select transientBucketId,',@fscolumns,',"',@survey,'" from ',@fs_table,' where ingested = 0 and transientBucketId is not null limit 100000;' );
	else
		set @tbcolumns = (select GROUP_CONCAT(transientBucket_column  order  by primaryId) from marshall_fs_column_map where fs_table_name = @fs_table and transientBucket_column != "name_alt");
		set @fscolumns = (select GROUP_CONCAT(fs_table_column  order  by primaryId) from marshall_fs_column_map where fs_table_name = @fs_table and transientBucket_column != "name_alt");
		set @myquery = concat('insert ignore into transientBucket (transientBucketId,',@tbcolumns,') select transientBucketId,',@fscolumns,' from ',@fs_table,' where ingested = 0 and transientBucketId is not null limit 100000;' );
	end if;
    PREPARE stmt FROM @myquery;

    EXECUTE stmt;

    
    set @myquery = concat('update ',ARG_fs_table,' set ingested = 1 where transientBucketId is not null and ingested = 0  limit 50000');
	PREPARE stmt FROM @myquery;
    EXECUTE stmt;
    
    set @myquery = 'insert into sherlock_classifications (transient_object_id) select distinct transientBucketId from transientBucketSummaries where dateLastModified > NOW() - INTERVAL @inLastDays DAY  ON DUPLICATE KEY UPDATE  transient_object_id = transientBucketId;';
    PREPARE stmt FROM @myquery;
    EXECUTE stmt;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
--
-- WARNING: can't read the INFORMATION_SCHEMA.libraries table. It's most probably an old server 5.5.5-10.11.14-MariaDB-0ubuntu0.24.04.1.
--
/*!50003 DROP PROCEDURE IF EXISTS `update_astronotes_tables` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`marshall`@`localhost` PROCEDURE `update_astronotes_tables`()
BEGIN
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
--
-- WARNING: can't read the INFORMATION_SCHEMA.libraries table. It's most probably an old server 5.5.5-10.11.14-MariaDB-0ubuntu0.24.04.1.
--
/*!50003 DROP PROCEDURE IF EXISTS `update_fs_atlas_forced_phot` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`marshall`@`localhost` PROCEDURE `update_fs_atlas_forced_phot`()
BEGIN
	
	
	update fs_atlas_forced_phot set marshall_limiting_mag = 1 where snr < 5.0 and dpeak is not null and marshall_limiting_mag is null;
	update fs_atlas_forced_phot set marshall_limiting_mag =  0 where snr >= 5.0 and dpeak is not null and marshall_limiting_mag is null;
	update fs_atlas_forced_phot set marshall_mag =  mag, marshall_mag_error = dm where snr >= 5.0 and dpeak is not null and marshall_mag is null;
	update fs_atlas_forced_phot set marshall_mag = cast(mag-2.5*log10(5/snr) as decimal(10,2)) where dpeak is not null and limiting_mag = 1 and mag is not null and marshall_mag is null and dateLastModified > NOW() - INTERVAL 1 WEEK;
	update fs_atlas_forced_phot set marshall_mag = cast(mag-2.5*log10(dpeak*5/peakfit) as decimal(10,2)) where dpeak is not null and limiting_mag = 0 and mag is not null and snr < 5 and marshall_mag is null and dateLastModified > NOW() - INTERVAL 1 WEEK;
	update fs_atlas_forced_phot set fnu =(pow(10,-(48.6 + zp)/2.5) * pow(10,-apfit/2.5) * (peakfit*major*minor/texp)) where apfit is not null and zp is not null and peakfit is not null and fnu is null and dateLastModified > NOW() - INTERVAL 1 DAY;
	update fs_atlas_forced_phot set fnu_error = (pow(10,-(48.6 + zp)/2.5) * pow(10,-apfit/2.5) * (dpeak*major*minor/texp)) where apfit is not null and zp is not null and dpeak is not null and fnu_error is null and dateLastModified > NOW() - INTERVAL 1 DAY;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
--
-- WARNING: can't read the INFORMATION_SCHEMA.libraries table. It's most probably an old server 5.5.5-10.11.14-MariaDB-0ubuntu0.24.04.1.
--
/*!50003 DROP PROCEDURE IF EXISTS `update_fs_ztf` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`marshall`@`localhost` PROCEDURE `update_fs_ztf`()
BEGIN
	update fs_ztf set filt = 'g' where fid = 1 and filt is null;
	update fs_ztf set filt = 'r' where fid = 2 and filt is null;
	update fs_ztf set filt = 'i' where fid = 3 and filt is null;
    update fs_ztf set primaryId = candidateId where primaryId is null;
	update fs_ztf set  surveyUrl = CONCAT("https://lasair-ztf.lsst.ac.uk/objects/",objectId) where surveyUrl is null;


update fs_ztf a, (SELECT 
    objectId, raDeg, decDeg
FROM
    fs_ztf
WHERE
    limitingMag = 0
        AND objectId IN (SELECT 
            *
        FROM
            (SELECT DISTINCT
                objectId
            FROM
                fs_ztf
            WHERE
                limitingMag = 1 AND raDeg IS NULL) AS z) group by objectId) b set a.raDeg=b.raDeg,a.decDeg=b.decDeg where a.objectId=b.objectId and a.raDeg is null;


delete from fs_ztf where raDeg is null and limitingMag = 0;


update fs_ztf set ingested = 1 where (isdiffpos = "f" or  isdiffpos = "0") and ingested  = 0;


delete from fs_ztf where mjd < (TO_SECONDS(UTC_TIMESTAMP())/(3600*24)-678941-42) and transientBucketId is not null and ingested = 1;


delete from fs_ztf where raDeg is null;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
--
-- WARNING: can't read the INFORMATION_SCHEMA.libraries table. It's most probably an old server 5.5.5-10.11.14-MariaDB-0ubuntu0.24.04.1.
--
/*!50003 DROP PROCEDURE IF EXISTS `update_inbox_auto_archiver` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`marshall`@`localhost` PROCEDURE `update_inbox_auto_archiver`()
BEGIN
	
UPDATE transientBucketSummaries t,
        pesstoObjects p 
    SET 
        marshallWorkflowLocation = 'archive'
    WHERE
        t.mastername LIKE 'ZTF%%'
            AND (t.currentMagnitude > 20.0
            OR ABS(t.gLat) < 10)
            AND p.transientBucketId = t.transientBucketId
            AND marshallWorkflowLocation = "inbox" ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
--
-- WARNING: can't read the INFORMATION_SCHEMA.libraries table. It's most probably an old server 5.5.5-10.11.14-MariaDB-0ubuntu0.24.04.1.
--
/*!50003 DROP PROCEDURE IF EXISTS `update_scheduler_obs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`marshall`@`localhost` PROCEDURE `update_scheduler_obs`()
BEGIN

    INSERT IGNORE INTO scheduler_obs (
        transientBucketId,
        latestMag,
        latestMagDate,
        latestMagFilter,
        targetName,
        autoOB
    )
    SELECT DISTINCT
        t.transientBucketId,
        t.currentMagnitude,
        t.currentMagnitudeDate,
        t.currentMagnitudeFilter,
        t.masterName,
        1
    FROM transientbucketsummaries t
    WHERE NOT EXISTS (
        SELECT 1
        FROM fs_user_added f
        WHERE f.transientBucketId = t.transientBucketId
    );

    INSERT INTO scheduler_obs (
        transientBucketId,
        latestMag,
        latestMagDate,
        latestMagFilter,
        targetName,
        autoOB
    )
    SELECT DISTINCT
        t.transientBucketId,
        t.currentMagnitude,
        t.currentMagnitudeDate,
        t.currentMagnitudeFilter,
        t.masterName,
        1
    FROM transientbucketsummaries t,
         scheduler_obs s
    WHERE s.transientBucketId = t.transientBucketId
      AND s.latestMagDate < t.currentMagnitudeDate
      AND t.dateAdded > DATE('2025-08-10')
      AND NOT EXISTS (
          SELECT 1
          FROM fs_user_added f
          WHERE f.transientBucketId = t.transientBucketId
      )
    ON DUPLICATE KEY UPDATE
        latestMag = VALUES(latestMag),
        latestMagDate = VALUES(latestMagDate),
        latestMagFilter = VALUES(latestMagFilter),
        updated = 1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
--
-- WARNING: can't read the INFORMATION_SCHEMA.libraries table. It's most probably an old server 5.5.5-10.11.14-MariaDB-0ubuntu0.24.04.1.
--
/*!50003 DROP PROCEDURE IF EXISTS `update_sherlock_crossmatches` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`marshall`@`localhost` PROCEDURE `update_sherlock_crossmatches`()
BEGIN
	
	update sherlock_crossmatches a
	inner join (select s.id, min(t.original_search_radius_arcsec) as radius from sherlock_crossmatches s
	inner join sherlock_crossmatches t
	where s.transient_object_id=t.transient_object_id
	and s.original_search_radius_arcsec = 0
	and s.rank is not null and s.rank=t.merged_rank group by concat(s.transient_object_id,t.merged_rank )) as b
	set a.original_search_radius_arcsec=b.radius
	where a.id=b.id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
--
-- WARNING: can't read the INFORMATION_SCHEMA.libraries table. It's most probably an old server 5.5.5-10.11.14-MariaDB-0ubuntu0.24.04.1.
--
/*!50003 DROP PROCEDURE IF EXISTS `update_sherlock_xmatch_counts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`marshall`@`localhost` PROCEDURE `update_sherlock_xmatch_counts`()
BEGIN

UPDATE tcs_stats_catalogues t 
LEFT JOIN
(SELECT 
    catalogue_table_id, count(*) as 'all_transient_associations'
FROM
    (SELECT DISTINCT
        c.transient_object_id, c.catalogue_table_id
    FROM
        sherlock_crossmatches c, transientBucketSummaries s
    WHERE
        s.transientBucketId = c.transient_object_id) AS alais group by catalogue_table_id) o 
ON t.table_id = o.catalogue_table_id
set t.all_transient_associations=o.all_transient_associations;

update tcs_stats_catalogues set all_transient_associations = 0 where all_transient_associations is null;


UPDATE tcs_stats_catalogues t 
LEFT JOIN
(SELECT 
    catalogue_table_id, count(*) as 'top_ranked_transient_associations'
FROM
    (SELECT DISTINCT
        c.transient_object_id, c.catalogue_table_id
    FROM
        sherlock_crossmatches c, transientBucketSummaries s
    WHERE
        s.transientBucketId = c.transient_object_id and c.rank=1) AS alais group by catalogue_table_id) o 
ON t.table_id = o.catalogue_table_id
set t.top_ranked_transient_associations=o.top_ranked_transient_associations;

update tcs_stats_catalogues set top_ranked_transient_associations = 0 where top_ranked_transient_associations is null;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
--
-- WARNING: can't read the INFORMATION_SCHEMA.libraries table. It's most probably an old server 5.5.5-10.11.14-MariaDB-0ubuntu0.24.04.1.
--
/*!50003 DROP PROCEDURE IF EXISTS `update_single_transientbucket_summary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`marshall`@`localhost` PROCEDURE `update_single_transientbucket_summary`(
	IN thisID BIGINT(20)
)
BEGIN



UPDATE pesstoObjects 
SET 
    classifiedFlag = 1
WHERE
    transientBucketId IN (SELECT 
            *
        FROM
            (SELECT DISTINCT
                transientBucketId
            FROM
                transientBucket
            WHERE
                (spectralType IS NOT NULL
                    AND transientBucketId = thisID)) AS a);
                        
insert into transients_history_logs  (transientBucketId, log) SELECT 
                pesstoObjectsId, CONCAT("moved from ",marshallWorkflowLocation, " to 'review for followup' by marshall code")
            FROM
                pesstoObjects
            WHERE
                marshallWorkflowLocation in ('pending classification', 'inbox')
                    AND classifiedFlag = 1;

UPDATE pesstoObjects 
SET 
    marshallWorkflowLocation = 'review for followup',
    snoozed = 0
WHERE
    pesstoObjectsId IN (SELECT 
            *
        FROM
            (SELECT 
                pesstoObjectsId
            FROM
                pesstoObjects
            WHERE
                marshallWorkflowLocation in ('pending classification', 'inbox')
                    AND classifiedFlag = 1 and transientBucketId = thisID) AS alias);
                    

INSERT INTO pesstoObjects (
		pesstoObjectsId,
		transientBucketId,
		classifiedFlag,
		marshallWorkflowLocation,
		alertWorkflowLocation,
		publicStatus,
		dateAdded,
		dateLastModified)  
	SELECT 
		transientBucketId, transientBucketId, 0, "Inbox", 'Pending Classification', 1, now(), now()
	FROM
		transientBucket
	WHERE
		transientBucketId NOT IN (SELECT 
				transientBucketId
			FROM
				pesstoObjects) AND transientBucketId > 0 and transientBucketId = thisID and masterIDFlag = 1;

INSERT ignore INTO transientBucketSummaries (transientBucketId)
select distinct transientBucketId from transientBucket where replacedByRowId = 0 and transientBucketId != 0 and transientBucketId = thisID;


UPDATE transientBucketSummaries 
SET 
    updateNeeded = 1
WHERE
    transientBucketId = thisId;	

UPDATE transientBucketSummaries s,
    transientBucket t 
SET 
    s.masterName = t.name,
    s.surveyObjectUrl = t.surveyObjectUrl
WHERE
    masterIdFlag = 1 AND replacedByRowId = 0
        AND s.transientBucketId = t.transientBucketId
        AND t.transientBucketId=thisID;
	

UPDATE transientBucket t,
    transientBucketSummaries s 
SET 
    s.surveyObjectUrl = t.surveyObjectUrl
WHERE
    t.surveyObjectUrl IS NOT NULL
        AND s.surveyObjectUrl IS NULL
        AND t.transientBucketId = s.transientBucketId
        AND t.surveyObjectUrl NOT LIKE '%%astronomerstelegram%%'
        AND t.surveyObjectUrl NOT LIKE '%%roche%%'
        AND replacedByRowId = 0
        AND masterIDFlag = 1
        AND t.transientBucketId=thisID;

UPDATE transientBucket t,
    transientBucketSummaries s 
SET 
    s.surveyObjectUrl = t.surveyObjectUrl
WHERE
    t.surveyObjectUrl IS NOT NULL
        AND s.surveyObjectUrl IS NULL
        AND t.transientBucketId = s.transientBucketId
        AND t.surveyObjectUrl NOT LIKE '%%astronomerstelegram%%'
        AND t.surveyObjectUrl NOT LIKE '%%roche%%'
        AND replacedByRowId = 0
        AND t.transientBucketId=thisID;
	

UPDATE transientBucketSummaries s,
    transientBucket t 
SET 
    s.objectAddedToMarshallBy = t.reducer
WHERE
    t.reducer IS NOT NULL
        AND t.spectralType IS NULL
        AND t.transientBucketId = s.transientBucketId
        AND replacedByRowId = 0
        AND s.updateNeeded = 1
        AND t.transientBucketId=thisID;
	

UPDATE transientBucketSummaries s,
    (SELECT 
        *
    FROM
        (SELECT 
        transientBucketId,
            AVG(raDeg) AS raDeg,
            AVG(decDeg) AS decDeg,
            MIN(dateCreated) AS dateAdded,
            MIN(magnitude) AS peakMagnitude
    FROM
        transientBucket
    WHERE
		transientBucketId=thisID and
        replacedByRowId = 0 AND limitingMag = 0
            AND magnitude IS NOT NULL
            AND magnitude > 0.0
            AND magnitude < 25.0
            AND transientBucketId IN (SELECT 
                transientBucketId
            FROM
                transientBucketSummaries
            WHERE
                updateNeeded = 1)
    GROUP BY transientBucketId) AS a
    ORDER BY transientBucketId) t 
SET 
    s.raDeg = t.raDeg,
    s.decDeg = t.decDeg,
    s.dateAdded = t.dateAdded,
    s.peakMagnitude = t.peakMagnitude
WHERE
    s.transientBucketId = t.transientBucketId
        AND s.updateNeeded = 1
        AND t.transientBucketId=thisID;

UPDATE transientBucketSummaries s,
    (SELECT 
        *
    FROM
        (SELECT 
        transientBucketId,
            AVG(raDeg) AS raDeg,
            AVG(decDeg) AS decDeg
    FROM
        transientBucket
    WHERE
		transientBucketId=thisID and
        replacedByRowId = 0
            AND transientBucketId IN (SELECT 
                transientBucketId
            FROM
                transientBucketSummaries
            WHERE
                raDeg IS NULL AND updateNeeded = 1)
    GROUP BY transientBucketId) AS a
    ORDER BY transientBucketId) t 
SET 
    s.raDeg = t.raDeg,
    s.decDeg = t.decDeg
WHERE
    s.transientBucketId = t.transientBucketId
        AND s.updateNeeded = 1
        AND t.transientBucketId=thisID;

UPDATE transientBucketSummaries s,
    (SELECT 
        *
    FROM
        (SELECT 
        transientBucketId, MIN(hostRedshift) AS host_redshift
    FROM
        transientBucket
    WHERE
		transientBucketId=thisID and
        replacedByRowId = 0
            AND hostRedshift IS NOT NULL
            AND transientBucketId IN (SELECT 
                transientBucketId
            FROM
                transientBucketSummaries
            WHERE
                updateNeeded = 1)
    GROUP BY transientBucketId) AS a
    ORDER BY transientBucketId) t 
SET 
    s.host_redshift = t.host_redshift
WHERE
    s.transientBucketId = t.transientBucketId
        AND updateNeeded = 1
        AND t.transientBucketId=thisID;

UPDATE transientBucketSummaries s,
    (SELECT 
        *
    FROM
        (SELECT 
        a.transientBucketId,
            a.observationDate AS earliestDetection,
            a.magnitude AS earliestMagnitude,
            a.filter AS earliestMagnitudeFilter,
            a.survey AS earliestMagnitudeSurvey
    FROM
        transientBucket a
    JOIN (SELECT 
        MIN(observationDate) AS minval, transientBucketId
    FROM
        transientBucket
    WHERE
		transientBucketId=thisID and
        magnitude IS NOT NULL
            AND limitingMag = 0
            AND replacedByRowId = 0
            AND observationDate IS NOT NULL
            AND transientBucketId IN (SELECT 
                transientBucketId
            FROM
                transientBucketSummaries
            WHERE
                updateNeeded = 1)
    GROUP BY transientBucketId) AS b ON a.transientBucketId = b.transientBucketId
        AND a.observationDate = b.minval
    WHERE
        a.limitingMag = 0
            AND a.replacedByRowId = 0
            AND observationDate IS NOT NULL
            AND a.transientBucketId IN (SELECT 
                transientBucketId
            FROM
                transientBucketSummaries
            WHERE
				transientBucketId=thisID and
                updateNeeded = 1)
    GROUP BY transientBucketId) AS c
    ORDER BY transientBucketId) t 
SET 
    s.earliestDetection = t.earliestDetection,
    s.earliestMagnitude = t.earliestMagnitude,
    s.earliestMagnitudeFilter = t.earliestMagnitudeFilter,
    s.earliestMagnitudeSurvey = t.earliestMagnitudeSurvey
WHERE
    s.transientBucketId = t.transientBucketId
        AND s.updateNeeded = 1
        AND t.transientBucketId=thisID;


UPDATE transientBucketSummaries a,
    (SELECT 
        *
    FROM
        (SELECT 
        s.transientBucketId,
            MAX(t.lastNonDetectionDate) AS lastNonDetectionDate
    FROM
        transientBucket t, transientBucketSummaries s
    WHERE
		t.transientBucketId=thisID and
        t.lastNonDetectionDate < s.earliestDetection
            AND s.transientBucketId = t.transientBucketId
            AND replacedByRowId = 0
            AND t.transientBucketId IN (SELECT 
                transientBucketId
            FROM
                transientBucketSummaries
            WHERE
				transientBucketId=thisID and
                updateNeeded = 1)
    GROUP BY s.transientBucketId) AS c
    ORDER BY transientBucketId) b 
SET 
    a.lastNonDetectionDate = b.lastNonDetectionDate
WHERE
    a.transientBucketId = b.transientBucketId
        AND a.updateNeeded = 1
        AND a.transientBucketId=thisID;
    

UPDATE transientBucketSummaries a,
    (SELECT 
        *
    FROM
        (SELECT 
        s.transientBucketId,
            MAX(t.observationDate) AS lastNonDetectionDate
    FROM
        transientBucket t, transientBucketSummaries s
    WHERE
		t.transientBucketId=thisID and
        t.observationDate < s.earliestDetection
            AND (t.observationDate > s.lastNonDetectionDate
            OR s.lastNonDetectionDate IS NULL)
            AND s.transientBucketId = t.transientBucketId
            AND replacedByRowId = 0
            AND t.limitingMag = 1
            AND t.transientBucketId IN (SELECT 
                transientBucketId
            FROM
                transientBucketSummaries
            WHERE
                updateNeeded = 1)
    GROUP BY s.transientBucketId) AS a
    ORDER BY transientBucketId) b 
SET 
    a.lastNonDetectionDate = b.lastNonDetectionDate
WHERE
    a.transientBucketId = b.transientBucketId
        AND a.updateNeeded = 1
        AND a.transientBucketId=thisID;


UPDATE transientBucketSummaries s,
    (SELECT 
        *
    FROM
        (SELECT 
        a.transientBucketId,
            a.observationDate AS currentMagnitudeDate,
            a.magnitude AS currentMagnitude,
            a.filter AS currentMagnitudeFilter,
            a.survey AS currentMagnitudeSurvey
    FROM
        transientBucket a
    JOIN (SELECT 
        *
    FROM
        (SELECT 
        MAX(observationDate) AS maxval, transientBucketId
    FROM
        transientBucket
    WHERE
		transientBucketId=thisID and
        magnitude IS NOT NULL
            AND limitingMag = 0
            AND replacedByRowId = 0
            AND observationDate IS NOT NULL
            AND transientBucketId IN (SELECT 
                transientBucketId
            FROM
                transientBucketSummaries
            WHERE
                updateNeeded = 1)
    GROUP BY transientBucketId) AS d
    ORDER BY transientBucketId) AS b ON a.transientBucketId = b.transientBucketId
        AND a.observationDate = b.maxval
    WHERE
        a.limitingMag = 0
            AND a.replacedByRowId = 0
            AND observationDate IS NOT NULL
            AND a.transientBucketId IN (SELECT 
                transientBucketId
            FROM
                transientBucketSummaries
            WHERE
                updateNeeded = 1)
    GROUP BY transientBucketId) AS c
    ORDER BY transientBucketId) t 
SET 
    s.currentMagnitudeDate = t.currentMagnitudeDate,
    s.currentMagnitude = t.currentMagnitude,
    s.currentMagnitudeFilter = t.currentMagnitudeFilter,
    s.currentMagnitudeSurvey = t.currentMagnitudeSurvey
WHERE
    s.transientBucketId = t.transientBucketId
        AND s.updateNeeded = 1
        AND t.transientBucketId=thisID;

        
        

UPDATE transientBucketSummaries s,
    (SELECT 
        *
    FROM
        (SELECT 
        a.transientBucketId,
            a.observationDate AS classificationDate,
            a.spectralType AS recentClassification,
            a.classificationWRTMax AS classificationWRTMax,
            a.classificationPhase AS classificationPhase,
            a.reducer AS classificationAddedBy,
            a.dateCreated AS classificationAddedDate,
            a.transientRedshift AS best_redshift,
            a.survey as classificationSurvey
    FROM
        transientBucket a
    JOIN (SELECT 
        *
    FROM
        (SELECT 
        max(concat(DATE_FORMAT(observationDate,"%Y%m%d"),dateLastModified)) as date_index, transientBucketId
    FROM
        transientBucket
    WHERE
        spectralType IS NOT NULL
            AND replacedByRowId = 0
            AND observationDate IS NOT NULL
            AND transientBucketId IN (SELECT 
                transientBucketId
            FROM
                transientBucketSummaries
            WHERE
               updateNeeded = 1)
    GROUP BY transientBucketId) AS c
    ORDER BY transientBucketId) AS b ON a.transientBucketId = b.transientBucketId
        AND b.date_index = concat(DATE_FORMAT(a.observationDate,"%Y%m%d"),a.dateLastModified)
    WHERE
        spectralType IS NOT NULL
            AND a.replacedByRowId = 0
            AND observationDate IS NOT NULL
            AND a.transientBucketId IN (SELECT 
                transientBucketId
            FROM
                transientBucketSummaries
            WHERE
                updateNeeded = 1)) AS d
    ORDER BY transientBucketId) t 
SET 
    s.classificationDate = t.classificationDate,
    s.recentClassification = t.recentClassification,
    s.classificationWRTMax = t.classificationWRTMax,
    s.classificationPhase = t.classificationPhase,
    s.classificationAddedBy = t.classificationAddedBy,
    s.classificationAddedDate = t.classificationAddedDate,
    s.best_redshift = t.best_redshift,
    s.classificationSurvey = t.classificationSurvey
WHERE
    s.transientBucketId = t.transientBucketId
        AND s.updateNeeded = 1
         AND t.transientBucketId=thisID;

        

UPDATE transientBucketSummaries s,
    sherlock_crossmatches c 
SET 
    s.sherlockClassification = c.association_type,
    s.separationArcsec = c.separationArcsec,
    s.distanceMpc = IF(c.direct_distance,
        c.direct_distance,
        c.distance),
    s.best_redshift = IF(s.best_redshift IS NULL,
        c.z,
        s.best_redshift),
    s.host_redshift = IF(c.z AND c.z != s.host_redshift,
        c.z,
        s.host_redshift)
WHERE
	
    c.rank = 1
        AND s.transientBucketId = c.transient_object_id
        AND c.transient_object_id IN (SELECT 
            *
        FROM
            (SELECT 
                transientBucketId
            FROM
                transientBucketSummaries
            WHERE
                updateNeeded = 1) AS a)
        AND s.updateNeeded = 1
        AND s.transientBucketId=thisID;


UPDATE transientBucketSummaries 
SET 
    absolutePeakMagnitude = peakMagnitude - (5 * LOG10(distanceMpc * 1000000) - 5)
WHERE
    distanceMpc IS NOT NULL
        AND peakMagnitude IS NOT NULL
        AND peakMagnitude < 24.0
        AND absolutePeakMagnitude IS NULL
        AND transientBucketId=thisID;
    
    

UPDATE transientBucketSummaries s 
SET 
    updateNeeded = 2
WHERE
    updateNeeded = 1
    AND transientBucketId=thisID;


UPDATE transientBucketSummaries t,
        pesstoObjects p 
    SET 
        marshallWorkflowLocation = 'archive'
    WHERE
        t.mastername LIKE 'ZTF%%'
            AND (t.currentMagnitude > 20.0
            OR ABS(t.gLat) < 10)
            AND p.transientBucketId = t.transientBucketId
            AND marshallWorkflowLocation = "inbox"
            AND t.transientBucketId=thisID;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
--
-- WARNING: can't read the INFORMATION_SCHEMA.libraries table. It's most probably an old server 5.5.5-10.11.14-MariaDB-0ubuntu0.24.04.1.
--
/*!50003 DROP PROCEDURE IF EXISTS `update_tns_tables` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`marshall`@`localhost` PROCEDURE `update_tns_tables`()
BEGIN

update tns_spectra set TNSName = concat("AT",TNSId) where specType not like "%SN%" and TNSName is null;
update tns_spectra set TNSName = concat("SN",TNSId) where specType  like "%SN%" and TNSName is null;
update tns_spectra p, tns_sources s set p.raDeg = s.raDeg, p.decDeg = s.decDeg where p.TNSId=s.TNSId and s.raDeg is not null;
update tns_photometry p, tns_sources s set p.raDeg = s.raDeg, p.decDeg = s.decDeg where p.TNSId=s.TNSId and s.raDeg is not null;
update tns_sources s, tns_photometry p set  p.transientBucketId  = s.transientBucketId where s.TNSId=p.TNSId and p.transientBucketId is null and s.transientBucketId is not null;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
--
-- WARNING: can't read the INFORMATION_SCHEMA.libraries table. It's most probably an old server 5.5.5-10.11.14-MariaDB-0ubuntu0.24.04.1.
--
/*!50003 DROP PROCEDURE IF EXISTS `update_transientbucketsummaries` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`marshall`@`localhost` PROCEDURE `update_transientbucketsummaries`()
BEGIN


set @inLastDays = 3;
UPDATE pesstoObjects p,
    transientBucketSummaries t 
SET 
    p.classifiedFlag = 1
WHERE
    t.recentClassification IS NOT NULL
        AND p.classifiedFlag != 1
        AND p.transientBucketId = t.transientBucketId and t.dateLastModified > NOW() - INTERVAL @inLastDays DAY;
                        
                        

insert into transients_history_logs  (transientBucketId, log) SELECT 
                pesstoObjectsId, CONCAT("moved from ",marshallWorkflowLocation, " to 'review for followup' by marshall code")
            FROM
                pesstoObjects
            WHERE
            
                marshallWorkflowLocation in ('inbox')
                    AND classifiedFlag = 1;


UPDATE pesstoObjects 
SET 
    marshallWorkflowLocation = 'review for followup',
    snoozed = 0
WHERE
    marshallWorkflowLocation IN ('inbox','Pending Observation')
        AND classifiedFlag = 1;
                        
                    

INSERT INTO pesstoObjects (
		pesstoObjectsId,
		transientBucketId,
		classifiedFlag,
		marshallWorkflowLocation,
		alertWorkflowLocation,
		publicStatus,
		dateAdded,
		dateLastModified)  
	SELECT 
		transientBucketId, transientBucketId, 0, "Inbox", 'Pending Classification', 1, now(), now()
	FROM
		transientBucket
	WHERE
		transientBucketId NOT IN (SELECT 
				transientBucketId
			FROM
				pesstoObjects) AND transientBucketId > 0 and masterIDFlag = 1 and  dateLastModified > NOW() - INTERVAL @inLastDays DAY;



INSERT ignore INTO transientBucketSummaries (transientBucketId)
select distinct transientBucketId from transientBucket FORCE INDEX (idx_dateLastModified) where replacedByRowId = 0 and transientBucketId != 0 and masterIDFlag = 1 and dateLastModified > DATE_SUB(curdate(), INTERVAL 1 DAY);



UPDATE transientBucketSummaries 
SET 
    updateNeeded = 1
WHERE
    transientBucketId IN (SELECT 
            *
        FROM
            (SELECT 
                a.transientBucketId
            FROM
                transientBucketSummaries a, (SELECT 
                transientBucketId, MAX(dateLastModified) AS dateLastModified
            FROM
                transientBucket FORCE INDEX (idx_dateLastModified)
            WHERE
                dateLastModified > DATE_SUB(CURDATE(), INTERVAL 1 DAY)
            GROUP BY transientBucketId) b
            WHERE
                a.transientBucketId = b.transientBucketId
                    AND a.dateLastModified < b.dateLastModified
                    AND a.updateNeeded NOT IN (1 , 2)) c);	


UPDATE transientBucketSummaries s,
    transientBucket t 
SET 
    s.masterName = t.name,
    s.surveyObjectUrl = t.surveyObjectUrl
WHERE
    masterIdFlag = 1 AND replacedByRowId = 0
        AND s.transientBucketId = t.transientBucketId
        AND s.updateNeeded = 1;
       

UPDATE transientBucket t,
    transientBucketSummaries s 
SET 
    s.surveyObjectUrl = t.surveyObjectUrl
WHERE
    t.surveyObjectUrl IS NOT NULL
        AND s.surveyObjectUrl IS NULL
        AND t.transientBucketId = s.transientBucketId
        AND t.surveyObjectUrl NOT LIKE '%%astronomerstelegram%%'
        AND t.surveyObjectUrl NOT LIKE '%%roche%%'
        AND replacedByRowId = 0
        AND masterIDFlag = 1;

UPDATE transientBucket t,
    transientBucketSummaries s 
SET 
    s.surveyObjectUrl = t.surveyObjectUrl
WHERE
    t.surveyObjectUrl IS NOT NULL
        AND s.surveyObjectUrl IS NULL
        AND t.transientBucketId = s.transientBucketId
        AND t.surveyObjectUrl NOT LIKE '%%astronomerstelegram%%'
        AND t.surveyObjectUrl NOT LIKE '%%roche%%'
        AND replacedByRowId = 0;
      

UPDATE transientBucketSummaries s,
    transientBucket t 
SET 
    s.objectAddedToMarshallBy = t.reducer
WHERE
    t.reducer IS NOT NULL
        AND t.spectralType IS NULL
        AND t.transientBucketId = s.transientBucketId
        AND replacedByRowId = 0
        AND s.updateNeeded = 1;
      

UPDATE transientBucketSummaries s,
    (SELECT 
        *
    FROM
        (SELECT 
        transientBucketId,
            AVG(raDeg) AS raDeg,
            AVG(decDeg) AS decDeg,
            MIN(dateCreated) AS dateAdded,
            MIN(magnitude) AS peakMagnitude
    FROM
        transientBucket
    WHERE
        replacedByRowId = 0 AND limitingMag = 0
            AND magnitude IS NOT NULL
            AND magnitude > 0.0
            AND magnitude < 25.0
            AND transientBucketId IN (SELECT 
                transientBucketId
            FROM
                transientBucketSummaries
            WHERE
                updateNeeded = 1)
    GROUP BY transientBucketId) AS a
    ORDER BY transientBucketId) t 
SET 
    s.raDeg = t.raDeg,
    s.decDeg = t.decDeg,
    s.dateAdded = t.dateAdded,
    s.peakMagnitude = t.peakMagnitude
WHERE
    s.transientBucketId = t.transientBucketId
        AND s.updateNeeded = 1;


UPDATE transientBucketSummaries s,
    (SELECT 
        *
    FROM
        (SELECT 
        transientBucketId,
            AVG(raDeg) AS raDeg,
            AVG(decDeg) AS decDeg
    FROM
        transientBucket
    WHERE
        replacedByRowId = 0
            AND transientBucketId IN (SELECT 
                transientBucketId
            FROM
                transientBucketSummaries
            WHERE
                raDeg IS NULL AND updateNeeded = 1)
    GROUP BY transientBucketId) AS a
    ORDER BY transientBucketId) t 
SET 
    s.raDeg = t.raDeg,
    s.decDeg = t.decDeg
WHERE
    s.transientBucketId = t.transientBucketId
        AND s.updateNeeded = 1;

UPDATE transientBucketSummaries s,
    (SELECT 
        *
    FROM
        (SELECT 
        transientBucketId, MIN(hostRedshift) AS host_redshift
    FROM
        transientBucket
    WHERE
        replacedByRowId = 0
            AND hostRedshift IS NOT NULL
            AND transientBucketId IN (SELECT 
                transientBucketId
            FROM
                transientBucketSummaries
            WHERE
                updateNeeded = 1)
    GROUP BY transientBucketId) AS a
    ORDER BY transientBucketId) t 
SET 
    s.host_redshift = t.host_redshift
WHERE
    s.transientBucketId = t.transientBucketId
        AND updateNeeded = 1;


UPDATE transientBucketSummaries s,
    (SELECT 
        *
    FROM
        (SELECT 
        a.transientBucketId,
            a.observationDate AS earliestDetection,
            a.magnitude AS earliestMagnitude,
            a.filter AS earliestMagnitudeFilter,
            a.survey AS earliestMagnitudeSurvey
    FROM
        transientBucket a
    JOIN (SELECT 
        MIN(observationDate) AS minval, transientBucketId
    FROM
        transientBucket
    WHERE
        magnitude IS NOT NULL
            AND limitingMag = 0
            AND replacedByRowId = 0
            AND observationDate IS NOT NULL
            AND transientBucketId IN (SELECT 
                transientBucketId
            FROM
                transientBucketSummaries
            WHERE
                updateNeeded = 1)
    GROUP BY transientBucketId) AS b ON a.transientBucketId = b.transientBucketId
        AND a.observationDate = b.minval
    WHERE
        a.limitingMag = 0
            AND a.replacedByRowId = 0
            AND observationDate IS NOT NULL
            AND a.transientBucketId IN (SELECT 
                transientBucketId
            FROM
                transientBucketSummaries
            WHERE
                updateNeeded = 1)
    GROUP BY transientBucketId) AS c
    ORDER BY transientBucketId) t 
SET 
    s.earliestDetection = t.earliestDetection,
    s.earliestMagnitude = t.earliestMagnitude,
    s.earliestMagnitudeFilter = t.earliestMagnitudeFilter,
    s.earliestMagnitudeSurvey = t.earliestMagnitudeSurvey
WHERE
    s.transientBucketId = t.transientBucketId
        AND s.updateNeeded = 1;


UPDATE transientBucketSummaries a,
    (SELECT 
        *
    FROM
        (SELECT 
        s.transientBucketId,
            MAX(t.lastNonDetectionDate) AS lastNonDetectionDate
    FROM
        transientBucket t, transientBucketSummaries s
    WHERE
        t.lastNonDetectionDate < s.earliestDetection
            AND s.transientBucketId = t.transientBucketId
            AND replacedByRowId = 0
            AND t.transientBucketId IN (SELECT 
                transientBucketId
            FROM
                transientBucketSummaries
            WHERE
                updateNeeded = 1)
    GROUP BY s.transientBucketId) AS c
    ORDER BY transientBucketId) b 
SET 
    a.lastNonDetectionDate = b.lastNonDetectionDate
WHERE
    a.transientBucketId = b.transientBucketId
        AND a.updateNeeded = 1;
    

UPDATE transientBucketSummaries a,
    (SELECT 
        *
    FROM
        (SELECT 
        s.transientBucketId,
            MAX(t.observationDate) AS lastNonDetectionDate
    FROM
        transientBucket t, transientBucketSummaries s
    WHERE
        t.observationDate < s.earliestDetection
            AND (t.observationDate > s.lastNonDetectionDate
            OR s.lastNonDetectionDate IS NULL)
            AND s.transientBucketId = t.transientBucketId
            AND replacedByRowId = 0
            AND t.limitingMag = 1
            AND t.transientBucketId IN (SELECT 
                transientBucketId
            FROM
                transientBucketSummaries
            WHERE
                updateNeeded = 1)
    GROUP BY s.transientBucketId) AS a
    ORDER BY transientBucketId) b 
SET 
    a.lastNonDetectionDate = b.lastNonDetectionDate
WHERE
    a.transientBucketId = b.transientBucketId
        AND a.updateNeeded = 1;


UPDATE transientBucketSummaries s,
    (SELECT 
        *
    FROM
        (SELECT 
        a.transientBucketId,
            a.observationDate AS currentMagnitudeDate,
            a.magnitude AS currentMagnitude,
            a.filter AS currentMagnitudeFilter,
            a.survey AS currentMagnitudeSurvey
    FROM
        transientBucket a
    JOIN (SELECT 
        *
    FROM
        (SELECT 
        MAX(observationDate) AS maxval, transientBucketId
    FROM
        transientBucket
    WHERE
        magnitude IS NOT NULL
            AND limitingMag = 0
            AND replacedByRowId = 0
            AND observationDate IS NOT NULL
            AND transientBucketId IN (SELECT 
                transientBucketId
            FROM
                transientBucketSummaries
            WHERE
                updateNeeded = 1)
    GROUP BY transientBucketId) AS d
    ORDER BY transientBucketId) AS b ON a.transientBucketId = b.transientBucketId
        AND a.observationDate = b.maxval
    WHERE
        a.limitingMag = 0
            AND a.replacedByRowId = 0
            AND observationDate IS NOT NULL
            AND a.transientBucketId IN (SELECT 
                transientBucketId
            FROM
                transientBucketSummaries
            WHERE
                updateNeeded = 1)
    GROUP BY transientBucketId) AS c
    ORDER BY transientBucketId) t 
SET 
    s.currentMagnitudeDate = t.currentMagnitudeDate,
    s.currentMagnitude = t.currentMagnitude,
    s.currentMagnitudeFilter = t.currentMagnitudeFilter,
    s.currentMagnitudeSurvey = t.currentMagnitudeSurvey
WHERE
    s.transientBucketId = t.transientBucketId
        AND s.updateNeeded = 1;




UPDATE transientBucketSummaries s,
    (SELECT 
        *
    FROM
        (SELECT 
        a.transientBucketId,
            a.observationDate AS classificationDate,
            a.spectralType AS recentClassification,
            a.classificationWRTMax AS classificationWRTMax,
            a.classificationPhase AS classificationPhase,
            a.reducer AS classificationAddedBy,
            a.dateCreated AS classificationAddedDate,
            a.transientRedshift AS best_redshift,
            a.survey AS classificationSurvey
    FROM
        transientBucket a
    JOIN (SELECT 
        *
    FROM
        (SELECT 
        MAX(CONCAT(DATE_FORMAT(observationDate, '%Y%m%d'), dateLastModified)) AS date_index,
            transientBucketId
    FROM
        transientBucket
    WHERE
        spectralType IS NOT NULL
            AND replacedByRowId = 0
            AND observationDate IS NOT NULL
            AND transientBucketId IN (SELECT 
                transientBucketId
            FROM
                transientBucketSummaries
            WHERE
                updateNeeded = 1)
    GROUP BY transientBucketId) AS c
    ORDER BY transientBucketId) AS b ON a.transientBucketId = b.transientBucketId
        AND b.date_index = CONCAT(DATE_FORMAT(a.observationDate, '%Y%m%d'), a.dateLastModified)
    WHERE
        spectralType IS NOT NULL
            AND a.replacedByRowId = 0
            AND observationDate IS NOT NULL
            AND a.transientBucketId IN (SELECT 
                transientBucketId
            FROM
                transientBucketSummaries
            WHERE
                updateNeeded = 1)) AS d
    ORDER BY transientBucketId) t 
SET 
    s.classificationDate = t.classificationDate,
    s.recentClassification = t.recentClassification,
    s.classificationWRTMax = t.classificationWRTMax,
    s.classificationPhase = t.classificationPhase,
    s.classificationAddedBy = t.classificationAddedBy,
    s.classificationAddedDate = t.classificationAddedDate,
    s.best_redshift = t.best_redshift,
    s.classificationSurvey = t.classificationSurvey
WHERE
    s.transientBucketId = t.transientBucketId
        AND s.updateNeeded = 1;

        

UPDATE transientBucketSummaries s,
    sherlock_crossmatches c 
SET 
    s.sherlockClassification = c.association_type,
    s.separationArcsec = c.separationArcsec,
    s.distanceMpc = IF(c.direct_distance,
        c.direct_distance,
        c.distance),
    s.best_redshift = IF(s.best_redshift IS NULL,
        c.z,
        s.best_redshift),
    s.host_redshift = IF(c.z AND c.z != s.host_redshift,
        c.z,
        s.host_redshift)
WHERE
    c.rank = 1
        AND s.transientBucketId = c.transient_object_id
        AND c.transient_object_id IN (SELECT 
            *
        FROM
            (SELECT 
                transientBucketId
            FROM
                transientBucketSummaries
            WHERE
                updateNeeded = 1) AS a)
        AND s.updateNeeded = 1;


UPDATE transientBucketSummaries 
SET 
    absolutePeakMagnitude = peakMagnitude - (5 * LOG10(distanceMpc * 1000000) - 5)
WHERE
    distanceMpc IS NOT NULL
        AND peakMagnitude IS NOT NULL
        AND peakMagnitude < 24.0
        AND absolutePeakMagnitude IS NULL;
    
    

UPDATE transientBucketSummaries s 
SET 
    updateNeeded = 2
WHERE
    updateNeeded = 1;


UPDATE transientBucketSummaries t,
    pesstoObjects p 
SET 
    marshallWorkflowLocation = 'archive'
WHERE
    t.mastername LIKE 'ZTF%%'
        AND (t.currentMagnitude > 20.0
        OR ABS(t.gLat) < 10)
        AND p.transientBucketId = t.transientBucketId
        AND marshallWorkflowLocation = 'inbox';

update transientbucketsummaries set dateAdded = earliestDetection where dateAdded is null;
update transientbucketsummaries set dateAdded = now() where dateAdded is null;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
--
-- WARNING: can't read the INFORMATION_SCHEMA.libraries table. It's most probably an old server 5.5.5-10.11.14-MariaDB-0ubuntu0.24.04.1.
--
/*!50003 DROP PROCEDURE IF EXISTS `update_transientBucket_atlas_sources` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`marshall`@`localhost` PROCEDURE `update_transientBucket_atlas_sources`()
BEGIN
	
UPDATE transientBucket a
        INNER JOIN
    transientBucket b ON a.transientBucketId = b.transientBucketId 
SET 
    a.targetImageUrl = b.targetImageUrl,
    a.referenceImageUrl = b.referenceImageUrl,
    a.subtractedImageUrl = b.subtractedImageUrl
WHERE
    a.survey = 'ATLAS FP'
        AND a.targetImageUrl IS NULL
        AND a.dateCreated > NOW() -  INTERVAL 3 WEEK
        AND b.survey = 'atlas'
        AND a.targetImageUrl IS NOT NULL
        AND b.dateCreated > NOW() - INTERVAL 4 WEEK;
                

UPDATE transientBucket a
        INNER JOIN
    transientBucket b ON a.transientBucketId = b.transientBucketId 
SET 
    a.surveyObjectUrl = b.surveyObjectUrl
WHERE
    a.survey = 'ATLAS FP'
        AND (a.surveyObjectUrl IS NULL OR a.surveyObjectUrl NOT LIKE '%atlas4%')
        AND a.dateCreated > NOW() -  INTERVAL 3 WEEK
        AND b.survey = 'atlas'
        AND b.dateDeleted IS NULL
        AND a.targetImageUrl IS NOT NULL
        AND b.dateCreated > NOW() -  INTERVAL 4 WEEK;
                

update transientBucket set masterIDFlag = 1 where primaryKeyId in (
SELECT
    min(b.primaryKeyId) as newMasterPrimaryId
FROM
    transientBucket a
INNER JOIN
	transientBucket b on a.transientBucketId=b.transientBucketId
WHERE
    a.survey = 'atlas' AND a.masterIDFlag = 1
        AND a.surveyObjectURL NOT LIKE '%wis-tns%'
        AND a.dateDeleted IS NULL and
	b.survey = 'ATLAS FP' group by b.transientBucketId);
    
update 
    transientBucket a
INNER JOIN
	transientBucket b on a.transientBucketId=b.transientBucketId
set b.masterIDFlag = 0
WHERE
    a.survey = 'ATLAS FP' AND a.masterIDFlag = 1
        AND a.dateDeleted IS NULL and b.survey != 'ATLAS FP' 
	 and a.dateCreated > NOW() -  INTERVAL 3 WEEK and b.dateCreated > NOW() -  INTERVAL 3 WEEK and
	b.masterIDFlag = 1;   
                    
	
update transientBucket a
INNER JOIN
	transientBucket b on a.transientBucketId=b.transientBucketId
set b.dateDeleted = NOW(),
    b.replacedbyRowId = - 1
WHERE
    a.survey = 'ATLAS FP' AND a.masterIDFlag = 1
        AND a.dateDeleted IS NULL and b.survey = 'atlas' and b.surveyObjectURL NOT LIKE '%%wis-tns%%' and b.replacedbyRowId is null
        and a.dateCreated > NOW() -  INTERVAL 3 WEEK and b.dateCreated > NOW() -  INTERVAL 3 WEEK; 
                        
	
UPDATE transientBucket  force index (idx_dateCreated)
SET 
    surveyObjectUrl = CONCAT('https://star.pst.qub.ac.uk/sne/atlas4/candidate/',
            SUBSTRING_INDEX(SUBSTRING_INDEX(referenceImageUrl, '_', 2),
                    '/',
                    - 1))
WHERE
    survey = 'ATLAS FP'
        AND surveyObjectUrl IS NULL
        AND referenceImageUrl IS NOT NULL
        AND dateCreated > NOW() -  INTERVAL 4 WEEK;
                
	
UPDATE transientBucket t,
    fs_atlas a 
SET 
    t.surveyObjectUrl = a.objectURL
WHERE
    t.name = a.candidateId
        AND t.surveyObjectUrl IS NULL
        AND a.objectURL IS NOT NULL
        AND a.dateCreated > NOW() -  INTERVAL 3 WEEK
        AND t.dateCreated > NOW() -  INTERVAL 3 WEEK; 
        
        

UPDATE transientbucket t,
    pesstoobjects p 
SET 
    t.targetImageUrl = REPLACE(t.targetImageUrl,
        'site_media',
        'media'),
    p.atlas_target_stamp = NULL
WHERE
    t.transientBucketId = p.transientBucketId
        AND p.atlas_target_stamp = 3
        AND t.targetImageUrl LIKE '%site_media%'
        AND t.dateCreated > NOW() -  INTERVAL 3 WEEK;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
--
-- WARNING: can't read the INFORMATION_SCHEMA.libraries table. It's most probably an old server 5.5.5-10.11.14-MariaDB-0ubuntu0.24.04.1.
--
/*!50003 DROP PROCEDURE IF EXISTS `update_transientbucket_observation_dates` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`marshall`@`localhost` PROCEDURE `update_transientbucket_observation_dates`()
BEGIN
set @inLastDays = 3;
	UPDATE transientBucket set observationMJD = null where observationMJD = 0 and dateCreated > NOW() - INTERVAL @inLastDays DAY;
UPDATE transientBucket set observationMJD = observationMJD - 2400000.5 where observationMJD > 245000 and dateCreated > NOW() - INTERVAL @inLastDays DAY;

UPDATE ignore transientBucket 
SET 
    observationDate = FROM_UNIXTIME((observationMJD + 678941) * (3600 * 24) - TO_SECONDS('1970-01-01 00:00:00') + TO_SECONDS(UTC_TIMESTAMP()) - TO_SECONDS(CURRENT_TIMESTAMP()))
WHERE
    observationMJD IS NOT NULL and observationDate  is null and dateCreated > NOW() - INTERVAL @inLastDays DAY limit 50000;

UPDATE ignore transientBucket 
SET 
    observationMjd = TO_SECONDS(observationDate) / (3600 * 24) - 678941
WHERE
    observationMjd IS NULL
        AND observationDate IS NOT NULL and dateCreated > NOW() - INTERVAL @inLastDays DAY limit 50000;
        
DELETE FROM `transientbucket` WHERE observationMjd is null and dateCreated < DATE_SUB(now(), INTERVAL 10 minute) and dateCreated > NOW() - INTERVAL @inLastDays DAY;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
--
-- WARNING: can't read the INFORMATION_SCHEMA.libraries table. It's most probably an old server 5.5.5-10.11.14-MariaDB-0ubuntu0.24.04.1.
--
/*!50003 DROP PROCEDURE IF EXISTS `update_transients_with_no_masteridflag` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`marshall`@`localhost` PROCEDURE `update_transients_with_no_masteridflag`()
BEGIN

update  transientBucket A
INNER JOIN
(select transientBucketId from transientBucket
    WHERE
        masterIDFlag = 1
        and replacedByRowId = 0
        and dateLastModified > NOW() -  INTERVAL 3 WEEK
GROUP BY transientBucketId having count(*) > 1) B on A.transientBucketId=B.transientBucketId set A.masterIDFlag = 0 where A.masterIDFlag=1;


update transientBucket set masterIDFlag  = 0 where masterIDFlag  = 1 and replacedByRowId != 0;


 update transientBucket c
INNER JOIN
(SELECT 
    primaryKeyId
FROM
    transientBucket a
        LEFT JOIN
    (SELECT 
        distinct transientBucketId
    FROM
        transientBucket
    WHERE
        masterIDFlag = 1 AND replacedByRowId = 0) b ON (a.transientBucketId = b.transientBucketId)
WHERE
    b.transientBucketId IS NULL and a.replacedByRowId = 0 and a.dateCreated > NOW() -  INTERVAL 1 WEEK group by a.transientBucketId) d on c.primaryKeyId=d.primaryKeyId
    set c.masterIdFlag = 1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
--
-- WARNING: can't read the INFORMATION_SCHEMA.libraries table. It's most probably an old server 5.5.5-10.11.14-MariaDB-0ubuntu0.24.04.1.
--
/*!50003 DROP PROCEDURE IF EXISTS `update_transient_akas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`marshall`@`localhost` PROCEDURE `update_transient_akas`(IN weeks INT)
BEGIN


SET weeks = IFNULL(weeks, 3);

if weeks = 0 then
	
	INSERT IGNORE INTO marshall_transient_akas (transientBucketId, name, addedDate)
	select transientBucketId, name, min(dateCreated) as addedDate from transientBucket  FORCE INDEX (idx_dateCreated)  where name not like "atel_%" group by transientbucketid, name;
else
	
	INSERT IGNORE INTO marshall_transient_akas (transientBucketId, name, addedDate)
	select transientBucketId, name, min(dateCreated) as addedDate from transientBucket  FORCE INDEX (idx_dateCreated)  where name not like "atel_%" and dateCreated > NOW() -  INTERVAL weeks WEEK group by transientbucketid, name;
end if;



update marshall_transient_akas c
inner join 
(select a.primaryId, min(a.addedDate) from marshall_transient_akas a
LEFT JOIN (select * from marshall_transient_akas where master = 1 and name like "SN2%") b
on a.transientBucketId=b.transientBucketId
where b.transientBucketId is null 
and a.name like "SN2%" 
and a.master = 0
group by a.transientBucketId) d on c.primaryId=d.primaryId
set c.master = 1;


update marshall_transient_akas c
inner join 
(select a.primaryId, min(a.addedDate) from marshall_transient_akas a
LEFT JOIN (select * from marshall_transient_akas where master = 1 and (name like "SN2%" or name like "AT2%")) b
on a.transientBucketId=b.transientBucketId
where b.transientBucketId is null 
and a.name like "AT2%" 
and a.master = 0
group by a.transientBucketId) d on c.primaryId=d.primaryId
set c.master = 1;


update marshall_transient_akas a
INNER JOIN marshall_transient_akas b
on b.transientBucketId=a.transientBucketId
set a.master = 0
where a.name not like "SN2%" and a.master = 1
and b.name like "SN2%" and a.master = 1;


update marshall_transient_akas a
INNER JOIN marshall_transient_akas b
on b.transientBucketId=a.transientBucketId
set a.hidden = 1
where replace(a.name,"AT","SN")=b.name
and a.name like "AT2%";


update marshall_transient_akas a
INNER JOIN marshall_transient_akas b
on b.transientBucketId=a.transientBucketId
set a.master = 0
where (a.name not like "SN2%" and a.name not like "AT2%") and a.master = 1
and (b.name like "SN2%" or b.name  like "AT2%") and a.master = 1;


set @countAka = (select count(*) from (select a.primaryId, min(a.addedDate) from marshall_transient_akas a
LEFT JOIN (select * from marshall_transient_akas where master = 1) b
on a.transientBucketId=b.transientBucketId
where b.transientBucketId is null 
and a.master = 0
group by a.transientBucketId) d);


if @countAka > 0 then
update marshall_transient_akas c
inner join 
(select a.primaryId, min(a.addedDate) from marshall_transient_akas a
LEFT JOIN (select * from marshall_transient_akas where master = 1) b
on a.transientBucketId=b.transientBucketId
where b.transientBucketId is null 
and a.master = 0
group by a.transientBucketId) d on c.primaryId=d.primaryId
set c.master = 1;
end if;


update fs_atlas_forced_phot a, marshall_transient_akas m set m.url = CONCAT('https://star.pst.qub.ac.uk/sne/atlas4/candidate/', a.atlas_object_id) where m.transientBucketId = a.transientBucketId and m.name like "ATLAS%" and m.url is null;


update  
        marshall_transient_akas a, transientBucket t
set t.surveyObjectUrl=a.url
WHERE
    t.surveyObjectUrl IS NULL
    and a.url is not null
        AND t.transientbucketId = a.transientbucketId
        AND a.name = t.name
        and a.name like "ATLAS%" and a.addedDate > DATE_SUB(curdate(), INTERVAL 3 WEEK);


update marshall_transient_akas set url = concat("https://lasair-ztf.lsst.ac.uk/objects/",name) where name like "ZTF%" and url is null;
update marshall_transient_akas set url = concat("https://www.wis-tns.org/object/",name) where (name like "AT20%" or name like "AT19%" or name like "SN19%" or name like "SN20%") and url is null;


UPDATE marshall_transient_akas a
        INNER JOIN
    transientBucket t ON a.transientBucketId = t.transientBucketId 
SET 
    a.url = t.surveyObjectUrl
WHERE
    a.name = t.name AND a.url IS NULL
        AND a.name LIKE 'LSQ%' 
        AND t.surveyObjectUrl LIKE '%nersc%';


UPDATE marshall_transient_akas a
        INNER JOIN
    transientBucket t ON a.transientBucketId = t.transientBucketId 
SET 
    a.url = t.surveyObjectUrl
WHERE
    a.name = t.name AND a.url IS NULL
        AND (a.name LIKE 'PS1%' OR a.name LIKE 'PS2%')
        AND t.surveyObjectUrl LIKE '%star.pst%';


UPDATE marshall_transient_akas a
        INNER JOIN
    transientBucket t ON a.transientBucketId = t.transientBucketId 
SET 
    a.url = t.surveyObjectUrl
WHERE
    a.name = t.name AND a.url IS NULL
        AND a.name LIKE 'ATLAS%' 
        AND t.surveyObjectUrl LIKE '%star.pst%';
    

UPDATE marshall_transient_akas a
        INNER JOIN
    transientBucket t ON a.transientBucketId = t.transientBucketId 
SET 
    a.url = t.surveyObjectUrl
WHERE
    a.name = t.name AND a.url IS NULL
        AND (a.name LIKE 'CSS%' OR a.name LIKE 'MLS%' OR a.name LIKE 'SSS%')
        AND t.surveyObjectUrl LIKE '%nesssi%';
    

UPDATE marshall_transient_akas a
        INNER JOIN
    transientBucket t ON a.transientBucketId = t.transientBucketId 
SET 
    a.url = t.surveyObjectUrl
WHERE
    a.name = t.name AND a.url IS NULL
        AND a.name LIKE 'PSN%' 
        AND t.surveyObjectUrl LIKE '%cbat%';

update marshall_transient_akas set url = concat("http://gsaweb.ast.cam.ac.uk/alerts/alert/",name) where name like "Gaia%" and url is null;
update marshall_transient_akas set url = "http://www.astronomy.ohio-state.edu/asassn/sn_list.html" where (name like "ASASSN-1%" and name not like "ASASSN-19%") and url is null;
update marshall_transient_akas set url = "http://ogle.astrouw.edu.pl/ogle4/transients/" where name like "OGLE%" and url is null;



UPDATE marshall_transient_akas c,
    (SELECT 
        a.name,
		REGEXP_REPLACE(b.name, '^(SN|AT)', 'http://asassn.china-vo.org/public/lc?dir=') AS url
    FROM
        marshall_transient_akas a
    INNER JOIN marshall_transient_akas b ON a.transientBucketId = b.transientBucketId
    WHERE
        b.name RLIKE '^(SN|AT)2'
            AND a.name RLIKE '^ASASSN-(19|2)'
            AND b.name NOT RLIKE '^.*19(a|b)') d 
SET 
    c.url = d.url
WHERE
    c.name = d.name;


update marshall_transient_akas set url = replace(url,"object/AT","object/") where url like "%object/AT%";
update marshall_transient_akas set url = replace(url,"object/SN","object/") where url like "%object/SN%";

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `_subview_object_akas`
--

/*!50001 DROP VIEW IF EXISTS `_subview_object_akas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`marshall`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `_subview_object_akas` AS select 1 AS `transientBucketId`,1 AS `primaryKeyId`,1 AS `name`,1 AS `survey`,1 AS `surveyObjectUrl`,1 AS `referenceImageUrl`,1 AS `targetImageUrl`,1 AS `subtractedImageUrl`,1 AS `tripletImageUrl`,1 AS `finderImageUrl` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lvk_events`
--

/*!50001 DROP VIEW IF EXISTS `lvk_events`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`marshall`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lvk_events` AS (select `a`.`superevent_id` AS `superevent_id`,`b`.`significant` AS `significant`,`a`.`alert_type` AS `latest_alert`,`a`.`alert_time` AS `alert_time`,`a`.`alert_delta_sec` AS `alert_delta_sec`,`b`.`date_obs` AS `date_obs`,`b`.`mjd_obs` AS `mjd_obs`,`b`.`far_hz` AS `far_hz`,`b`.`far_years` AS `far_years`,`b`.`distmean` AS `distmean`,`b`.`diststd` AS `diststd`,`b`.`class_bbh` AS `class_bbh`,`b`.`class_bns` AS `class_bns`,`b`.`class_nsbh` AS `class_nsbh`,`b`.`class_terrestrial` AS `class_terrestrial`,`b`.`prop_hasns` AS `prop_hasns`,`b`.`prop_hasremnant` AS `prop_hasremnant`,`b`.`prop_hasmassgap` AS `prop_hasmassgap`,`b`.`area10` AS `area10`,`b`.`area50` AS `area50`,`b`.`area90` AS `area90` from ((select `lvk_alerts`.`primaryId` AS `primaryId`,`lvk_alerts`.`superevent_id` AS `superevent_id`,`lvk_alerts`.`significant` AS `significant`,`lvk_alerts`.`alert_type` AS `alert_type`,`lvk_alerts`.`alert_time` AS `alert_time`,`lvk_alerts`.`alert_delta_sec` AS `alert_delta_sec`,`lvk_alerts`.`date_obs` AS `date_obs`,`lvk_alerts`.`mjd_obs` AS `mjd_obs`,`lvk_alerts`.`far_hz` AS `far_hz`,`lvk_alerts`.`far_years` AS `far_years`,`lvk_alerts`.`distmean` AS `distmean`,`lvk_alerts`.`diststd` AS `diststd`,`lvk_alerts`.`class_bbh` AS `class_bbh`,`lvk_alerts`.`class_bns` AS `class_bns`,`lvk_alerts`.`class_nsbh` AS `class_nsbh`,`lvk_alerts`.`class_terrestrial` AS `class_terrestrial`,`lvk_alerts`.`prop_hasns` AS `prop_hasns`,`lvk_alerts`.`prop_hasremnant` AS `prop_hasremnant`,`lvk_alerts`.`prop_hasmassgap` AS `prop_hasmassgap`,`lvk_alerts`.`area10` AS `area10`,`lvk_alerts`.`area50` AS `area50`,`lvk_alerts`.`area90` AS `area90`,`lvk_alerts`.`creator` AS `creator`,`lvk_alerts`.`ra_centre` AS `ra_centre`,`lvk_alerts`.`dec_centre` AS `dec_centre`,`lvk_alerts`.`group` AS `group`,`lvk_alerts`.`logbci` AS `logbci`,`lvk_alerts`.`logbsn` AS `logbsn`,`lvk_alerts`.`pipeline` AS `pipeline`,`lvk_alerts`.`search` AS `search`,`lvk_alerts`.`map` AS `map`,`lvk_alerts`.`dateAdded` AS `dateAdded`,`lvk_alerts`.`dateLastModified` AS `dateLastModified`,`lvk_alerts`.`dateLastMatched` AS `dateLastMatched` from (`lvk_alerts` join (select `lvk_alerts`.`superevent_id` AS `superevent_id`,max(`lvk_alerts`.`alert_time`) AS `alert_time` from `lvk_alerts` group by `lvk_alerts`.`superevent_id`) `latest_alert`) where `lvk_alerts`.`superevent_id` = `latest_alert`.`superevent_id` and `lvk_alerts`.`alert_time` = `latest_alert`.`alert_time`) `a` join (select `lvk_alerts`.`primaryId` AS `primaryId`,`lvk_alerts`.`superevent_id` AS `superevent_id`,`lvk_alerts`.`significant` AS `significant`,`lvk_alerts`.`alert_type` AS `alert_type`,`lvk_alerts`.`alert_time` AS `alert_time`,`lvk_alerts`.`alert_delta_sec` AS `alert_delta_sec`,`lvk_alerts`.`date_obs` AS `date_obs`,`lvk_alerts`.`mjd_obs` AS `mjd_obs`,`lvk_alerts`.`far_hz` AS `far_hz`,`lvk_alerts`.`far_years` AS `far_years`,`lvk_alerts`.`distmean` AS `distmean`,`lvk_alerts`.`diststd` AS `diststd`,`lvk_alerts`.`class_bbh` AS `class_bbh`,`lvk_alerts`.`class_bns` AS `class_bns`,`lvk_alerts`.`class_nsbh` AS `class_nsbh`,`lvk_alerts`.`class_terrestrial` AS `class_terrestrial`,`lvk_alerts`.`prop_hasns` AS `prop_hasns`,`lvk_alerts`.`prop_hasremnant` AS `prop_hasremnant`,`lvk_alerts`.`prop_hasmassgap` AS `prop_hasmassgap`,`lvk_alerts`.`area10` AS `area10`,`lvk_alerts`.`area50` AS `area50`,`lvk_alerts`.`area90` AS `area90`,`lvk_alerts`.`creator` AS `creator`,`lvk_alerts`.`ra_centre` AS `ra_centre`,`lvk_alerts`.`dec_centre` AS `dec_centre`,`lvk_alerts`.`group` AS `group`,`lvk_alerts`.`logbci` AS `logbci`,`lvk_alerts`.`logbsn` AS `logbsn`,`lvk_alerts`.`pipeline` AS `pipeline`,`lvk_alerts`.`search` AS `search`,`lvk_alerts`.`map` AS `map`,`lvk_alerts`.`dateAdded` AS `dateAdded`,`lvk_alerts`.`dateLastModified` AS `dateLastModified`,`lvk_alerts`.`dateLastMatched` AS `dateLastMatched` from (`lvk_alerts` join (select `lvk_alerts`.`superevent_id` AS `superevent_id`,max(`lvk_alerts`.`alert_time`) AS `alert_time` from `lvk_alerts` where `lvk_alerts`.`alert_type` <> 'RETRACTION' group by `lvk_alerts`.`superevent_id`) `latest_alert`) where `lvk_alerts`.`superevent_id` = `latest_alert`.`superevent_id` and `lvk_alerts`.`alert_time` = `latest_alert`.`alert_time`) `b`) where `a`.`superevent_id` = `b`.`superevent_id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vview_fs_crts_css_summary`
--

/*!50001 DROP VIEW IF EXISTS `vview_fs_crts_css_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`marshall`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vview_fs_crts_css_summary` AS select `fs_crts_css`.`primaryId` AS `primaryId`,`fs_crts_css`.`circularUrl` AS `circularUrl`,`fs_crts_css`.`comment` AS `comment`,`fs_crts_css`.`commentIngested` AS `commentIngested`,`fs_crts_css`.`dateCreated` AS `dateCreated`,`fs_crts_css`.`dateLastModified` AS `dateLastModified`,`fs_crts_css`.`dateLastRead` AS `dateLastRead`,`fs_crts_css`.`decDeg` AS `decDeg`,`fs_crts_css`.`filter` AS `filter`,`fs_crts_css`.`finderChartUrl` AS `finderChartUrl`,`fs_crts_css`.`finderChartWebpage` AS `finderChartWebpage`,`fs_crts_css`.`imagesUrl` AS `imagesUrl`,`fs_crts_css`.`ingested` AS `ingested`,`fs_crts_css`.`lightcurveUrl` AS `lightcurveUrl`,`fs_crts_css`.`mag` AS `mag`,`fs_crts_css`.`name` AS `name`,`fs_crts_css`.`observationDate` AS `observationDate`,`fs_crts_css`.`observationMJD` AS `observationMJD`,`fs_crts_css`.`raDeg` AS `raDeg`,`fs_crts_css`.`summaryRow` AS `summaryRow`,`fs_crts_css`.`survey` AS `survey`,`fs_crts_css`.`surveyObjectUrl` AS `surveyObjectUrl`,`fs_crts_css`.`targetImageUrl` AS `targetImageUrl`,`fs_crts_css`.`transientTypePrediction` AS `transientTypePrediction`,`fs_crts_css`.`uniqueId` AS `uniqueId`,`fs_crts_css`.`htm16ID` AS `htm16ID`,`fs_crts_css`.`magErr` AS `magErr`,`fs_crts_css`.`lastNonDetectionDate` AS `lastNonDetectionDate`,`fs_crts_css`.`lastNonDetectionMJD` AS `lastNonDetectionMJD` from `fs_crts_css` where `fs_crts_css`.`summaryRow` is true */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vview_fs_crts_mls_summary`
--

/*!50001 DROP VIEW IF EXISTS `vview_fs_crts_mls_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`marshall`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vview_fs_crts_mls_summary` AS select `fs_crts_mls`.`primaryId` AS `primaryId`,`fs_crts_mls`.`circularUrl` AS `circularUrl`,`fs_crts_mls`.`comment` AS `comment`,`fs_crts_mls`.`commentIngested` AS `commentIngested`,`fs_crts_mls`.`dateCreated` AS `dateCreated`,`fs_crts_mls`.`dateLastModified` AS `dateLastModified`,`fs_crts_mls`.`dateLastRead` AS `dateLastRead`,`fs_crts_mls`.`decDeg` AS `decDeg`,`fs_crts_mls`.`filter` AS `filter`,`fs_crts_mls`.`finderChartUrl` AS `finderChartUrl`,`fs_crts_mls`.`finderChartWebpage` AS `finderChartWebpage`,`fs_crts_mls`.`imagesUrl` AS `imagesUrl`,`fs_crts_mls`.`ingested` AS `ingested`,`fs_crts_mls`.`lightcurveUrl` AS `lightcurveUrl`,`fs_crts_mls`.`mag` AS `mag`,`fs_crts_mls`.`name` AS `name`,`fs_crts_mls`.`observationDate` AS `observationDate`,`fs_crts_mls`.`observationMJD` AS `observationMJD`,`fs_crts_mls`.`raDeg` AS `raDeg`,`fs_crts_mls`.`summaryRow` AS `summaryRow`,`fs_crts_mls`.`survey` AS `survey`,`fs_crts_mls`.`surveyObjectUrl` AS `surveyObjectUrl`,`fs_crts_mls`.`targetImageUrl` AS `targetImageUrl`,`fs_crts_mls`.`transientTypePrediction` AS `transientTypePrediction`,`fs_crts_mls`.`uniqueId` AS `uniqueId`,`fs_crts_mls`.`htm16ID` AS `htm16ID`,`fs_crts_mls`.`magErr` AS `magErr`,`fs_crts_mls`.`lastNonDetectionDate` AS `lastNonDetectionDate`,`fs_crts_mls`.`lastNonDetectionMJD` AS `lastNonDetectionMJD` from `fs_crts_mls` where `fs_crts_mls`.`summaryRow` is true */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vview_fs_crts_sss_summary`
--

/*!50001 DROP VIEW IF EXISTS `vview_fs_crts_sss_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`marshall`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vview_fs_crts_sss_summary` AS select `fs_crts_sss`.`primaryId` AS `primaryId`,`fs_crts_sss`.`circularUrl` AS `circularUrl`,`fs_crts_sss`.`comment` AS `comment`,`fs_crts_sss`.`commentIngested` AS `commentIngested`,`fs_crts_sss`.`dateCreated` AS `dateCreated`,`fs_crts_sss`.`dateLastModified` AS `dateLastModified`,`fs_crts_sss`.`dateLastRead` AS `dateLastRead`,`fs_crts_sss`.`decDeg` AS `decDeg`,`fs_crts_sss`.`filter` AS `filter`,`fs_crts_sss`.`finderChartUrl` AS `finderChartUrl`,`fs_crts_sss`.`finderChartWebpage` AS `finderChartWebpage`,`fs_crts_sss`.`imagesUrl` AS `imagesUrl`,`fs_crts_sss`.`ingested` AS `ingested`,`fs_crts_sss`.`lightcurveUrl` AS `lightcurveUrl`,`fs_crts_sss`.`mag` AS `mag`,`fs_crts_sss`.`name` AS `name`,`fs_crts_sss`.`observationDate` AS `observationDate`,`fs_crts_sss`.`observationMJD` AS `observationMJD`,`fs_crts_sss`.`raDeg` AS `raDeg`,`fs_crts_sss`.`summaryRow` AS `summaryRow`,`fs_crts_sss`.`survey` AS `survey`,`fs_crts_sss`.`surveyObjectUrl` AS `surveyObjectUrl`,`fs_crts_sss`.`targetImageUrl` AS `targetImageUrl`,`fs_crts_sss`.`transientTypePrediction` AS `transientTypePrediction`,`fs_crts_sss`.`uniqueId` AS `uniqueId`,`fs_crts_sss`.`htm16ID` AS `htm16ID`,`fs_crts_sss`.`magErr` AS `magErr`,`fs_crts_sss`.`lastNonDetectionDate` AS `lastNonDetectionDate`,`fs_crts_sss`.`lastNonDetectionMJD` AS `lastNonDetectionMJD` from `fs_crts_sss` where `fs_crts_sss`.`summaryRow` is true */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vview_fs_ogle_summary`
--

/*!50001 DROP VIEW IF EXISTS `vview_fs_ogle_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`marshall`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vview_fs_ogle_summary` AS select `fs_ogle`.`primaryId` AS `primaryId`,`fs_ogle`.`dateCreated` AS `dateCreated`,`fs_ogle`.`dateLastModified` AS `dateLastModified`,`fs_ogle`.`dateLastRead` AS `dateLastRead`,`fs_ogle`.`decDeg` AS `decDeg`,`fs_ogle`.`filter` AS `filter`,`fs_ogle`.`ingested` AS `ingested`,`fs_ogle`.`lastNonDetectionDate` AS `lastNonDetectionDate`,`fs_ogle`.`lastNonDetectionMJD` AS `lastNonDetectionMJD`,`fs_ogle`.`lightcurveUrl` AS `lightcurveUrl`,`fs_ogle`.`mag` AS `mag`,`fs_ogle`.`name` AS `name`,`fs_ogle`.`observationDate` AS `observationDate`,`fs_ogle`.`observationMJD` AS `observationMJD`,`fs_ogle`.`raDeg` AS `raDeg`,`fs_ogle`.`referenceFitsUrl` AS `referenceFitsUrl`,`fs_ogle`.`referenceImageUrl` AS `referenceImageUrl`,`fs_ogle`.`subtractedFitsUrl` AS `subtractedFitsUrl`,`fs_ogle`.`subtractedImageUrl` AS `subtractedImageUrl`,`fs_ogle`.`summaryRow` AS `summaryRow`,`fs_ogle`.`survey` AS `survey`,`fs_ogle`.`surveyObjectUrl` AS `surveyObjectUrl`,`fs_ogle`.`targetFitsUrl` AS `targetFitsUrl`,`fs_ogle`.`targetImageUrl` AS `targetImageUrl`,`fs_ogle`.`transientTypePrediction` AS `transientTypePrediction`,`fs_ogle`.`htm16ID` AS `htm16ID` from `fs_ogle` where `fs_ogle`.`summaryRow` is true */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vview_object_akas`
--

/*!50001 DROP VIEW IF EXISTS `vview_object_akas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`marshall`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vview_object_akas` AS select `_subview_object_akas`.`transientBucketId` AS `transientBucketId`,`_subview_object_akas`.`primaryKeyId` AS `primaryKeyId`,`_subview_object_akas`.`name` AS `name`,`_subview_object_akas`.`survey` AS `survey`,`_subview_object_akas`.`surveyObjectUrl` AS `surveyObjectUrl`,`_subview_object_akas`.`referenceImageUrl` AS `referenceImageUrl`,`_subview_object_akas`.`targetImageUrl` AS `targetImageUrl`,`_subview_object_akas`.`subtractedImageUrl` AS `subtractedImageUrl`,`_subview_object_akas`.`tripletImageUrl` AS `tripletImageUrl`,`_subview_object_akas`.`finderImageUrl` AS `finderImageUrl` from `_subview_object_akas` group by `_subview_object_akas`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vview_object_temporal_data`
--

/*!50001 DROP VIEW IF EXISTS `vview_object_temporal_data`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`marshall`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vview_object_temporal_data` AS select `transientbucket`.`transientBucketId` AS `transientBucketId`,`transientbucket`.`name` AS `name`,`transientbucket`.`survey` AS `survey`,`transientbucket`.`observationDate` AS `observationDate`,`transientbucket`.`observationMJD` AS `observationMJD`,`transientbucket`.`magnitude` AS `magnitude`,`transientbucket`.`magnitudeError` AS `magnitudeError`,`transientbucket`.`filter` AS `filter`,`transientbucket`.`surveyObjectUrl` AS `surveyObjectUrl`,`transientbucket`.`referenceImageUrl` AS `referenceImageUrl`,`transientbucket`.`targetImageUrl` AS `targetImageUrl`,`transientbucket`.`subtractedImageUrl` AS `subtractedImageUrl`,`transientbucket`.`tripletImageUrl` AS `tripletImageUrl`,`transientbucket`.`telescope` AS `telescope`,`transientbucket`.`instrument` AS `instrument` from `transientbucket` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vview_objectredshifts`
--

/*!50001 DROP VIEW IF EXISTS `vview_objectredshifts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`marshall`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vview_objectredshifts` AS select `transientbucket`.`transientBucketId` AS `transientBucketId`,`transientbucket`.`transientRedshift` AS `transientRedshift` from `transientbucket` where `transientbucket`.`transientRedshift` is not null group by `transientbucket`.`transientBucketId` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vview_objectspectraltypes`
--

/*!50001 DROP VIEW IF EXISTS `vview_objectspectraltypes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`marshall`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vview_objectspectraltypes` AS select `transientbucket`.`transientBucketId` AS `transientBucketId`,`transientbucket`.`spectralType` AS `spectralType` from `transientbucket` where `transientbucket`.`spectralType` is not null group by `transientbucket`.`transientBucketId` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vview_tns_photometry_discoveries`
--

/*!50001 DROP VIEW IF EXISTS `vview_tns_photometry_discoveries`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`marshall`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vview_tns_photometry_discoveries` AS select distinct `s`.`raDeg` AS `raDeg`,`s`.`decDeg` AS `decDeg`,`p`.`objectName` AS `objectName`,`p`.`survey` AS `survey`,`p`.`suggestedType` AS `suggestedType`,`s`.`hostRedshift` AS `hostRedshift` from (`tns_sources` `s` join `tns_photometry` `p`) where `s`.`TNSId` = `p`.`TNSId` and `p`.`objectName` is not null */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vview_transientbucketmaster`
--

/*!50001 DROP VIEW IF EXISTS `vview_transientbucketmaster`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`marshall`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vview_transientbucketmaster` AS select `transientbucket`.`primaryKeyId` AS `primaryKeyId`,`transientbucket`.`transientBucketId` AS `transientBucketId`,`transientbucket`.`masterIDFlag` AS `masterIDFlag`,`transientbucket`.`name` AS `name`,`transientbucket`.`survey` AS `survey`,`transientbucket`.`raDeg` AS `raDeg`,`transientbucket`.`decDeg` AS `decDeg`,`transientbucket`.`raDegErr` AS `raDegErr`,`transientbucket`.`decDegErr` AS `decDegErr`,`transientbucket`.`observationDate` AS `observationDate`,`transientbucket`.`observationMJD` AS `observationMJD`,`transientbucket`.`magnitude` AS `magnitude`,`transientbucket`.`magnitudeError` AS `magnitudeError`,`transientbucket`.`filter` AS `filter`,`transientbucket`.`transientRedshift` AS `transientRedshift`,`transientbucket`.`transientRedshiftNotes` AS `transientRedshiftNotes`,`transientbucket`.`spectralType` AS `spectralType`,`transientbucket`.`discoveryPhase` AS `discoveryPhase`,`transientbucket`.`dateCreated` AS `dateCreated`,`transientbucket`.`dateLastModified` AS `dateLastModified`,`transientbucket`.`surveyObjectUrl` AS `surveyObjectUrl`,`transientbucket`.`transientTypePrediction` AS `transientTypePrediction`,`transientbucket`.`transientTypePredicationSource` AS `transientTypePredicationSource`,`transientbucket`.`hostRedshift` AS `hostRedshift`,`transientbucket`.`hostRedshiftType` AS `hostRedshiftType`,`transientbucket`.`referenceImageUrl` AS `referenceImageUrl`,`transientbucket`.`targetImageUrl` AS `targetImageUrl`,`transientbucket`.`subtractedImageUrl` AS `subtractedImageUrl`,`transientbucket`.`tripletImageUrl` AS `tripletImageUrl`,`transientbucket`.`htm20ID` AS `htm20ID`,`transientbucket`.`htm16ID` AS `htm16ID`,`transientbucket`.`cx` AS `cx`,`transientbucket`.`cy` AS `cy`,`transientbucket`.`cz` AS `cz`,`transientbucket`.`telescope` AS `telescope`,`transientbucket`.`instrument` AS `instrument`,`transientbucket`.`reducer` AS `reducer`,`transientbucket`.`lastNonDetectionDate` AS `lastNonDetectionDate`,`transientbucket`.`lastNonDetectionMJD` AS `lastNonDetectionMJD`,`transientbucket`.`dateLastRead` AS `dateLastRead`,`transientbucket`.`finderImageUrl` AS `finderImageUrl`,`transientbucket`.`lightcurveURL` AS `lightcurveURL` from `transientbucket` where `transientbucket`.`masterIDFlag` = 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vview_wiserep_object_summaries`
--

/*!50001 DROP VIEW IF EXISTS `vview_wiserep_object_summaries`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`marshall`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vview_wiserep_object_summaries` AS (select `master`.`transientBucketId` AS `transientBucketId`,`master`.`name` AS `name`,`master`.`survey` AS `survey`,`master`.`raDeg` AS `raDeg`,`master`.`decDeg` AS `decDeg`,`spec`.`spectralType` AS `spectralType`,`z`.`transientRedshift` AS `transientRedshift` from ((`transientbucket` `master` left join `vview_objectspectraltypes` `spec` on(`spec`.`transientBucketId` = `master`.`transientBucketId` or `spec`.`transientBucketId` is null)) left join `vview_objectredshifts` `z` on(`z`.`transientBucketId` = `master`.`transientBucketId` or `z`.`transientBucketId` is null)) where `master`.`masterIDFlag` = 1 and (`z`.`transientRedshift` is not null or `spec`.`spectralType` is not null)) */;
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

-- Dump completed on 2026-09-25 14:36:50
