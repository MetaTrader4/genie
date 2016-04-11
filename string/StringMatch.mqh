// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// String Wildcard Match
// * -> Matches with 0 or more instances of any character or set of characters.
// ? -> Matches with any one character.

#include "..\array\ArrayPop.mqh"

bool StringMatch( string pattern, string text ) {

    uchar pattern_chars[], text_chars[];
    StringToCharArray( pattern, pattern_chars, 0, StringLen( pattern ) );
    StringToCharArray( text, text_chars, 0, StringLen( text ) );

    return _StringMatch( pattern_chars, text_chars );
}

bool _StringMatch( uchar &pattern[], uchar &text[] ) {
    int size_p = ArraySize( pattern );
    int size_t = ArraySize( text );

    // If we reach at the end of both strings, we are done
    if ( size_p == 0 && size_t == 0 )
        return true;
    
    // Make sure that the characters after '*' are present
    // in Text string. This function assumes that the Pattern
    // string will not contain two consecutive '*'
    if ( size_p > 1 && pattern[0] == '*' && size_t == 0 )
        return false;
        
    // If the Pattern string contains '?', or current characters
    // of both strings match
    if ( ( size_p > 1 && pattern[0] == '?' )
        || ( size_p != 0 && size_t != 0 && pattern[0] == text[0] )
    ) {
        ArrayPop( pattern );
        ArrayPop( text );
        return _StringMatch( pattern , text );
    }
    
    // If there is *, then there are two possibilities
    // a) We consider current character of Text string
    // b) We ignore current character of Text string.
    if ( size_p != 0 && pattern[0] == '*' ) {
        uchar pattern_orig[], text_orig[];
        ArrayClone( pattern_orig, pattern );
        ArrayPop( pattern );
        ArrayClone( text_orig, text );
        ArrayPop( text );
        
        return _StringMatch( pattern , text_orig ) || _StringMatch( pattern_orig, text );
    }
    
    return false;
}
