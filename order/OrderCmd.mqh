// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Alias for OrderType()

#include "OrderType.mqh"

int OrderCmd( void ) {
    return OrderType();
}

int OrderCmd( int ticket ) {
    return OrderType( ticket );
}
