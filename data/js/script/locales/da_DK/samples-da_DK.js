/**
 * Loco js export - JavaScript - wrapped in "t" function
 * Project: Samples
 * Release: Working version
 * Tagged: All
 * Locale: da_DK, Danish
 * Exported at: Mon, 13 Aug 2012 16:55:48 +0100
 * Exported by: Tim Whitlock 
 */
var t = function( pairs ){
    return function( key ){
        return pairs[key] || key; 
    }
}( {"hello-world":"Hej Verden","goodbye":"Farvel"}
 );
