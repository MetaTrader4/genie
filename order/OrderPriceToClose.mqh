// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// The Price for The Order to Close

#include "..\trade\TradePriceToClose.mqh"

#include "OrderTradeDir.mqh"

double OrderPriceToClose( void ) {
    if ( OrderTicket() <= 0 )
        return NULL;
    return TradePriceToClose( OrderSymbol(), OrderTradeDir() );
}

double OrderPriceToClose( int ticket ) {
    if ( !OrderSelect( ticket ) )
        return NULL;
    return OrderPriceToClose();
}
