<?php
/**
 * Common utilities for simple PHP examples
 */
 
 
/**
 * Get current locale, strictly in format xx_XX
 * @return string
 */ 
function example_current_locale(){
    static $locale;
    if( ! isset($locale) ){
        $locales = example_supported_locales();
        // ensure query string overrides cookie
        if( isset($_GET['locale']) ){
            $locale = $_GET['locale'];
        }
        // else get previous value from cookie
        else if( isset($_COOKIE['locale']) ){
            $locale = $_COOKIE['locale'];
        }
        // default to english if missing or unsupported
        if( empty($locale) || ! isset($locales[$locale]) ) {
            $locale = 'en_GB';
        }
        // set a cookie for next view without a query string
        if( empty($_COOKIE['locale']) || $_COOKIE['locale'] !== $locale ){
            setcookie('locale', $locale, 0, '/' );
        }
    }
    return $locale;
}
 

 
/**
 * Get all locales supported by these sample files
 * @return array in format [ code => native name ]
 */ 
function example_supported_locales(){
    static $locales = array (
        // EFIGS
        'en_GB' => 'English (UK)',
        'fr_FR' => 'Français',
        'it_IT' => 'Italiano',
        'de_DE' => 'Deutsch',
        'es_ES' => 'Español',
        // Scandinavia
        'sv_SE' => 'Svenska',
        'no_NO' => 'Norske',
        'fi_FI' => 'Suomi',
        'da_DK' => 'Dansk',
    );
    return $locales;
}



/**
 * Print a simple language switching menu
 */
function example_print_locale_menu(){
    $links = array();
    foreach( example_supported_locales() as $code => $label ){
        $links[] = sprintf('<a href="?locale=%s">%s</a>', $code, htmlentities($label, ENT_COMPAT,'UTF-8') );
    }
    echo implode(' | ', $links );
}

 