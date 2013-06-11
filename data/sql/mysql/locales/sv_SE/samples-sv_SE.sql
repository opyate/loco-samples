
-- Loco sql export: MySQL inserts
-- Project: Samples
-- Release: Working copy
-- Locale: sv_SE, Swedish
-- Exported by: Tim Whitlock
-- Exported at: Tue, 11 Jun 2013 21:43:48 +0100 

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;

/* -- Example schema
 CREATE TABLE `loco_samples` (
  `id` VARCHAR(50) NOT NULL COMMENT 'Asset ID', 
  `sv_SE` BLOB NOT NULL COMMENT 'Swedish', 
  PRIMARY KEY  (`id`),
  INDEX `source` (`sv_SE` (255) )
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
*/

INSERT INTO `loco_samples` (`id`,`sv_SE`) VALUES ('goodbye','Adjö') ON DUPLICATE KEY UPDATE `sv_SE`=VALUES(`sv_SE`);
INSERT INTO `loco_samples` (`id`,`sv_SE`) VALUES ('hello-world','Hallå Världen') ON DUPLICATE KEY UPDATE `sv_SE`=VALUES(`sv_SE`);
 

SET character_set_client = @saved_cs_client;
