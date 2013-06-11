/**
 * Loco js export: Gettext.js
 * Project: Samples
 * Release: Working copy
 * Locale: da_DK, Danish
 * Exported by: Tim Whitlock
 * Exported at: Tue, 11 Jun 2013 21:43:56 +0100 
 */
var gt = new Gettext( {
    domain: "samples",
    locale_data: {"samples":{"":{"lang":"Danish","plural-forms":"nplurals=2; plural=(n != 1)"},"msgid":[null,"msgstr"],"Goodbye":[null,"Farvel"],"Hello World":[null,"Hej Verden"]}} 
} );

function _( msgid ){
    return gt.gettext( msgid ); 
}

function _n( msgid1, msgid2, n ){
    return gt.gettext( msgid1, msgid2, n ); 
}
