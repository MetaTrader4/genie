// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Overload for OrderTakeProfit()

#include "OrderSelect.mqh"

double OrderTakeProfit( int ticket ) {
    if ( !OrderSelect( ticket ) )
        return NULL;
    return OrderTakeProfit();
}
