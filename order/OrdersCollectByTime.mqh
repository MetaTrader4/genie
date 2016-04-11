// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Collect Orders by Specified Conditions

#include "..\array\ArrayAdd.mqh"
#include "..\array\ArrayContains.mqh"
#include "..\math\MathLinearSection.mqh"

#include "ENUM_ORDER_POOL.mqh"
#include "OrderIsMatched.mqh"

// @param comment It's StringMatch pattern string.
int OrdersCollectByTime( int &tickets[], ENUM_LINEAR_SECTION logic, datetime left, datetime right, bool strict = false,
    string symbol = NULL, ENUM_TRADE_DIR dir = EMPTY,
    int magic = EMPTY, string comment = "*", ENUM_ORDER_POOL pool = ORDER_POOL_ALL
) {
    int i, total;
    ArrayResize( tickets, 0 );
    
    if ( ArrayContains( Order_Pool_Trades, pool ) ) {
        total = OrdersTotal();
        for ( i = total - 1; i >= 0; i-- ) {
            if ( !OrderSelect(i, SELECT_BY_POS, MODE_TRADES)
                || !MathLinearSection( logic, OrderOpenTime(), left, right, strict )
                || !OrderIsMatched( OrderTicket(), symbol, dir, magic, comment )
            ) {
                continue;
            }
            ArrayAdd( tickets, OrderTicket() );
        }
    }
    if ( ArrayContains( Order_Pool_History, pool ) ) {
        total = OrdersHistoryTotal();
        for ( i = total - 1; i >= 0; i-- ) {
            if ( !OrderSelect(i, SELECT_BY_POS, MODE_HISTORY)
                || !MathLinearSection( logic, OrderOpenTime(), left, right, strict )
                || !OrderIsMatched( OrderTicket(), symbol, dir, magic, comment )
            ) {
                continue;
            }
            ArrayAdd( tickets, OrderTicket() );
        }
    }
    
    return ArraySize( tickets );
}
