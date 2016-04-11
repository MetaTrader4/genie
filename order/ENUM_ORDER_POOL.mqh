// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

//

// MODE_TRADES = 0
// MODE_HISTORY = 1

#ifndef CUSTOM_ENUM_ORDER_POOL

enum ENUM_ORDER_POOL {
    // EMPTY = -1
    ORDER_POOL_TRADES,  // Trading
    ORDER_POOL_HISTORY, // History
    ORDER_POOL_ALL,     // Both
};

ENUM_ORDER_POOL Order_Pool_Trades[] = { ORDER_POOL_TRADES, ORDER_POOL_ALL };
ENUM_ORDER_POOL Order_Pool_History[] = { ORDER_POOL_HISTORY, ORDER_POOL_ALL };

#endif
