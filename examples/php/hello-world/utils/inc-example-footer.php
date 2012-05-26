<?php
/**
 * Common footer for PHP examples
 * - shows language menu and view source link
 */
$self = str_replace('/examples/php/','',$_SERVER['PHP_SELF'])
?>

<div>
    <?php example_print_locale_menu()?> 
    <p><a href="../viewsource.php?p=<?php echo rawurlencode($self)?>">View source</a></p>
</div>
