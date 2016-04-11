// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Convert Price to Target formatted value

#include "../param/PriceRangeParam.mqh"
#include "../market/MarketPoint.mqh"
#include "../market/MarketTickSize.mqh"
#include "../market/MarketTickValue.mqh"

#include "ENUM_PRICE_RANGE.mqh"

void PriceRangeConvert( PriceRangeParam &range, ENUM_PRICE_RANGE type ) {
    // No conversion needed
    if ( range.Type == type || type == WRONG_VALUE )
        return;
    //
    PriceRangeConvertToPoint( range );
    //
    PriceRangeConvertPoint( range, type );
}

// Convert any type value into 
void PriceRangeConvertToPoint( PriceRangeParam &range ) {
    switch ( range.Type ) {
        case POINT_UNIT:
            range.Value = range.Value * MarketPoint( range.Symbol );
            break;
        case CURRENCY:
            range.Value = range.Value / MarketTickValue( range.Symbol ) * MarketTickSize( range.Symbol );
            break;
        case TICK_UNIT:
            range.Value = range.Value * MarketTickSize( range.Symbol );
            break;
    }
    range.Type = POINT;
}

// @param reference Only needed to convert to PRICE
void PriceRangeConvertPoint( PriceRangeParam &range, ENUM_PRICE_RANGE type ) {
    // No conversion needed
    if ( range.Type == type || type == WRONG_VALUE )
        return;
    //
    switch ( type ) {
        case POINT_UNIT:
            range.Value = range.Value / MarketPoint( range.Symbol );
            break;
        case CURRENCY:
            range.Value = ( range.Value / MarketTickSize( range.Symbol ) ) * MarketTickValue( range.Symbol );
            break;
        case TICK_UNIT:
            range.Value = range.Value / MarketTickSize( range.Symbol );
            break;
    }
    range.Type = type;
}
