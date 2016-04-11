// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// The Price for The Order to Open

#include "../trade/TradePriceToOpen.mqh"

#include "OrderTradeDir.mqh"

double OrderPriceToOpen( void ) {
    if ( OrderTicket() <= 0 )
        return NULL;
    return TradePriceToOpen( OrderSymbol(), OrderTradeDir() );
}

double OrderPriceToOpen( int ticket ) {
    if ( !OrderSelect( ticket ) )
        return NULL;
    return OrderPriceToOpen();
}
