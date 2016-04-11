// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Validate New Stoploss Settings

#include "OrderSelect.mqh"
#include "OrderPriceIsDefensive.mqh"
#include "OrderPriceToClose.mqh"

//
bool OrderStoplossValidated( double stoploss ) {
    if ( !OrderTicket() )
        return false;
    
    return OrderPriceIsDefensive( stoploss, OrderPriceToClose() );
}

bool OrderStoplossValidated( int ticket, double stoploss ) {
    if ( !OrderSelect( ticket ) )
        return false;
    return OrderStoplossValidated( stoploss );
}
