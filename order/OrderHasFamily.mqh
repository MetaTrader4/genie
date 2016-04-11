// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// If the Order is derived from other order

#include "OrderSelect.mqh"

bool OrderHasFamily(void) {
    if ( !OrderTicket() )
        return false;
    
    string comment = OrderComment();
    if ( StringFind( comment, "from #" ) != -1
        || StringFind( comment, "to #" ) != -1
    ) {
        return true;
    }
    return false; 
}

bool OrderHasFamily( int ticket ) {
    if ( !OrderSelect( ticket ) )
        return false;
    return OrderHasFamily();
}
