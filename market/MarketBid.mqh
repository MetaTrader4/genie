// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Bid Price

double MarketBid( string symbol ) {
    return MarketInfo( symbol, MODE_BID );
}

double MarketBid( void ) {
    return MarketBid( _Symbol );
}
