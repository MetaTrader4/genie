// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Get Bar Body Range

double BarBodyRange( const string symbol, int timeframe, int shift, bool absolute = true )  {
    double range = iClose( symbol, timeframe, shift ) - iOpen( symbol, timeframe, shift );
    if ( absolute )
        return MathAbs( range );
    return range;
}

double BarBodyRange( int shift, bool absolute = true ) {
    return BarBodyRange( _Symbol, _Period, shift, absolute );
}
