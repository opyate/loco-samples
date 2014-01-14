/**
 * Loco js export: Gettext.js
 * Project: Samples
 * Release: Working copy
 * Locale: no_NO, Norwegian
 * Exported by: Tim Whitlock
 * Exported at: Tue, 14 Jan 2014 20:21:55 +0000 
 */
var gt = new Gettext( {
    domain: "samples",
    locale_data: {"samples":{"":{"lang":"Norwegian","plural-forms":"nplurals=2; plural=(n != 1)"},"msgid":[null,"msgstr"],"Goodbye":[null,"Farvel"],"Hello World":[null,"Hallo Verden"]}} 
} );

function _( msgid ){
    return gt.gettext( msgid ); 
}

function _n( msgid1, msgid2, n ){
    return gt.gettext( msgid1, msgid2, n ); 
}
