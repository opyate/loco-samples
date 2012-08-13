/**
 * Loco js export - JavaScript - wrapped in "t" function
 * Project: Samples
 * Release: Working version
 * Tagged: All
 * Locale: es_ES, Spanish
 * Exported at: Mon, 13 Aug 2012 16:55:47 +0100
 * Exported by: Tim Whitlock 
 */
var t = function( pairs ){
    return function( key ){
        return pairs[key] || key; 
    }
}( {"hello-world":"Hola mundo","goodbye":"Adi\u00f3s"}
 );
