/**
 * Loco js export - JavaScript - wrapped in "t" function
 * Project: Samples
 * Release: Working version
 * Modules: All
 * Locale: fi_FI, Finnish
 * Exported at: Tue, 29 May 2012 18:28:10 +0100
 * Exported by: Tim Whitlock 
 */
var t = function( pairs ){
    return function( key ){
        return pairs[key] || key; 
    }
}( {"hello-world":"Hei Maailma","goodbye":"N\u00e4kemiin"} );
