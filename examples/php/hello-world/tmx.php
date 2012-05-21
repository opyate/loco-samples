<?php
/**
 * Example of using a Translation Memory eXchange XML file to display translated content.
 */

// Grab current locale from utility function
require 'utils/inc-example-functions.php';
$locale = example_current_locale();

// Language packs are in the data directory, under xml/tmx
$localepath = '../../../data/xml/tmx/locales/'.$locale.'/samples-'.$locale.'.xml';
$localepath = realpath($localepath) and file_exists($localepath) or die('Cannot find the tmx locale file');



// Extract key/value pairs from TMX file
$messages = array();
$tmx = simplexml_load_file($localepath);
foreach( $tmx->body->tu as $tu ){
    foreach( $tu->tuv as $tuv ){
        // node value is inside a <seg> element
        $value = $tuv->seg->__toString();
        // taking first <tuv> node as key
        if( isset($key) ){
            $messages[$key] = $value;
            unset($key);
            continue;
        }
        // taking second as translation
        $key = $value;
    }
}


// Translate keys with  array lookup
$key = 'hello-world';
$message = $messages[$key] or $message = $key;


?><!DOCTYPE html>
<html lang="<?php echo $locale?>">
<head>
<meta charset="utf-8" />
<title>Loco php examples - TMX - (<?php echo $locale?>)</title>
</head>
<body>
    <h1><?php echo htmlentities( $message, ENT_COMPAT, 'UTF-8')?></h1>
    <?php example_print_locale_menu()?> 
</body>
</html>
