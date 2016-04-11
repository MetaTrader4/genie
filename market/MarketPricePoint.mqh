// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Get Point info of the Market Price

double MarketPricePoint( string symbol ) {
    return MarketInfo( symbol, MODE_POINT );
}

double MarketPricePoint( void ) {
    return MarketPricePoint( _Symbol );
}
