// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Overload for OrderStopLoss()

#include "OrderSelect.mqh"

double OrderStopLoss( int ticket ) {
    if ( !OrderSelect( ticket ) )
        return NULL;
    return OrderStopLoss();
}
