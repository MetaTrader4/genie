// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Trade Price Type
// @module-deprecated Use Price_Range Model

#ifndef CUSTOM_ENUM_TRADE_PRICE

enum ENUM_TRADE_PRICE {
    // WRONG_VALUE, EMPTY = -1
    PRICE,      // Price Value
    POINT,      // Point Value
    POINT_UNIT, // Point Unit
    CURRENCY,   // Account Currency Value
    // @todo TICK tick_size at sometimes is differ from point
};

ENUM_TRADE_PRICE Trade_Price_range[] = { POINT, POINT_UNIT, CURRENCY };

#endif
