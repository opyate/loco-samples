
-- Loco sql export - MySQL - INSERT/UPDATE statements
-- Project: Samples
-- Release: Working version
-- Modules: All
-- Locale: de_DE, German
-- Exported at: Mon, 28 May 2012 18:19:18 +0100
-- Exported by: Tim Whitlock 

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;

/* -- Example schema
 CREATE TABLE `loco_samples` (
  `id` VARCHAR(50) NOT NULL COMMENT 'Developer key',
  `en_GB` BLOB NOT NULL COMMENT 'English (UK)',
  `de_DE` BLOB NOT NULL COMMENT 'German',
  -- more locales ..
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
*/

INSERT INTO `loco_samples` (`id`,`en_GB`,`de_DE`) VALUES ('hello-world','Hello World','Hallo Welt') ON DUPLICATE KEY UPDATE `en_GB` = VALUES(`en_GB`),`de_DE` = VALUES(`de_DE`);
INSERT INTO `loco_samples` (`id`,`en_GB`,`de_DE`) VALUES ('goodbye','Goodbye','Auf Wiedersehen') ON DUPLICATE KEY UPDATE `en_GB` = VALUES(`en_GB`),`de_DE` = VALUES(`de_DE`);
 
SET character_set_client = @saved_cs_client;
