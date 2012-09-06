/**
 * Loco js export: JavaScript lookup function
 * Project: Samples
 * Release: Working version
 * Tagged: All
 * Locale: fi_FI, Finnish
 * Exported at: Thu, 06 Sep 2012 13:38:01 +0100
 * Exported by: Tim Whitlock 
 */
var t = function( pairs ){
    return function( key ){
        return pairs[key] || key; 
    }
}(
    {"hello-world":"Hei Maailma","goodbye":"N\u00e4kemiin"}
);
