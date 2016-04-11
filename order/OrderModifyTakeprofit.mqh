// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Modify Order Takeprofit

#include "../param/PriceRangeParam.mqh"
#include "../trade/PriceRangeConvert.mqh"
#include "../trade/TradePriceMove.mqh"
#include "../trade/ENUM_TRADE_DIR.mqh"

#include "OrderSelect.mqh"
#include "OrderOpenPrice.mqh"
#include "OrderType.mqh"
#include "OrderTradeDirGroup.mqh"

bool OrderModifyTakeprofit( double takeprofit ) {
    if ( !OrderTicket() )
        return false;
    return OrderModify( OrderTicket(), OrderOpenPrice(), OrderStopLoss(), takeprofit, OrderExpiration(), clrNONE );
}

bool OrderModifyTakeprofit( int ticket, double takeprofit ) {
    if ( !OrderSelect( ticket ) )
        return false;
    return OrderModifyTakeprofit( takeprofit );
}

bool OrderModifyTakeprofit( int ticket, double takeprofit, color clr_arrow ) {
    if ( !OrderSelect( ticket ) )
        return false;
    return OrderModify( OrderTicket(), OrderOpenPrice(), OrderStopLoss(), takeprofit, OrderExpiration(), clr_arrow );
}

// Support PriceRangeParam
bool OrderModifyTakeprofit( int ticket, PriceRangeParam &range, double price = NULL ) {
    if ( !OrderSelect( ticket ) )
        return false;
    if ( price == NULL ) {
        price = OrderOpenPrice();
    }
    double takeprofit = TradePriceMove( price, OrderTradeDirGroup(), range );
    return OrderModifyTakeprofit( takeprofit );
}
