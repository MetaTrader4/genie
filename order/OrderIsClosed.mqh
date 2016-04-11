// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Check if Order is Closed

#include "OrderSelect.mqh"

bool OrderIsClosed( void ) {
    if ( !OrderTicket() )
        return false;
    if ( OrderCloseTime() > 0 )
        return true;
    return false;
}

bool OrderIsClosed( int ticket ) {
    if ( !OrderSelect( ticket ) )
        return false;
    return OrderIsClosed();
}
