/**
 * Loco js export - JavaScript - wrapped in "t" function
 * Project: Samples
 * Release: Working version
 * Tagged: All
 * Locale: it_IT, Italian
 * Exported at: Mon, 13 Aug 2012 16:55:47 +0100
 * Exported by: Tim Whitlock 
 */
var t = function( pairs ){
    return function( key ){
        return pairs[key] || key; 
    }
}( {"hello-world":"Ciao a tutti","goodbye":"Arrivederci"}
 );
