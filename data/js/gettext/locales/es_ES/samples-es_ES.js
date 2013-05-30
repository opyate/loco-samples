/**
 * Loco js export: Gettext.js
 * Project: Samples
 * Release: Working copy
 * Tagged: All
 * Locale: es_ES, Spanish
 * Exported at: Thu, 30 May 2013 16:50:25 +0100
 * Exported by: Tim Whitlock 
 */
var gt = new Gettext( {
    domain: "samples",
    locale_data: {"samples":{"":{"lang":"Spanish","plural-forms":"nplurals=2; plural=(n != 1)"},"msgid":[null,"msgstr"],"Hello World":[null,"Hola mundo"],"Goodbye":[null,"Adi\u00f3s"]}} 
} );

function _( msgid ){
    return gt.gettext( msgid ); 
}

function _n( msgid1, msgid2, n ){
    return gt.gettext( msgid1, msgid2, n ); 
}
