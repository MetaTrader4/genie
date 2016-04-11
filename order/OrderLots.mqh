// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Overload for OrderLots()

#include "OrderSelect.mqh"

double OrderLots( int ticket ) {
    if ( !OrderSelect( ticket ) )
        return NULL;
    return OrderLots();
}
