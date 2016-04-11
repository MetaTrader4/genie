// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Ask Price

double MarketAsk( string symbol ) {
    return MarketInfo( symbol, MODE_ASK );
}

double MarketAsk( void ) {
    return MarketAsk( _Symbol );
}
