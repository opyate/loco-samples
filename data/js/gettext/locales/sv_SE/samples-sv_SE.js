/**
 * Loco js export: Gettext.js
 * Project: Samples
 * Release: Working copy
 * Locale: sv_SE, Swedish
 * Exported by: Tim Whitlock
 * Exported at: Tue, 11 Jun 2013 21:26:12 +0100 
 */
var gt = new Gettext( {
    domain: "samples",
    locale_data: {"samples":{"":{"lang":"Swedish","plural-forms":"nplurals=2; plural=(n != 1)"},"msgid":[null,"msgstr"],"Goodbye":[null,"Adj\u00f6"],"Hello World":[null,"Hall\u00e5 V\u00e4rlden"]}} 
} );

function _( msgid ){
    return gt.gettext( msgid ); 
}

function _n( msgid1, msgid2, n ){
    return gt.gettext( msgid1, msgid2, n ); 
}
