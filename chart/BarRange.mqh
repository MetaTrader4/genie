// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Get Bar Range

double BarRange( const string symbol, int timeframe, int shift ) {
    return iHigh( symbol, timeframe, shift ) - iLow( symbol, timeframe, shift );
}

double BarRange( int shift ) {
    return BarRange( _Symbol, _Period, shift );
}
