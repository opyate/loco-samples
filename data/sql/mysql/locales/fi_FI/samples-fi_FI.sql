
-- Loco sql export - MySQL - REPLACE statements
-- Project: Samples
-- Release: Working version
-- Tagged: All
-- Locale: fi_FI, Finnish
-- Exported at: Mon, 13 Aug 2012 16:55:45 +0100
-- Exported by: Tim Whitlock 

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;

/* -- Example schema
 CREATE TABLE `loco_samples` (
  `id` VARCHAR(50) NOT NULL COMMENT 'Asset ID',
  `en_GB` BLOB NOT NULL COMMENT 'English (UK)',
  `fi_FI` BLOB NOT NULL COMMENT 'Finnish',
  PRIMARY KEY  (`id`),
  INDEX `native` (`en_GB` (255) )
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
*/

INSERT INTO `loco_samples` (`id`,`en_GB`,`fi_FI`) VALUES ('hello-world','Hello World','Hei Maailma') ON DUPLICATE KEY UPDATE `en_GB`=VALUES(`en_GB`),`fi_FI`=VALUES(`fi_FI`);
INSERT INTO `loco_samples` (`id`,`en_GB`,`fi_FI`) VALUES ('goodbye','Goodbye','Näkemiin') ON DUPLICATE KEY UPDATE `en_GB`=VALUES(`en_GB`),`fi_FI`=VALUES(`fi_FI`);
 

SET character_set_client = @saved_cs_client;
