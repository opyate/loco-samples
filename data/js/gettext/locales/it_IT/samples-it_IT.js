/**
 * Loco js export: Gettext.js
 * Project: Samples
 * Release: Working copy
 * Locale: it_IT, Italian
 * Exported by: Tim Whitlock
 * Exported at: Wed, 17 Jul 2013 14:15:37 +0100 
 */
var gt = new Gettext( {
    domain: "samples",
    locale_data: {"samples":{"":{"lang":"Italian","plural-forms":"nplurals=2; plural=(n != 1)"},"msgid":[null,"msgstr"],"Goodbye":[null,"Arrivederci"],"Hello World":[null,"Ciao a tutti"]}} 
} );

function _( msgid ){
    return gt.gettext( msgid ); 
}

function _n( msgid1, msgid2, n ){
    return gt.gettext( msgid1, msgid2, n ); 
}
