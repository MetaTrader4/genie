// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Reverse the Trade Direction

#include "ENUM_TRADE_DIR.mqh"
#include "TradeDirGroup.mqh"

ENUM_TRADE_DIR TradeDirGroupReverse( ENUM_TRADE_DIR dir ) {
    ENUM_TRADE_DIR dir_group = TradeDirGroup( dir );
    if ( dir_group < TRADE_LONG )
        return EMPTY;
    return ( dir_group == TRADE_LONG ) ? TRADE_SHORT : TRADE_LONG;
}
