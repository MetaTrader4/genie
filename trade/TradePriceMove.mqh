// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Get Directional Trade Price

#include "../param/PriceRangeParam.mqh"

#include "TradeDirGroup.mqh"
#include "PriceRangeConvert.mqh"

double TradePriceMove( double price, ENUM_TRADE_DIR dir, double point ) {
    ENUM_TRADE_DIR dir_group = TradeDirGroup( dir );
    double ret = price;
    if ( dir_group == TRADE_LONG ) {
        ret = price + point;
    }
    else if ( dir_group == TRADE_SHORT ) {
        ret = price - point;
    }
    
    return ret;
}

double TradePriceMove( double price, ENUM_TRADE_DIR dir, PriceRangeParam &range ) {
    PriceRangeParam range2 = range;
    PriceRangeConvertToPoint( range2 );
    return TradePriceMove( price, dir, range2.Value );
}

// double TradePriceMove( double price, PriceMoveParam &move )
