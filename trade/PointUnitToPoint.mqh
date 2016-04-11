// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Convert POINT_UNIT value into POINT value

#include "../market/MarketPoint.mqh"

double PointUnitToPoint( string symbol, double value ) {
    return value * MarketPoint( symbol );
}
