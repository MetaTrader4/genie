// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Trade Price to Open Order

#include "ENUM_TRADE_DIR.mqh"
#include "..\market\MarketAsk.mqh"
#include "..\market\MarketBid.mqh"

double TradePriceToOpen( string symbol, ENUM_TRADE_DIR dir ) {
    if ( dir == TRADE_LONG ) return MarketAsk( symbol );
    if ( dir == TRADE_SHORT ) return MarketBid( symbol );
    return NULL;
}

double TradePriceToOpen( ENUM_TRADE_DIR dir ) {
    return TradePriceToOpen( _Symbol, dir );
}
