// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// PriceMoveParam struct
// @module-notready

#include "../trade/ENUM_PRICE_RANGE.mqh"
#include "../trade/ENUM_TRADE_DIR.mqh"
#include "../trade/TradeDirGroup.mqh"

struct PriceMoveParam {
    string           Symbol;
    ENUM_TRADE_DIR   Dir;
    ENUM_PRICE_RANGE Type;
    double           Value;
    
    ENUM_TRADE_DIR DirGroup( void ) {
        return TradeDirGroup( Dir );
    }
    
};
