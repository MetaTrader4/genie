// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Overload for OrderDelete().

// If pass no parameter, try to delete the current selected order
bool OrderDelete( void ) {
    if ( OrderTicket() <= 0 || OrderType() <= 1 ) return false;

    return OrderDelete( OrderTicket(), clrGray );
}
