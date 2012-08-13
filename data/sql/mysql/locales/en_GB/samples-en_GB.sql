
-- Loco sql export - MySQL - REPLACE statements
-- Project: Samples
-- Release: Working version
-- Tagged: All
-- Locale: en_GB, English (UK)
-- Exported at: Mon, 13 Aug 2012 16:55:43 +0100
-- Exported by: Tim Whitlock 

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;

/* -- Example schema
 CREATE TABLE `loco_samples` (
  `id` VARCHAR(50) NOT NULL COMMENT 'Asset ID',
  `en_GB` BLOB NOT NULL COMMENT 'English (UK)',
  PRIMARY KEY  (`id`),
  INDEX `native` (`en_GB` (255) )
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
*/

INSERT INTO `loco_samples` (`id`,`en_GB`) VALUES ('hello-world','Hello World','Hello World') ON DUPLICATE KEY UPDATE `en_GB`=VALUES(`en_GB`);
INSERT INTO `loco_samples` (`id`,`en_GB`) VALUES ('goodbye','Goodbye','Goodbye') ON DUPLICATE KEY UPDATE `en_GB`=VALUES(`en_GB`);
 

SET character_set_client = @saved_cs_client;
