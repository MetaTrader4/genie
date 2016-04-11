// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Overload for OrderMagicNumber()

#include "OrderSelect.mqh"

int OrderMagicNumber( int ticket ) {
    if ( !OrderSelect( ticket ) )
        return NULL;
    return OrderMagicNumber();
}
