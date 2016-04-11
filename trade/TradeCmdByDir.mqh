// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Smart transfer the Dir to correct Order cmd

#include "../market/MarketSpread.mqh"

#include "ENUM_TRADE_DIR.mqh"
#include "TradePriceToClose.mqh"
#include "TradePriceToOpen.mqh"

/// Get Order open cmd from dir.\
int TradeCmdByDir( string symbol, ENUM_TRADE_DIR dir, double open_price ) {
    int cmd = EMPTY;
    double price_to_open = TradePriceToOpen( symbol, dir );
    double spread = MarketSpread( symbol );
    double range = MathAbs( open_price - price_to_open );
    if ( dir == TRADE_LONG ) {
        // Price is near
        if ( range <= spread ) {
            cmd = OP_BUY;
        }
        // Price is far
        else {
            if ( open_price > price_to_open ) {
                cmd = OP_BUYSTOP;
            }
            else {
                cmd = OP_BUYLIMIT;
            }
        }
    }
    else if (dir == TRADE_SHORT) {
        if ( range <= spread ) {
            cmd = OP_SELL;
        }
        else {
            if ( open_price < price_to_open ) {
                cmd = OP_SELLSTOP;
            }
            else {
                cmd = OP_SELLLIMIT;
            }
        }
    }
    
    return cmd;
}

int TradeCmdByDir( ENUM_TRADE_DIR dir, double open_price ) {
    return TradeCmdByDir( _Symbol, dir, open_price );
}
