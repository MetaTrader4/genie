// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Get Normalized lots

double MarketLotsNormalized( string symbol, double lots ) {
    double lot_step = MarketInfo( OrderSymbol(), MODE_LOTSTEP );
    return MathRound( lots / lot_step ) * lot_step;
}

double MarketLotsNormalized( double lots ) {
    return MarketLotsNormalized( _Symbol, lots );
}
