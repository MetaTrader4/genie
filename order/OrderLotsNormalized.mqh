// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Normalize Lots for Order
// @todo Heavy test

#include "../market/MarketLotsNormalized.mqh"

#include "OrderSelect.mqh"

double OrderLotsNormalized( double lots ) {
    if ( !OrderTicket() )
        return NULL;
    return MarketLotsNormalized( OrderSymbol(), lots );
}

double OrderLotsNormalized( int ticket, double lots ) {
    if ( !OrderSelect( ticket) )
        return NULL;
    return OrderLotsNormalized( lots ); 
}
