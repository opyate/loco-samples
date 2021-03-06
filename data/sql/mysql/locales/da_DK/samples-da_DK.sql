
-- Loco sql export: MySQL inserts
-- Project: Samples
-- Release: Working copy
-- Locale: da_DK, Danish
-- Exported by: Tim Whitlock
-- Exported at: Tue, 14 Jan 2014 20:21:51 +0000 

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;

/* -- Example schema
 CREATE TABLE `loco_samples` (
  `id` VARCHAR(50) NOT NULL COMMENT 'Asset ID', 
  `da_DK` BLOB NOT NULL COMMENT 'Danish', 
  PRIMARY KEY  (`id`),
  INDEX `source` (`da_DK` (255) )
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
*/

INSERT INTO `loco_samples` (`id`,`da_DK`) VALUES ('goodbye','Farvel') ON DUPLICATE KEY UPDATE `da_DK`=VALUES(`da_DK`);
INSERT INTO `loco_samples` (`id`,`da_DK`) VALUES ('hello-world','Hej Verden') ON DUPLICATE KEY UPDATE `da_DK`=VALUES(`da_DK`);
 

SET character_set_client = @saved_cs_client;
