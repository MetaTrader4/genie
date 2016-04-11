// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Get Bar Trend

#include "ENUM_TREND.mqh"

//
ENUM_TREND BarTrend( const string symbol, int timeframe, int shift ) {
    double close = iClose( symbol, timeframe, shift );
    double open = iOpen( symbol, timeframe, shift );
    if ( close - open > 0 ) {
        return TREND_BULL;
    } else if ( close - open < 0 ) {
        return TREND_BEAR;
    }
    return TREND_EVEN;
}
