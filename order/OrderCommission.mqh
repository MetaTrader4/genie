// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Overload for OrderCommission()

#include "OrderSelect.mqh"

double OrderCommission( int ticket ) {
    if ( !OrderSelect( ticket ) )
        return NULL;
    return OrderCommission();
}
