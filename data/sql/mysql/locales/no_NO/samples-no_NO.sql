
-- Loco sql export - MySQL - REPLACE statements
-- Project: Samples
-- Release: Working version
-- Tagged: All
-- Locale: no_NO, Norwegian
-- Exported at: Mon, 13 Aug 2012 16:55:45 +0100
-- Exported by: Tim Whitlock 

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;

/* -- Example schema
 CREATE TABLE `loco_samples` (
  `id` VARCHAR(50) NOT NULL COMMENT 'Asset ID',
  `en_GB` BLOB NOT NULL COMMENT 'English (UK)',
  `no_NO` BLOB NOT NULL COMMENT 'Norwegian',
  PRIMARY KEY  (`id`),
  INDEX `native` (`en_GB` (255) )
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
*/

INSERT INTO `loco_samples` (`id`,`en_GB`,`no_NO`) VALUES ('hello-world','Hello World','Hallo Verden') ON DUPLICATE KEY UPDATE `en_GB`=VALUES(`en_GB`),`no_NO`=VALUES(`no_NO`);
INSERT INTO `loco_samples` (`id`,`en_GB`,`no_NO`) VALUES ('goodbye','Goodbye','Farvel') ON DUPLICATE KEY UPDATE `en_GB`=VALUES(`en_GB`),`no_NO`=VALUES(`no_NO`);
 

SET character_set_client = @saved_cs_client;
