
-- Loco sql export: MySQL INSERT statements
-- Project: Samples
-- Release: Working version
-- Tagged: All
-- Locale: da_DK, Danish
-- Exported at: Thu, 06 Sep 2012 13:37:58 +0100
-- Exported by: Tim Whitlock 

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

INSERT INTO `loco_samples` (`id`,`da_DK`) VALUES ('hello-world','Hej Verden') ON DUPLICATE KEY UPDATE `da_DK`=VALUES(`da_DK`);
INSERT INTO `loco_samples` (`id`,`da_DK`) VALUES ('goodbye','Farvel') ON DUPLICATE KEY UPDATE `da_DK`=VALUES(`da_DK`);
 

SET character_set_client = @saved_cs_client;
