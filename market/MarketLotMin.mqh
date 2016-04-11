// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Minimum lot size

double MarketLotMin( string symbol ) {
    return MarketInfo( symbol, MODE_MINLOT );
}

double MarketLotMin( void ) {
    return MarketLotMin( _Symbol );
}
