// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Get Normalized Price

#include "MarketPricePoint.mqh"

double MarketPriceNormalized( string symbol, double price ) {
    double point = MarketPricePoint( symbol );
    return MathRound( price / point ) * point;
}

double MarketPriceNormalized( double price ) {
    return MarketPriceNormalized( _Symbol, price );
}
