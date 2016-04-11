// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// PriceRangeParam struct

#include "../trade/ENUM_PRICE_RANGE.mqh"

struct PriceRangeParam {
    string           Symbol;
    ENUM_PRICE_RANGE Type;
    double           Value;
    
    PriceRangeParam( void ) {}
    
    PriceRangeParam( string symbol, ENUM_PRICE_RANGE type, double value ) :
        Symbol( symbol ), Type( type ), Value( value ) {}
    
    PriceRangeParam( PriceRangeParam &param ) :
        Symbol( param.Symbol ), Type( param.Type ), Value( param.Value ) {}
};
