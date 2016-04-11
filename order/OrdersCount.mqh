// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Count Amount of Orders by Specified Conditions

#include "OrdersCollect.mqh"

// @param comment It's StringMatch pattern string.
int OrdersCount( string symbol = NULL, ENUM_TRADE_DIR dir = EMPTY,
    int magic = EMPTY, string comment = "*", ENUM_ORDER_POOL pool = ORDER_POOL_TRADES
) {
    int tickets[];
    
    return OrdersCollect( tickets, symbol, dir, magic, comment, pool );
}
