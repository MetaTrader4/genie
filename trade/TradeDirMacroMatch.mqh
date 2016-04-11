// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Test Trade Direction

#include "../array/ArrayContains.mqh"
#include "ENUM_TRADE_DIR.mqh"
#include "TradeDirGroup.mqh"


bool TradeDirMacroMatch( ENUM_TRADE_DIR dir, ENUM_TRADE_DIR dir_macro ) {
    if ( dir_macro < TRADE_LONG ) {
        return ( dir_macro == dir );
    }
    else {
        if ( TradeDirGroup( dir ) == dir_macro )
            return true;
    }
    return false;
}

