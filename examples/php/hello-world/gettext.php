<?php
/**
 * Example of using Gettext files to display translated content.
 */

// You will need the Gettext extension installed
extension_loaded('gettext') or die('Gettext extension is not installed');

// Language packs are in the data directory
$localepath = realpath('../../../data/gettext/locales') and is_dir($localepath) or die('Cannot find the gettext locales directory');

// Grab current locale from utility function
require 'utils/inc-example-functions.php';
$locale = example_current_locale();

// set up Gettext
putenv('LC_ALL='.$locale);  // <- required on Mac
setlocale(LC_ALL, $locale); // <- required on Linux
$domain = 'messages';
bindtextdomain( $domain, $localepath );
textdomain( $domain ); 

// Translate keys with the "_" or "gettext" functions
$message = _('hello-world');


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
