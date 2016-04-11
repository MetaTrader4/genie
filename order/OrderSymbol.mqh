// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Overload for OrderSymbol()

#include "OrderSelect.mqh"

string OrderSymbol( int ticket ) {
    if ( !OrderSelect( ticket ) )
        return NULL;
    return OrderSymbol();
}
