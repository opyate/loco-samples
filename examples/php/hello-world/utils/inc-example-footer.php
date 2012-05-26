<?php
/**
 * Common footer for PHP examples
 * - shows language menu and view source link
 */
extract( pathinfo($_SERVER['PHP_SELF']) );
$self = basename($dirname).'/'.$basename;
?>

<div>
    <?php example_print_locale_menu()?> 
    <p>
        <a href="../">Back</a> |
        <a href="../viewsource.php?p=<?php echo rawurlencode($self)?>">View source</a>
    </p>
</div>
