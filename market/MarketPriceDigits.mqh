// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Market Price Digits

int MarketPriceDigits( string symbol ) {
    return (int)MarketInfo( symbol, MODE_DIGITS );
}

int MarketPriceDigits( void ) {
    return MarketPriceDigits( _Symbol );
}
