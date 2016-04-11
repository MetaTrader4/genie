// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Overload for OrderOpenPrice()

#include "OrderSelect.mqh"

double OrderOpenPrice( int ticket ) {
    if ( !OrderSelect( ticket ) )
        return NULL;
    return OrderOpenPrice();
}
