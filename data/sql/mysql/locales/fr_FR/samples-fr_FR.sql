
-- Loco sql export - MySQL - REPLACE statements
-- Project: Samples
-- Release: Working version
-- Tagged: All
-- Locale: fr_FR, French
-- Exported at: Mon, 13 Aug 2012 16:55:43 +0100
-- Exported by: Tim Whitlock 

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;

/* -- Example schema
 CREATE TABLE `loco_samples` (
  `id` VARCHAR(50) NOT NULL COMMENT 'Asset ID',
  `en_GB` BLOB NOT NULL COMMENT 'English (UK)',
  `fr_FR` BLOB NOT NULL COMMENT 'French',
  PRIMARY KEY  (`id`),
  INDEX `native` (`en_GB` (255) )
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
*/

INSERT INTO `loco_samples` (`id`,`en_GB`,`fr_FR`) VALUES ('hello-world','Hello World','Bonjour tout le monde') ON DUPLICATE KEY UPDATE `en_GB`=VALUES(`en_GB`),`fr_FR`=VALUES(`fr_FR`);
INSERT INTO `loco_samples` (`id`,`en_GB`,`fr_FR`) VALUES ('goodbye','Goodbye','Au revoir') ON DUPLICATE KEY UPDATE `en_GB`=VALUES(`en_GB`),`fr_FR`=VALUES(`fr_FR`);
 

SET character_set_client = @saved_cs_client;
