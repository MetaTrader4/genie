// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Overload for OrderCloseTime()

#include "OrderSelect.mqh"

datetime OrderCloseTime( int ticket ) {
    if ( !OrderSelect( ticket ) )
        return NULL;
    return OrderCloseTime();
}
