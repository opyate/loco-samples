<?php
/**
 * Source hilighter for the PHP examples under this directory
 */
$path = realpath( './'.str_replace('..','.',$_GET['p']) ) or die('Path not found or not allowed');
highlight_file($path);
