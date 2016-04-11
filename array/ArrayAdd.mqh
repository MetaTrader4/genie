// Author: Kolier.Li

#include "ArrayContains.mqh"
#include "ArrayInsert.mqh"

/**
 * Unique insert to the end of array.
 */
template<typename T>
int ArrayAdd(T &arr[], T value)
{
    int size_old = ArraySize(arr);
    int size;
    if (!ArrayContains(arr, value)) {
        size = ArrayInsert(arr, value);
    }
    else {
        size = ArraySize(arr);
    }
    
    return (size > size_old) ? size : -1;
}
