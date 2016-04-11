// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Get in Point format Order Profit

#include "OrderSelect.mqh"
#include "OrderPriceToClose.mqh"
#include "OrderPriceNormalized.mqh"

double OrderProfitInPoint( void ) {
    if ( !OrderTicket() )
        return NULL;
    
    double profit = NULL;
    if ( OrderProfit() == 0.0 )
        return 0.0;
        
    switch ( OrderType() ) {
        case OP_BUY:
            profit = OrderPriceNormalized( OrderPriceToClose() - OrderOpenPrice() );
            break;
        case OP_SELL:
            profit = OrderPriceNormalized( OrderOpenPrice() - OrderPriceToClose() );
            break;
    }

    return profit;
}

double OrderProfitInPoint( int ticket ) {
    if ( !OrderSelect( ticket ) )
        return NULL;
    return OrderProfitInPoint();
}
