// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Get Digits number of the Order Price

#include "../market/MarketPriceDigits.mqh"

#include "OrderSelect.mqh"

int OrderPriceDigits( void ) {
    if ( !OrderTicket() )
        return NULL;
    return MarketPriceDigits( OrderSymbol() );
}

int OrderPriceDigits( int ticket ) {
    if ( !OrderSelect( ticket ) )
        return NULL;
    return OrderPriceDigits(); 
}
