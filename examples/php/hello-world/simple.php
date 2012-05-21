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

// Translate keys with A simple array lookup
$key = 'samples_hello_world';
$message = $messages[$key] or $message = $key;


?><!DOCTYPE html>
<html lang="<?php echo $locale?>">
<meta charset="utf-8" />
<head>
<title>Loco php examples - Gettext (<?php echo $locale?>)</title>
</head>
<body>
    <h1><?php echo htmlentities( $message, ENT_COMPAT, 'UTF-8')?></h1>
    <?php example_print_locale_menu()?> 
</body>
</html>
