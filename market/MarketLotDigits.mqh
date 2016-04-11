// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Market Lot Digits

int MarketLotDigits( string symbol ) {
    double lot_step = MarketInfo( symbol, MODE_LOTSTEP );
    int lot_digits = 0;
    
    for ( int i = 1; i <= 10; i++ ) {
        if ( lot_step * MathPow( 10, i ) >= 1.0 ) {
            lot_digits = i;
            break;
        }
    }

    return lot_digits;
}

int MarketLotDigits( void ) {
    return MarketLotDigits( _Symbol );
}
