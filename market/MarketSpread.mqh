// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Market Spread

int MarketSpread( string symbol ) {
    return (int)MarketInfo( symbol, MODE_SPREAD );
}

int MarketSpread( void ) {
    return MarketSpread( _Symbol );
}
