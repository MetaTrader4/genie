// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// 

#include "..\trade\ENUM_TRADE_DIR.mqh"

#include "OrderSelect.mqh"

ENUM_TRADE_DIR OrderTradeDir( void ) {
    if ( !OrderTicket() )
        return EMPTY;
    return (ENUM_TRADE_DIR)OrderType();
}

ENUM_TRADE_DIR OrderTradeDir( int ticket ) {
    if ( !OrderSelect( ticket ) )
        return EMPTY;
    return OrderTradeDir();
}
