
-- Loco sql export: MySQL INSERT statements
-- Project: Samples
-- Release: Working version
-- Tagged: All
-- Locale: de_DE, German
-- Exported at: Thu, 06 Sep 2012 13:37:57 +0100
-- Exported by: Tim Whitlock 

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;

/* -- Example schema
 CREATE TABLE `loco_samples` (
  `id` VARCHAR(50) NOT NULL COMMENT 'Asset ID', 
  `de_DE` BLOB NOT NULL COMMENT 'German', 
  PRIMARY KEY  (`id`),
  INDEX `source` (`de_DE` (255) )
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
*/

INSERT INTO `loco_samples` (`id`,`de_DE`) VALUES ('hello-world','Hallo Welt') ON DUPLICATE KEY UPDATE `de_DE`=VALUES(`de_DE`);
INSERT INTO `loco_samples` (`id`,`de_DE`) VALUES ('goodbye','Auf Wiedersehen') ON DUPLICATE KEY UPDATE `de_DE`=VALUES(`de_DE`);
 

SET character_set_client = @saved_cs_client;
