// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Overload for OrderSwap()

#include "OrderSelect.mqh"

double OrderSwap( int ticket ) {
    if ( !OrderSelect( ticket ) )
        return NULL;
    return OrderSwap();
}
