// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Overload for OrderTicket()

#include "OrderSelect.mqh"

int OrderTicket( int ticket ) {
    if ( !OrderSelect( ticket ) )
        return NULL;
    return OrderTicket();
}
