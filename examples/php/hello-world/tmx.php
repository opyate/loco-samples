<?php
/**
 * Example of using a Translation Memory eXchange XML file to display translated content.
 */

// ensure utf8
header('Content-Type: text/html; charset=UTF-8', true);
 
// Grab current locale from utility function
require 'utils/inc-example-functions.php';
$locale = example_current_locale();

// Language packs are in the data directory, under xml/tmx
$localepath = '../../../data/xml/tmx/locales/'.$locale.'/samples-'.$locale.'.tmx';
$localepath = realpath($localepath) and file_exists($localepath) or die('Cannot find the tmx locale file');


// Extract key/value pairs from TMX file using DOM extension
// This is slow. In reality you would pre-load transations into a data store or cache.
//
$Doc = new DOMDocument('1.0','UTF-8');
$Doc->preserveWhiteSpace = false;
$Doc->load( $localepath, LIBXML_DTDVALID );

$messages = array();
$xpath = new DOMXPath($Doc);
foreach( $xpath->query('//tmx/body/tu') as $tu ){
    // We're looking up translation by its ID, not by source language
    $id = $tu->getAttribute('tuid');
    $messages[$id] = $id;
    // establish which <tuv> node holds the key and value
    foreach( $tu->getElementsByTagName('tuv') as $tuv ){
        // we're only interested in our target locale as we're lookin up by ID
        if( $locale !== $tuv->getAttribute('xml:lang') ){
            continue;
        }
        // value is held in <seg> node which should be first child
        $seg = $tuv->firstChild;
        if( ! ( $seg instanceof DOMElement ) || 'seg' !== strtolower($seg->tagName) ){
            trigger_error('Expecting <seg> element as first child of <tuv> element');
            break;
        }
        // seg element may contain CDATA node, or it may in fact contain further markup
        // easiest thing to do here is simply trim whitespace - CDATA should collapse
        $messages[$id] = trim( $seg->nodeValue );
    }
}


// Translate keys with array lookup
$key = 'hello-world';
$message = $messages[$key] or $message = $key;


?><!DOCTYPE html>
<html lang="<?php echo $locale?>">
<head>
<meta charset="utf-8" />
<title>Loco php examples - TMX - (<?php echo $locale?>)</title>
<link href="flags.css" rel="stylesheet" />
</head>
<body>
    <h1><?php echo htmlentities( $message, ENT_COMPAT, 'UTF-8')?></h1>
    <?php include 'utils/inc-example-footer.php'?> 
</body>
</html>
