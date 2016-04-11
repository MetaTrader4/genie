// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Order Lot Digits Number

#include "..\market\MarketLotDigits.mqh"

#include "OrderSelect.mqh"

int OrderLotDigits( void ) {
    if ( !OrderTicket() )
        return NULL;
    return MarketLotDigits( OrderSymbol() );
}

int OrderLotDigits( int ticket ) {
    if ( OrderSelect( ticket ) )
        return NULL;
    return OrderLotDigits();
}
