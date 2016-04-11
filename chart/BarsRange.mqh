// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Get Bars Range

double BarsRange( const string symbol, int timeframe, int shift, int count ) {
    return iHigh( symbol, timeframe, iHighest( symbol, timeframe, MODE_HIGH, count, shift ) ) - iLow( symbol, timeframe, iLowest( symbol, timeframe, MODE_LOW, count, shift ) );
    
}

double BarsRange( int shift, int count ) {
    return BarsRange( _Symbol, _Period, shift, count );
}
