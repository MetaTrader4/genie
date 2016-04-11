// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Overload for OrderComment()

#include "OrderSelect.mqh"

string OrderComment( int ticket ) {
    if ( !OrderSelect( ticket ) )
        return NULL;
    return OrderComment();
}
