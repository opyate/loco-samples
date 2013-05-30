
-- Loco sql export: MySQL inserts
-- Project: Samples
-- Release: Working copy
-- Tagged: All
-- Locale: it_IT, Italian
-- Exported at: Thu, 30 May 2013 16:50:13 +0100
-- Exported by: Tim Whitlock 

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;

/* -- Example schema
 CREATE TABLE `loco_samples` (
  `id` VARCHAR(50) NOT NULL COMMENT 'Asset ID', 
  `it_IT` BLOB NOT NULL COMMENT 'Italian', 
  PRIMARY KEY  (`id`),
  INDEX `source` (`it_IT` (255) )
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
*/

INSERT INTO `loco_samples` (`id`,`it_IT`) VALUES ('hello-world','Ciao a tutti') ON DUPLICATE KEY UPDATE `it_IT`=VALUES(`it_IT`);
INSERT INTO `loco_samples` (`id`,`it_IT`) VALUES ('goodbye','Arrivederci') ON DUPLICATE KEY UPDATE `it_IT`=VALUES(`it_IT`);
 

SET character_set_client = @saved_cs_client;
