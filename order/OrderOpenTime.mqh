// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Overload for OrderOpenTime()

#include "OrderSelect.mqh"

datetime OrderOpenTime( int ticket ) {
    if ( !OrderSelect( ticket ) )
        return NULL;
    return OrderOpenTime();
}
