
-- Loco sql export - MySQL - INSERT/UPDATE statements
-- Project: Samples
-- Release: Working version
-- Modules: All
-- Locale: sv_SE, Swedish
-- Exported at: Mon, 28 May 2012 18:19:18 +0100
-- Exported by: Tim Whitlock 

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;

/* -- Example schema
 CREATE TABLE `loco_samples` (
  `id` VARCHAR(50) NOT NULL COMMENT 'Developer key',
  `en_GB` BLOB NOT NULL COMMENT 'English (UK)',
  `sv_SE` BLOB NOT NULL COMMENT 'Swedish',
  -- more locales ..
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
*/

INSERT INTO `loco_samples` (`id`,`en_GB`,`sv_SE`) VALUES ('hello-world','Hello World','Hallå Världen') ON DUPLICATE KEY UPDATE `en_GB` = VALUES(`en_GB`),`sv_SE` = VALUES(`sv_SE`);
INSERT INTO `loco_samples` (`id`,`en_GB`,`sv_SE`) VALUES ('goodbye','Goodbye','Adjö') ON DUPLICATE KEY UPDATE `en_GB` = VALUES(`en_GB`),`sv_SE` = VALUES(`sv_SE`);
 
SET character_set_client = @saved_cs_client;