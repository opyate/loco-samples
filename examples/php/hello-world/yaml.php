<?php
/**
 * Example of using a simple YAML file to display translated content
 */

// ensure utf8
header('Content-Type: text/html; charset=UTF-8', true);

// You will need the YAML extension installed
extension_loaded('yaml') or die('yaml extension is not installed');
 
// Grab current locale from utility function
require 'utils/inc-example-functions.php';
$locale = example_current_locale();

// Language packs are in the data directory, under 'yaml/simple'
$localepath = '../../../data/yaml/simple/locales/'.$locale.'/samples-'.$locale.'.yml';
$localepath = realpath($localepath) and file_exists($localepath) or die('Cannot find the YAML locale file');

// Translations stored in a one-dimensional YAML object
$messages = yaml_parse_file( $localepath );

// Translate keys with a simple array lookup
$key = 'hello-world';
$message = $messages[$key] or $message = $key;


?><!DOCTYPE html>
<html lang="<?php echo $locale?>">
<head>
<meta charset="utf-8" />
<title>Loco php examples - YAML - (<?php echo $locale?>)</title>
<link href="flags.css" rel="stylesheet" />
</head>
<body>
    <h1><?php echo htmlentities( $message, ENT_COMPAT, 'UTF-8')?></h1>
    <?php include 'utils/inc-example-footer.php'?> 
</body>
</html>
