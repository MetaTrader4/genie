// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Check if symbol exist

bool MarketSymbolExists( string symbol ) {
    ResetLastError();
    if ( MarketInfo( symbol, MODE_BID ) == NULL
        && GetLastError() == ERR_UNKNOWN_SYMBOL )
        return false;
    return true;
}
