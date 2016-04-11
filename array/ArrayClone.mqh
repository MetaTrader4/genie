// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Array Clone, Handle the Source Size Automatically.

template<typename T>
int ArrayClone( T &arr_dest[], T &arr_src[] ) {
    int size = ArraySize( arr_src );
    // No item in source array.
    if ( size == 0 ) return 0;
    
    ArrayResize( arr_dest, size );
    return ArrayCopy( arr_dest, arr_src );
}
