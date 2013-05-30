/**
 * Loco js export: Gettext.js
 * Project: Samples
 * Release: Working copy
 * Tagged: All
 * Locale: no_NO, Norwegian
 * Exported at: Thu, 30 May 2013 16:50:25 +0100
 * Exported by: Tim Whitlock 
 */
var gt = new Gettext( {
    domain: "samples",
    locale_data: {"samples":{"":{"lang":"Norwegian","plural-forms":"nplurals=2; plural=(n != 1)"},"msgid":[null,"msgstr"],"Hello World":[null,"Hallo Verden"],"Goodbye":[null,"Farvel"]}} 
} );

function _( msgid ){
    return gt.gettext( msgid ); 
}

function _n( msgid1, msgid2, n ){
    return gt.gettext( msgid1, msgid2, n ); 
}
