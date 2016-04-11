// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Trade Direction, Compatible with OrderType().
// TRADE_LONG = OP_BUY | OP_BUYLIMIT | OP_BUYSTOP

#ifndef CUSTOM_ENUM_TRADE_DIR

enum ENUM_TRADE_DIR {
    // EMPTY = -1
    TRADE_BUY = 0,       // Buy
    TRADE_SELL = 1,      // Sell
    TRADE_BUYLIMIT = 2,  // Buy Limit
    TRADE_SELLLIMIT = 3, // Sell Limit
    TRADE_BUYSTOP = 4,   // Buy Stop
    TRADE_SELLSTOP = 5,  // Sell Stop
    TRADE_LONG = 6,      // Long
    TRADE_SHORT = 7,     // Short
    TRADE_MARKET = 8,    // Market
    TRADE_PEND = 9,      // Pend
};

const ENUM_TRADE_DIR Trade_Long[] = { TRADE_BUY, TRADE_BUYLIMIT, TRADE_BUYSTOP, TRADE_LONG };
const ENUM_TRADE_DIR Trade_Short[] = { TRADE_SELL, TRADE_SELLLIMIT, TRADE_SELLSTOP, TRADE_SHORT };
const ENUM_TRADE_DIR Trade_Market[] = { TRADE_BUY, TRADE_SELL };
const ENUM_TRADE_DIR Trade_Pend[] = { TRADE_BUYLIMIT, TRADE_BUYSTOP, TRADE_SELLLIMIT, TRADE_SELLSTOP };

#endif
