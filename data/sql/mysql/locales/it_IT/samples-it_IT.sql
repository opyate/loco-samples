
-- Loco sql export - MySQL - INSERT/UPDATE statements
-- Project: Samples
-- Release: Working version
-- Modules: All
-- Locale: it_IT, Italian
-- Exported at: Mon, 28 May 2012 18:19:17 +0100
-- Exported by: Tim Whitlock 

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;

/* -- Example schema
 CREATE TABLE `loco_samples` (
  `id` VARCHAR(50) NOT NULL COMMENT 'Developer key',
  `en_GB` BLOB NOT NULL COMMENT 'English (UK)',
  `it_IT` BLOB NOT NULL COMMENT 'Italian',
  -- more locales ..
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
*/

INSERT INTO `loco_samples` (`id`,`en_GB`,`it_IT`) VALUES ('hello-world','Hello World','Ciao a tutti') ON DUPLICATE KEY UPDATE `en_GB` = VALUES(`en_GB`),`it_IT` = VALUES(`it_IT`);
INSERT INTO `loco_samples` (`id`,`en_GB`,`it_IT`) VALUES ('goodbye','Goodbye','Arrivederci') ON DUPLICATE KEY UPDATE `en_GB` = VALUES(`en_GB`),`it_IT` = VALUES(`it_IT`);
 
SET character_set_client = @saved_cs_client;
