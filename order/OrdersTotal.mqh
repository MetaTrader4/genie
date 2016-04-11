// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Overload for OrdersTotal(), combine the OrdersHistoryTotal() to be single interface

#include "ENUM_ORDER_POOL.mqh"

int OrdersTotal( ENUM_ORDER_POOL pool ) {
    if ( pool == ORDER_POOL_ALL ) {
        return OrdersTotal() + OrdersHistoryTotal();
    }
    else if ( pool == ORDER_POOL_TRADES ) {
        return OrdersTotal();
    } else if ( pool == ORDER_POOL_HISTORY ) {
        return OrdersHistoryTotal();
    }
    
    return NULL;
}
