// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Overload for OrderClose().

#include "OrderPriceToClose.mqh"
#include "OrderSelect.mqh"
#include "OrderTradeDir.mqh"
#include "OrderSpread.mqh"

bool OrderClose( void ) {
    if ( !OrderTicket() )
        return false;
    return OrderClose( OrderTicket(), OrderLots(), OrderPriceToClose(), OrderSpread(), clrWhite );
}

// 4/5
bool OrderClose( double lots, double close_price, int slippage, color clr_arrow ) {
    if ( !OrderTicket() )
        return false;
    return OrderClose( OrderTicket(), lots, close_price, slippage, clr_arrow );
}

// 3, 2
bool OrderClose( double lots, int slippage, color clr_arrow = clrWhite ) {
    if ( !OrderTicket() )
        return false;
    return OrderClose( OrderTicket(), lots, OrderPriceToClose(), slippage, clr_arrow );
}

// 1
bool OrderClose( int ticket ) {
    if ( !OrderSelect( ticket ) )
        return false;
    return OrderClose();
}

