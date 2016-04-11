// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Overload for OrderClosePrice()

#include "OrderSelect.mqh"

double OrderClosePrice( int ticket ) {
    if ( !OrderSelect( ticket ) )
        return NULL;
    return OrderClosePrice();
}
