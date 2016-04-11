// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Test if the OrderType Match the being Compared Trade Direction.
// Default using Macro Match

#include "../array/ArrayContains.mqh"
#include "../trade/ENUM_TRADE_DIR.mqh"
#include "../trade/TradeDirMacroMatch.mqh"

bool OrderTypeMatchDir( int ticket, ENUM_TRADE_DIR dir ) {
    if ( !OrderSelect( ticket, SELECT_BY_TICKET ) )
        return false;
    
    return OrderTypeMatchDir( dir );
}

bool OrderTypeMatchDir( ENUM_TRADE_DIR dir ) {
    if ( OrderTicket() <= 0 )
        return false;
    // Equal Value or In Same Group
    ENUM_TRADE_DIR cmd = (ENUM_TRADE_DIR)OrderType();
    
    return TradeDirMacroMatch( cmd, dir );
}
