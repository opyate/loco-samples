<?php
/**
 * Example of using a simple array to display translated content.
 * This is the same format that Zend and Symfony use for PHP language files.
 */

// Grab current locale from utility function
require 'utils/inc-example-functions.php';
$locale = example_current_locale();

// Language packs are in the data directory, under 'zend'
$localepath = '../../../data/php/zend/locales/'.$locale.'/samples-'.$locale.'.php';
$localepath = realpath($localepath) and file_exists($localepath) or die('Cannot find the zend locale file');

// Translations stored in a single array in a return statement
$messages = include $localepath;

// Translate keys with a simple array lookup
$key = 'samples_hello_world';
$message = $messages[$key] or $message = $key;


?><!DOCTYPE html>
<html lang="<?php echo $locale?>">
<head>
<meta charset="utf-8" />
<title>Loco php examples - Simple array - (<?php echo $locale?>)</title>
<link href="flags.css" rel="stylesheet" />
</head>
<body>
    <h1><?php echo htmlentities( $message, ENT_COMPAT, 'UTF-8')?></h1>
    <?php include 'utils/inc-example-footer.php'?> 
</body>
</html>
