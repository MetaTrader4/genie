// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Overload for OrderType()

#include "OrderSelect.mqh"

// int default value is NULL, but it may conflict with OP_BUY, we don't want that
int OrderType( int ticket ) {
    if ( !OrderSelect( ticket ) )
        return EMPTY;
    return OrderType();
}
