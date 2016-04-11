// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Trade Direction from
// @todo Any Issue?

#include "ENUM_TRADE_DIR.mqh"
#include "../array/ArrayContains.mqh"

ENUM_TRADE_DIR TradeDirGroup( ENUM_TRADE_DIR dir ) {
    if ( ArrayContains( Trade_Long, dir ) ) {
        return TRADE_LONG;
    }
    else if ( ArrayContains( Trade_Short, dir ) ) {
        return TRADE_SHORT;
    }
    return dir;
}
