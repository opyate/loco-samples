<?php
/**
 * Example of using Gettext files to display translated content.
 */

// ensure utf8
header('Content-Type: text/html; charset=UTF-8', true);
 
// You will need the Gettext extension installed
extension_loaded('gettext') or die('Gettext extension is not installed');

// Language packs are in the data directory
$localepath = realpath('../../../data/gettext/locales') and is_dir($localepath) or die('Cannot find the gettext locales directory');

// Grab current locale from utility function
require 'utils/inc-example-functions.php';
$locale = example_current_locale();

// set up Gettext
putenv('LC_ALL='.$locale);  // <- required on Mac
setlocale(LC_ALL, $locale.'.utf8'); // <- required on Linux
$domain = 'messages';
bindtextdomain( $domain, $localepath );
function_exists('bind_textdomain_codeset') and bind_textdomain_codeset( $domain, 'UTF-8');
textdomain( $domain ); 

// Translate source texts with the "_" or "gettext" functions
$message = _('Hello World');


?><!DOCTYPE html>
<html lang="<?php echo $locale?>">
<head>
<meta charset="utf-8" />
<title>Loco php examples - Gettext (<?php echo $locale?>)</title>
<link href="flags.css" rel="stylesheet" />
</head>
<body>
    <h1><?php echo htmlentities( $message, ENT_COMPAT, 'UTF-8')?></h1>
    <?php include 'utils/inc-example-footer.php'?> 
</body>
</html>
