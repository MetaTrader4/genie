// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Get Bar Body Range

double BarBodyRange( const string symbol, int timeframe, int shift ) {
    return MathAbs( iClose( symbol, timeframe, shift ) - iOpen( symbol, timeframe, shift ) );
}

double BarBodyRange( int shift ) {
    return BarBodyRange( _Symbol, _Period, shift );
}
