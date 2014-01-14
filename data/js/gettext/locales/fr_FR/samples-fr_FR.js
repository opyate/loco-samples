/**
 * Loco js export: Gettext.js
 * Project: Samples
 * Release: Working copy
 * Locale: fr_FR, French
 * Exported by: Tim Whitlock
 * Exported at: Tue, 14 Jan 2014 20:21:54 +0000 
 */
var gt = new Gettext( {
    domain: "samples",
    locale_data: {"samples":{"":{"lang":"French","plural-forms":"nplurals=2; plural=n == 1 ? 0 : 1"},"msgid":[null,"msgstr"],"Goodbye":[null,"Au revoir"],"Hello World":[null,"Bonjour tout le monde"]}} 
} );

function _( msgid ){
    return gt.gettext( msgid ); 
}

function _n( msgid1, msgid2, n ){
    return gt.gettext( msgid1, msgid2, n ); 
}
