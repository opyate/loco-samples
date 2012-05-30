
-- Loco sql export - MySQL - INSERT/REPLACE statements
-- Project: Samples
-- Release: Working version
-- Modules: All
-- Locales: Batch
-- Exported at: Wed, 30 May 2012 13:24:30 +0100
-- Exported by: Tim Whitlock 

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;

/* -- Example schema
 CREATE TABLE `loco_samples` (
  `id` VARCHAR(50) NOT NULL COMMENT 'Developer key',
  `en_GB` BLOB NOT NULL COMMENT 'English (UK)',
  `fr_FR` BLOB NOT NULL COMMENT 'French',
  `it_IT` BLOB NOT NULL COMMENT 'Italian',
  `de_DE` BLOB NOT NULL COMMENT 'German',
  `es_ES` BLOB NOT NULL COMMENT 'Spanish',
  `sv_SE` BLOB NOT NULL COMMENT 'Swedish',
  `no_NO` BLOB NOT NULL COMMENT 'Norwegian',
  `fi_FI` BLOB NOT NULL COMMENT 'Finnish',
  `da_DK` BLOB NOT NULL COMMENT 'Danish',
  PRIMARY KEY  (`id`),
  INDEX `native` (`en_GB` (255) )
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
*/

REPLACE INTO `loco_samples` (`id`,`en_GB`,`fr_FR`,`it_IT`,`de_DE`,`es_ES`,`sv_SE`,`no_NO`,`fi_FI`,`da_DK`) VALUES ('hello-world','Hello World','Bonjour tout le monde','Ciao a tutti','Hallo Welt','Hola mundo','Hallå Världen','Hallo Verden','Hei Maailma','Hej Verden');
REPLACE INTO `loco_samples` (`id`,`en_GB`,`fr_FR`,`it_IT`,`de_DE`,`es_ES`,`sv_SE`,`no_NO`,`fi_FI`,`da_DK`) VALUES ('goodbye','Goodbye','Au revoir','Arrivederci','Auf Wiedersehen','Adiós','Adjö','Farvel','Näkemiin','Farvel');
 

SET character_set_client = @saved_cs_client;
