// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Common abbreviation of OrderMagicNumber().

#include "OrderMagicNumber.mqh"

int OrderMagic( int ticket ) {
    return OrderMagicNumber( ticket );
}

int OrderMagic( void ) {
    return OrderMagicNumber();
}
