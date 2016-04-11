// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Normalize Pirce for Order

#include "../market/MarketPriceNormalized.mqh"

#include "OrderSelect.mqh"

double OrderPriceNormalized( double price ) {
    if ( !OrderTicket() )
        return NULL;
    return MarketPriceNormalized( OrderSymbol(), price );
}

double OrderPriceNormalized( int ticket, double price ) {
    if ( !OrderSelect( ticket ) )
        return NULL;
    return OrderPriceNormalized( price ); 
}
