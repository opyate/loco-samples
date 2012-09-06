
-- Loco sql export: MySQL INSERT statements
-- Project: Samples
-- Release: Working version
-- Tagged: All
-- Locale: fi_FI, Finnish
-- Exported at: Thu, 06 Sep 2012 13:37:58 +0100
-- Exported by: Tim Whitlock 

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;

/* -- Example schema
 CREATE TABLE `loco_samples` (
  `id` VARCHAR(50) NOT NULL COMMENT 'Asset ID', 
  `fi_FI` BLOB NOT NULL COMMENT 'Finnish', 
  PRIMARY KEY  (`id`),
  INDEX `source` (`fi_FI` (255) )
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
*/

INSERT INTO `loco_samples` (`id`,`fi_FI`) VALUES ('hello-world','Hei Maailma') ON DUPLICATE KEY UPDATE `fi_FI`=VALUES(`fi_FI`);
INSERT INTO `loco_samples` (`id`,`fi_FI`) VALUES ('goodbye','Näkemiin') ON DUPLICATE KEY UPDATE `fi_FI`=VALUES(`fi_FI`);
 

SET character_set_client = @saved_cs_client;
