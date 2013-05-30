
-- Loco sql export: MySQL inserts
-- Project: Samples
-- Release: Working copy
-- Tagged: All
-- Locale: fr_FR, French
-- Exported at: Thu, 30 May 2013 16:50:13 +0100
-- Exported by: Tim Whitlock 

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;

/* -- Example schema
 CREATE TABLE `loco_samples` (
  `id` VARCHAR(50) NOT NULL COMMENT 'Asset ID', 
  `fr_FR` BLOB NOT NULL COMMENT 'French', 
  PRIMARY KEY  (`id`),
  INDEX `source` (`fr_FR` (255) )
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
*/

INSERT INTO `loco_samples` (`id`,`fr_FR`) VALUES ('hello-world','Bonjour tout le monde') ON DUPLICATE KEY UPDATE `fr_FR`=VALUES(`fr_FR`);
INSERT INTO `loco_samples` (`id`,`fr_FR`) VALUES ('goodbye','Au revoir') ON DUPLICATE KEY UPDATE `fr_FR`=VALUES(`fr_FR`);
 

SET character_set_client = @saved_cs_client;
