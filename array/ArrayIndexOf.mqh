// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Get the index of value in array.
// @todo Optimize algorithm.

template<typename T>
int ArrayIndexOf( T &arr[], T value, int offset = 0 ) {
    for ( int i = offset; i < ArraySize( arr ); i++ ) {
        if ( arr[i] == value ) {
            return i;
        }
    }
    return EMPTY_VALUE;
}
