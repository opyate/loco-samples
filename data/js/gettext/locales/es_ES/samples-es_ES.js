/**
 * Loco js export: Gettext.js
 * Project: Samples
 * Release: Working copy
 * Locale: es_ES, Spanish
 * Exported by: Tim Whitlock
 * Exported at: Tue, 11 Jun 2013 21:43:55 +0100 
 */
var gt = new Gettext( {
    domain: "samples",
    locale_data: {"samples":{"":{"lang":"Spanish","plural-forms":"nplurals=2; plural=(n != 1)"},"msgid":[null,"msgstr"],"Goodbye":[null,"Adi\u00f3s"],"Hello World":[null,"Hola mundo"]}} 
} );

function _( msgid ){
    return gt.gettext( msgid ); 
}

function _n( msgid1, msgid2, n ){
    return gt.gettext( msgid1, msgid2, n ); 
}
