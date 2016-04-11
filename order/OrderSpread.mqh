// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Get Spread for Order

#include "OrderSelect.mqh"

#include "..\market\MarketSpread.mqh"

int OrderSpread( void ) {
    if ( !OrderTicket() )
        return NULL;
    return MarketSpread( OrderSymbol() );
}

int OrderSpread( int ticket ) {
    if ( !OrderSelect( ticket ) )
        return NULL;
    return OrderSpread();
}
