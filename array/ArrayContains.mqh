// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Check if array has the specific value.

template<typename T>
bool ArrayContains( const T &arr[], T value ) {
    for ( int i = 0; i < ArraySize(arr); i++ ) {
        if ( arr[i] == value ) {
            return true;
        }
    }
    return false;
}
