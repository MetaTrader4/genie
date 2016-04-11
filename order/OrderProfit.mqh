// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Overload for OrderProfit()

#include "OrderSelect.mqh"

double OrderProfit( int ticket ) {
    if ( !OrderSelect( ticket ) )
        return NULL;
    return OrderProfit();
}
