// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Test if one Price is Offensive to another in Dir Group Context
// @todo Test Performance in the condition check

#include "OrderSelect.mqh"
#include "OrderTradeDirGroup.mqh"

// @param strict If not consider equality
bool OrderPriceIsOffensive( double price, double compare, bool strict = true ) {
    if ( !OrderTicket() )
        return false;
    ENUM_TRADE_DIR dir = OrderTradeDirGroup();
    if ( dir == TRADE_LONG ) {
        if ( ( !strict && price >= compare )
            || price > compare
        ) {
            return true;
        }
    }
    if ( dir == TRADE_SHORT ) {
        if ( ( !strict && price <= compare )
            || price < compare
        ) {
            return true;
        }
    }
    return false;
}

bool OrderPriceIsOffensive( int ticket, double price, double compare, bool strict = true ) {
    if ( !OrderSelect( ticket ) )
        return false;
    return OrderPriceIsOffensive( price, compare, strict );
}
