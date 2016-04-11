// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Validate New Takeprofit Settings

#include "OrderSelect.mqh"
#include "OrderPriceIsOffensive.mqh"
#include "OrderPriceToClose.mqh"

//
bool OrderTakeprofitValidated( double takeprofit ) {
    if ( !OrderTicket() )
        return false;
    
    return OrderPriceIsOffensive( takeprofit, OrderPriceToClose() );
}

bool OrderTakeprofitValidated( int ticket, double takeprofit ) {
    if ( !OrderSelect( ticket ) )
        return false;
    return OrderTakeprofitValidated( takeprofit );
}
