/**
 * Loco js export: JavaScript lookup function
 * Project: Samples
 * Release: Working version
 * Tagged: All
 * Locale: fr_FR, French
 * Exported at: Thu, 06 Sep 2012 13:38:00 +0100
 * Exported by: Tim Whitlock 
 */
var t = function( pairs ){
    return function( key ){
        return pairs[key] || key; 
    }
}(
    {"hello-world":"Bonjour tout le monde","goodbye":"Au revoir"}
);
