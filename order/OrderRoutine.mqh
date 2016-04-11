// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Get the trade routine of the order.

#include "ENUM_ORDER_ROUTINE.mqh"
#include "OrderSelect.mqh"

ENUM_ORDER_ROUTINE OrderRoutine( void ) {
    if ( !OrderTicket() )
        return EMPTY;
    
    ENUM_ORDER_ROUTINE routine = EMPTY;
    switch ( OrderType() ) {
        case OP_BUY:
        case OP_SELL:
            routine = ORDER_MARKET;
            break;
        case OP_BUYLIMIT:
        case OP_BUYSTOP:
        case OP_SELLLIMIT:
        case OP_SELLSTOP:
            routine = ORDER_PEND;
            break;
    }
    
    return routine;
}

ENUM_ORDER_ROUTINE OrderRoutine( int ticket ) {
    if ( !OrderSelect( ticket ) )
        return EMPTY;
    return OrderRoutine();
}