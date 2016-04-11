// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Modify Order Stoploss

#include "../param/PriceRangeParam.mqh"
#include "../trade/PriceRangeConvert.mqh"
#include "../trade/TradePriceMove.mqh"
#include "../trade/ENUM_TRADE_DIR.mqh"

#include "OrderSelect.mqh"
#include "OrderOpenPrice.mqh"
#include "OrderType.mqh"
#include "OrderTradeDirGroupReverse.mqh"

bool OrderModifyStoploss( double stoploss ) {
    if ( !OrderTicket() )
        return false;
    return OrderModify( OrderTicket(), OrderOpenPrice(), stoploss, OrderTakeProfit(), OrderExpiration(), clrNONE );
}

bool OrderModifyStoploss( int ticket, double stoploss ) {
    if ( !OrderSelect( ticket ) )
        return false;
    return OrderModifyStoploss( stoploss );
}

bool OrderModifyStoploss( int ticket, double stoploss, color clr_arrow ) {
    if ( !OrderSelect( ticket ) )
        return false;
    return OrderModify( OrderTicket(), OrderOpenPrice(), stoploss, OrderTakeProfit(), OrderExpiration(), clr_arrow );
}

// Support PriceRangeParam
bool OrderModifyStoploss( int ticket, PriceRangeParam &range, double price = NULL ) {
    if ( !OrderSelect( ticket ) )
        return false;
    if ( price == NULL ) {
        price = OrderOpenPrice();
    }
    // Treat as reversed directional value
    double stoploss = TradePriceMove( price, OrderTradeDirGroupReverse(), range );
    return OrderModifyStoploss( stoploss );
}
