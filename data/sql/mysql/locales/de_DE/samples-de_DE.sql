
-- Loco sql export - MySQL - REPLACE statements
-- Project: Samples
-- Release: Working version
-- Tagged: All
-- Locale: de_DE, German
-- Exported at: Mon, 13 Aug 2012 16:55:44 +0100
-- Exported by: Tim Whitlock 

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;

/* -- Example schema
 CREATE TABLE `loco_samples` (
  `id` VARCHAR(50) NOT NULL COMMENT 'Asset ID',
  `en_GB` BLOB NOT NULL COMMENT 'English (UK)',
  `de_DE` BLOB NOT NULL COMMENT 'German',
  PRIMARY KEY  (`id`),
  INDEX `native` (`en_GB` (255) )
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
*/

INSERT INTO `loco_samples` (`id`,`en_GB`,`de_DE`) VALUES ('hello-world','Hello World','Hallo Welt') ON DUPLICATE KEY UPDATE `en_GB`=VALUES(`en_GB`),`de_DE`=VALUES(`de_DE`);
INSERT INTO `loco_samples` (`id`,`en_GB`,`de_DE`) VALUES ('goodbye','Goodbye','Auf Wiedersehen') ON DUPLICATE KEY UPDATE `en_GB`=VALUES(`en_GB`),`de_DE`=VALUES(`de_DE`);
 

SET character_set_client = @saved_cs_client;
