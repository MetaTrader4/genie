// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Close or Delete the Current Selected Order

#include "OrderClose.mqh"
#include "OrderDelete.mqh"

bool OrderDestroy( void ) {
    if ( !OrderTicket() )
        return false;
    
    if ( OrderType() > 1 ) {
        return OrderDelete();
    }
    else {
        if ( OrderCloseTime() == NULL )
            return OrderClose();
    }
    return false;
}

bool OrderDestroy( int ticket ) {
    if ( !OrderSelect( ticket ) )
        return false;
    return OrderDestroy();
}
