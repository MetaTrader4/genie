// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Safely delete object pointer.

// Safely delete pointer.
template<typename T>
void PointerDelete( T* &object ) {
    if ( CheckPointer( object ) == POINTER_DYNAMIC ) {
        delete object;
    }
    object = NULL;
}

// Safely delete pointers array.
template<typename T>
void PointersDelete( T &arr[] ) {
    int size = ArraySize( arr );
    for ( int i = 0; i < size; i++ ) {
        if ( CheckPointer( arr[i] ) == POINTER_DYNAMIC ) {
            delete arr[i];
        }
    }
}
