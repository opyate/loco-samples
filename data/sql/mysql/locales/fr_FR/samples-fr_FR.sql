
-- Loco sql export - MySQL - INSERT/UPDATE statements
-- Project: Samples
-- Release: Working version
-- Modules: All
-- Locale: fr_FR, French
-- Exported at: Mon, 28 May 2012 18:19:17 +0100
-- Exported by: Tim Whitlock 

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;

/* -- Example schema
 CREATE TABLE `loco_samples` (
  `id` VARCHAR(50) NOT NULL COMMENT 'Developer key',
  `en_GB` BLOB NOT NULL COMMENT 'English (UK)',
  `fr_FR` BLOB NOT NULL COMMENT 'French',
  -- more locales ..
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
*/

INSERT INTO `loco_samples` (`id`,`en_GB`,`fr_FR`) VALUES ('hello-world','Hello World','Bonjour tout le monde') ON DUPLICATE KEY UPDATE `en_GB` = VALUES(`en_GB`),`fr_FR` = VALUES(`fr_FR`);
INSERT INTO `loco_samples` (`id`,`en_GB`,`fr_FR`) VALUES ('goodbye','Goodbye','Au revoir') ON DUPLICATE KEY UPDATE `en_GB` = VALUES(`en_GB`),`fr_FR` = VALUES(`fr_FR`);
 
SET character_set_client = @saved_cs_client;
