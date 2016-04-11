// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Overload for OrderSelect()

bool OrderSelect( int ticket ) {
    return OrderSelect( ticket, SELECT_BY_TICKET );
}
