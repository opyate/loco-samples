/**
 * Loco js export: JavaScript lookup function
 * Project: Samples
 * Release: Working version
 * Tagged: All
 * Locale: sv_SE, Swedish
 * Exported at: Thu, 06 Sep 2012 13:38:01 +0100
 * Exported by: Tim Whitlock 
 */
var t = function( pairs ){
    return function( key ){
        return pairs[key] || key; 
    }
}(
    {"hello-world":"Hall\u00e5 V\u00e4rlden","goodbye":"Adj\u00f6"}
);
