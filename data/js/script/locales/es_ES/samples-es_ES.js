/**
 * Loco js export - JavaScript - wrapped in "t" function
 * Project: Samples
 * Release: Working version
 * Modules: All
 * Locale: es_ES, Spanish
 * Exported at: Tue, 29 May 2012 18:28:08 +0100
 * Exported by: Tim Whitlock 
 */
var t = function( pairs ){
    return function( key ){
        return pairs[key] || key; 
    }
}( {"hello-world":"Hola mundo","goodbye":"Adi\u00f3s"} );
