// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Get Tick Size Value

double MarketTickSize( string symbol ) {
    return MarketInfo( symbol, MODE_TICKSIZE );
}

double MarketTickSize( void ) {
    return MarketTickSize( _Symbol );
}
