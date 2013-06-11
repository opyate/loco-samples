/**
 * Loco js export: Gettext.js
 * Project: Samples
 * Release: Working copy
 * Locale: en_GB, English (UK)
 * Exported by: Tim Whitlock
 * Exported at: Tue, 11 Jun 2013 10:28:16 +0100 
 */
var gt = new Gettext( {
    domain: "samples",
    locale_data: {"samples":{"":{"lang":"English (UK)","plural-forms":"nplurals=2; plural=(n != 1)"},"msgid":[null,"msgstr"],"Goodbye":[null,"Goodbye"],"Hello World":[null,"Hello World"]}} 
} );

function _( msgid ){
    return gt.gettext( msgid ); 
}

function _n( msgid1, msgid2, n ){
    return gt.gettext( msgid1, msgid2, n ); 
}