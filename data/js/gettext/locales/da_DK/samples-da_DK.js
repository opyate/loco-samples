/**
 * Loco js export: Gettext.js
 * Project: Samples
 * Release: Working copy
 * Tagged: All
 * Locale: da_DK, Danish
 * Exported at: Thu, 30 May 2013 16:50:26 +0100
 * Exported by: Tim Whitlock 
 */
var gt = new Gettext( {
    domain: "samples",
    locale_data: {"samples":{"":{"lang":"Danish","plural-forms":"nplurals=2; plural=(n != 1)"},"msgid":[null,"msgstr"],"Hello World":[null,"Hej Verden"],"Goodbye":[null,"Farvel"]}} 
} );

function _( msgid ){
    return gt.gettext( msgid ); 
}

function _n( msgid1, msgid2, n ){
    return gt.gettext( msgid1, msgid2, n ); 
}
