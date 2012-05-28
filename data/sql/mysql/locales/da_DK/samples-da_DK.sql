
-- Loco sql export - MySQL - INSERT/UPDATE statements
-- Project: Samples
-- Release: Working version
-- Modules: All
-- Locale: da_DK, Danish
-- Exported at: Mon, 28 May 2012 18:19:19 +0100
-- Exported by: Tim Whitlock 

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;

/* -- Example schema
 CREATE TABLE `loco_samples` (
  `id` VARCHAR(50) NOT NULL COMMENT 'Developer key',
  `en_GB` BLOB NOT NULL COMMENT 'English (UK)',
  `da_DK` BLOB NOT NULL COMMENT 'Danish',
  -- more locales ..
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
*/

INSERT INTO `loco_samples` (`id`,`en_GB`,`da_DK`) VALUES ('hello-world','Hello World','Hej Verden') ON DUPLICATE KEY UPDATE `en_GB` = VALUES(`en_GB`),`da_DK` = VALUES(`da_DK`);
INSERT INTO `loco_samples` (`id`,`en_GB`,`da_DK`) VALUES ('goodbye','Goodbye','Farvel') ON DUPLICATE KEY UPDATE `en_GB` = VALUES(`en_GB`),`da_DK` = VALUES(`da_DK`);
 
SET character_set_client = @saved_cs_client;
