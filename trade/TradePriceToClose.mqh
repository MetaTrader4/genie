// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Trade Price to Close Order

#include "..\market\MarketAsk.mqh"
#include "..\market\MarketBid.mqh"

#include "ENUM_TRADE_DIR.mqh"
#include "TradeDirGroup.mqh"

double TradePriceToClose( string symbol, ENUM_TRADE_DIR dir ) {
    if ( TradeDirGroup( dir ) == TRADE_LONG )
        return MarketBid( symbol );
    if ( TradeDirGroup( dir ) == TRADE_SHORT )
        return MarketAsk( symbol );
    return NULL;
}

// Current symbol shortcut
double TradePriceToClose( ENUM_TRADE_DIR dir ) {
    return TradePriceToClose( _Symbol, dir );
}
