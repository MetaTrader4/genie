// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Count Amount of Orders by Specified Conditions

#include "OrdersCollectByTime.mqh"

// @param comment It's StringMatch pattern string.
int OrdersCountByTime( ENUM_LINEAR_SECTION logic, datetime left, datetime right, bool strict = false,
    string symbol = NULL, ENUM_TRADE_DIR dir = EMPTY,
    int magic = EMPTY, string comment = "*", ENUM_ORDER_POOL pool = ORDER_POOL_ALL
) {
    int tickets[];
    
    return OrdersCollectByTime( tickets, logic, left, right, strict, symbol, dir, magic, comment, pool );
}
