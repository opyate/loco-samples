
-- Loco sql export: MySQL inserts
-- Project: Samples
-- Release: Working copy
-- Locale: en_GB, English (UK)
-- Exported by: Tim Whitlock
-- Exported at: Tue, 11 Jun 2013 21:43:47 +0100 

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;

/* -- Example schema
 CREATE TABLE `loco_samples` (
  `id` VARCHAR(50) NOT NULL COMMENT 'Asset ID', 
  `en_GB` BLOB NOT NULL COMMENT 'English (UK)', 
  PRIMARY KEY  (`id`),
  INDEX `source` (`en_GB` (255) )
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
*/

INSERT INTO `loco_samples` (`id`,`en_GB`) VALUES ('goodbye','Goodbye') ON DUPLICATE KEY UPDATE `en_GB`=VALUES(`en_GB`);
INSERT INTO `loco_samples` (`id`,`en_GB`) VALUES ('hello-world','Hello World') ON DUPLICATE KEY UPDATE `en_GB`=VALUES(`en_GB`);
 

SET character_set_client = @saved_cs_client;
