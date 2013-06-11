/**
 * Loco js export: Gettext.js
 * Project: Samples
 * Release: Working copy
 * Locale: fi_FI, Finnish
 * Exported by: Tim Whitlock
 * Exported at: Tue, 11 Jun 2013 21:26:12 +0100 
 */
var gt = new Gettext( {
    domain: "samples",
    locale_data: {"samples":{"":{"lang":"Finnish","plural-forms":"nplurals=2; plural=n == 1 ? 0 : 1"},"msgid":[null,"msgstr"],"Goodbye":[null,"N\u00e4kemiin"],"Hello World":[null,"Hei Maailma"]}} 
} );

function _( msgid ){
    return gt.gettext( msgid ); 
}

function _n( msgid1, msgid2, n ){
    return gt.gettext( msgid1, msgid2, n ); 
}
