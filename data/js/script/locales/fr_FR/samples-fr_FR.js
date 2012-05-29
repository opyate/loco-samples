/**
 * Loco js export - JavaScript - wrapped in "t" function
 * Project: Samples
 * Release: Working version
 * Modules: All
 * Locale: fr_FR, French
 * Exported at: Tue, 29 May 2012 18:28:07 +0100
 * Exported by: Tim Whitlock 
 */
var t = function( pairs ){
    return function( key ){
        return pairs[key] || key; 
    }
}( {"hello-world":"Bonjour tout le monde","goodbye":"Au revoir"} );
