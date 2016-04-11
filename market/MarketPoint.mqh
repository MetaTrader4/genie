// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Get Point Value

double MarketPoint( string symbol ) {
    return MarketInfo( symbol, MODE_POINT );
}

double MarketPoint( void ) {
    return MarketPoint( _Symbol );
}
