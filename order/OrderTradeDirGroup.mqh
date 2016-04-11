// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Get Trade Dir Group for Order

#include "../trade/TradeDirGroup.mqh"

#include "OrderSelect.mqh"
#include "OrderTradeDir.mqh"

ENUM_TRADE_DIR OrderTradeDirGroup( void ) {
    if ( !OrderTicket() )
        return EMPTY;
    return TradeDirGroup( OrderTradeDir() );
}

ENUM_TRADE_DIR OrderTradeDirGroup( int ticket ) {
    if ( !OrderSelect( ticket ) )
        return EMPTY;
    return OrderTradeDirGroup();
}
