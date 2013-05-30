
-- Loco sql export: MySQL inserts
-- Project: Samples
-- Release: Working copy
-- Tagged: All
-- Locale: es_ES, Spanish
-- Exported at: Thu, 30 May 2013 16:50:14 +0100
-- Exported by: Tim Whitlock 

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;

/* -- Example schema
 CREATE TABLE `loco_samples` (
  `id` VARCHAR(50) NOT NULL COMMENT 'Asset ID', 
  `es_ES` BLOB NOT NULL COMMENT 'Spanish', 
  PRIMARY KEY  (`id`),
  INDEX `source` (`es_ES` (255) )
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
*/

INSERT INTO `loco_samples` (`id`,`es_ES`) VALUES ('hello-world','Hola mundo') ON DUPLICATE KEY UPDATE `es_ES`=VALUES(`es_ES`);
INSERT INTO `loco_samples` (`id`,`es_ES`) VALUES ('goodbye','Adiós') ON DUPLICATE KEY UPDATE `es_ES`=VALUES(`es_ES`);
 

SET character_set_client = @saved_cs_client;
