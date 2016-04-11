// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Check if Order is Filled

#include "OrderSelect.mqh"
#include "OrderRoutine.mqh"

bool OrderIsFilled( void ) {
    if ( !OrderTicket() )
        return false;
    if ( OrderRoutine() == ORDER_MARKET )
        return true;
    return false;
}

bool OrderIsFilled( int ticket ) {
    if ( !OrderSelect( ticket ) )
        return false;
    return OrderIsFilled();
}
