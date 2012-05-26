<?php
/**
 * Source hilighter for the PHP examples under this directory
 */
header('Content-Type: text/html; charset=utf8'); 
$path = realpath( './'.str_replace('..','.',$_GET['p']) ) or die('Path not found or not allowed');

?><!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>Loco PHP source | <?php echo basename($path)?></title>
<style>
code {
    font: 9pt/9pt Monaco,'Courier New',Courier,monospace;
}
</style>
</head>
<body>
<?php highlight_file($path); ?>
</body>
</html>
