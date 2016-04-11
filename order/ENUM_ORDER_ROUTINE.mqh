// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Order Trade Routine
// @see ENUM_TRADE_DIR

#include "../trade/ENUM_TRADE_DIR.mqh"

#ifndef CUSTOM_ENUM_ORDER_ROUTINE

enum ENUM_ORDER_ROUTINE {
    // EMPTY = -1
    ORDER_MARKET = TRADE_MARKET, // Market Order
    ORDER_PEND   = TRADE_PEND,   // Pend Order
};

#endif
