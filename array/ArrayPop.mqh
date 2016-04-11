// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Pop the First Element from Array
// @return Array Size

#include "ArrayClone.mqh"

template<typename T>
int ArrayPop( T &arr[] ) {
    // Just make it empty to avoid stack overflow, MQL bug?
    if ( ArraySize( arr ) <= 1 ) {
        return ArrayResize( arr, 0 );
    }
    // Only for array > 1
    T arr_tmp[];
    ArrayCopy( arr_tmp, arr, 0, 1, WHOLE_ARRAY );
    return ArrayClone( arr, arr_tmp );
}
