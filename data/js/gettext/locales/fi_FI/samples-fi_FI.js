/**
 * Loco js export: Gettext.js
 * Project: Samples
 * Release: Working copy
 * Tagged: All
 * Locale: fi_FI, Finnish
 * Exported at: Thu, 30 May 2013 16:50:26 +0100
 * Exported by: Tim Whitlock 
 */
var gt = new Gettext( {
    domain: "samples",
    locale_data: {"samples":{"":{"lang":"Finnish","plural-forms":"nplurals=2; plural=n == 1 ? 0 : 1"},"msgid":[null,"msgstr"],"Hello World":[null,"Hei Maailma"],"Goodbye":[null,"N\u00e4kemiin"]}} 
} );

function _( msgid ){
    return gt.gettext( msgid ); 
}

function _n( msgid1, msgid2, n ){
    return gt.gettext( msgid1, msgid2, n ); 
}
