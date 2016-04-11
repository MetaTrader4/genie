// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Get Reversed Trade Dir Group for Order

#include "../trade/TradeDirGroupReverse.mqh"

#include "OrderSelect.mqh"
#include "OrderTradeDirGroup.mqh"

ENUM_TRADE_DIR OrderTradeDirGroupReverse( void ) {
    if ( !OrderTicket() )
        return EMPTY;
    return TradeDirGroupReverse( OrderTradeDirGroup() );
}

ENUM_TRADE_DIR OrderTradeDirGroupReverse( int ticket ) {
    if ( !OrderSelect( ticket ) )
        return EMPTY;
    return OrderTradeDirGroupReverse();
}
