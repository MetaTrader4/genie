// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Get Point info of the Order Price

#include "../market/MarketPricePoint.mqh"

#include "OrderSelect.mqh"

double OrderPricePoint( void ) {
    if ( !OrderTicket() )
        return NULL;
    return MarketPricePoint( OrderSymbol() );
}

double OrderPricePoint( int ticket ) {
    if ( !OrderSelect( ticket) )
        return NULL;
    return OrderPricePoint(); 
}
