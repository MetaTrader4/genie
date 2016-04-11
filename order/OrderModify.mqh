// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Overload for OrderModify()
// All require selected order

// 5
bool OrderModify( double open_price, double stoploss, double takeprofit, datetime expiration, color clr_arrow ) {
    if ( !OrderTicket() )
        return false;
    return OrderModify( open_price, stoploss, takeprofit, expiration, clr_arrow );
}

// 3
bool OrderModify( double open_price, datetime expiration, color clr_arrow ) {
    if ( !OrderTicket() )
        return false;
    return OrderModify( open_price, OrderStopLoss(), OrderTakeProfit(), expiration, clr_arrow );
}

// 2
bool OrderModify( double stoploss, double takeprofit ) {
    if ( !OrderTicket() )
        return false;
    return OrderModify( OrderOpenPrice(), stoploss, takeprofit, OrderExpiration(), clrNONE );
}

// 1
bool OrderModify( double open_price ) {
    if ( !OrderTicket() )
        return false;
    return OrderModify( open_price, OrderStopLoss(), OrderTakeProfit(), OrderExpiration(), clrNONE );
}
