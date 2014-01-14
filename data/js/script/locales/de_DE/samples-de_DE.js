/**
 * Loco js export: JavaScript function
 * Project: Samples
 * Release: Working copy
 * Locale: de_DE, German
 * Exported by: Tim Whitlock
 * Exported at: Tue, 14 Jan 2014 19:32:07 +0000 
 */
var t = function( pairs ){
    
    // named plural forms according to Unicode 
    var pluralForms = ["one","other"];
    
    // calc numeric index of a plural form (0-1)
    function pluralIndex( n ){
        return Number( (n != 1) );
    }

    // expose public t() function
    return function( msgid1, msgid2, n ){
        var value = pairs[msgid1];
        // singular if no multiplier
        if( null == n ){
            n = 1;
        }
        // plurals stored as objects, e.g. { one: "" }
        if( value instanceof Object ){
            value = value[ pluralForms[ pluralIndex(n) ] || 'one' ];
        }
        return value || ( 1 === n ? msgid1 : msgid2 ) || msgid1 || '';
    };
}(
    {"goodbye":"Auf Wiedersehen","hello-world":"Hallo Welt"} 
);
