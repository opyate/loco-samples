/**
 * Loco js export: JavaScript function
 * Project: Samples
 * Release: Working copy
 * Locale: en_GB, English (UK)
 * Exported by: Tim Whitlock
 * Exported at: Tue, 11 Jun 2013 21:26:05 +0100 
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
        var value  = pairs[msgid1];
        if( arguments.length < 2 ){
            if( null == value ){
                return msgid1||'';
            }
            if( 'string' !== typeof value ){
                value = value.one;
            }
            return value;
        }
        // plural operation
        n = pluralIndex( n );
        value = value ? value[ pluralForms[n]||'other' ] : null;
        if( null == value ){
            return n ? msgid2||msgid1 : msgid1;
        }
        return value;
    }
}(
    {"goodbye":"Goodbye","hello-world":"Hello World"} 
);
