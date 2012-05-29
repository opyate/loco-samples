/**
 * Loco js export - JavaScript - wrapped in "t" function
 * Project: Samples
 * Release: Working version
 * Modules: All
 * Locale: sv_SE, Swedish
 * Exported at: Tue, 29 May 2012 18:28:09 +0100
 * Exported by: Tim Whitlock 
 */
var t = function( pairs ){
    return function( key ){
        return pairs[key] || key; 
    }
}( {"hello-world":"Hall\u00e5 V\u00e4rlden","goodbye":"Adj\u00f6"} );
