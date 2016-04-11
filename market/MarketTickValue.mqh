// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Get Tick Size Currency Value

double MarketTickValue( string symbol ) {
    return MarketInfo( symbol, MODE_TICKVALUE );
}

double MarketTickValue( void ) {
    return MarketTickValue( _Symbol );
}
