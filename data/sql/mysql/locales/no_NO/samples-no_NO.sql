
-- Loco sql export: MySQL inserts
-- Project: Samples
-- Release: Working copy
-- Locale: no_NO, Norwegian
-- Exported by: Tim Whitlock
-- Exported at: Wed, 17 Jul 2013 14:15:29 +0100 

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;

/* -- Example schema
 CREATE TABLE `loco_samples` (
  `id` VARCHAR(50) NOT NULL COMMENT 'Asset ID', 
  `no_NO` BLOB NOT NULL COMMENT 'Norwegian', 
  PRIMARY KEY  (`id`),
  INDEX `source` (`no_NO` (255) )
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
*/

INSERT INTO `loco_samples` (`id`,`no_NO`) VALUES ('goodbye','Farvel') ON DUPLICATE KEY UPDATE `no_NO`=VALUES(`no_NO`);
INSERT INTO `loco_samples` (`id`,`no_NO`) VALUES ('hello-world','Hallo Verden') ON DUPLICATE KEY UPDATE `no_NO`=VALUES(`no_NO`);
 

SET character_set_client = @saved_cs_client;
