// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Maximum lot size

double MarketLotMax( string symbol ) {
    return MarketInfo( symbol, MODE_MAXLOT );
}

double MarketLotMax( void ) {
    return MarketLotMax( _Symbol );
}
