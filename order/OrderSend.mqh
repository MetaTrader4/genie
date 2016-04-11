// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Overload for OrderSend().

/* 7/11
int  OrderSend( 
    string   symbol,              // symbol 
    int      cmd,                 // operation 
    double   volume,              // volume 
    double   price,               // price 
    int      slippage,            // slippage 
    double   stoploss,            // stop loss 
    double   takeprofit,          // take profit 
    string   comment=NULL,        // comment 
    int      magic=0,             // magic number 
    datetime expiration=0,        // pending order expiration 
    color    arrow_color=clrNONE  // color 
);
*/

#include "../trade/ENUM_TRADE_DIR.mqh"
#include "../trade/Trade_Color.mqh"
#include "../trade/TradeCmdByDir.mqh"
#include "../market/MarketLotMin.mqh"
#include "../market/MarketSpread.mqh"

// 2
int OrderSend( string symbol, ENUM_TRADE_DIR dir ) {
    return OrderSend( symbol, dir, MarketLotMin( symbol ) );
}

// 3
int OrderSend( string symbol, ENUM_TRADE_DIR dir, double lots) {
    double open_price = TradePriceToOpen( symbol, dir );
    int cmd = TradeCmdByDir( symbol, dir, open_price );
    return OrderSend( symbol, cmd, lots, open_price, MarketSpread( symbol ), 0, 0, NULL, 0, 0, Trade_Color_Open[dir] );
}
