// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Generate a literal string of the whole array.

template<typename T>
string ArrayToString( T &arr[] ) {
    string output = "";
    for ( int i = 0; i < ArraySize( arr ); i++ ) {
        if ( i == 0 ) {
            output = (string)arr[i];
        }
        else {
            output = StringConcatenate( output, ", ", IntegerToString( arr[i] ) );
        }
    }
    
    return output;
}
