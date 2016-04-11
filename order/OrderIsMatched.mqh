// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Function to test order selective conditions.

#include "..\trade\ENUM_TRADE_DIR.mqh"
#include "..\string\StringMatch.mqh"

#include "OrderSelect.mqh"
#include "OrderTypeMatchDir.mqh"

bool OrderIsMatched( int ticket, string symbol, ENUM_TRADE_DIR dir, int magic, string comment ) {
    if ( !OrderSelect( ticket ) )
        return false;
    return OrderIsMatched( symbol, dir, magic, comment );
}

// Defaul params mean no check
bool OrderIsMatched( string symbol = NULL, ENUM_TRADE_DIR dir = EMPTY, int magic = EMPTY, string comment = "*" ) {
    if ( OrderTicket() <= 0 )
        return false;
    
    if ( ( symbol != NULL && OrderSymbol() != symbol )
        || ( magic != EMPTY && OrderMagicNumber() != magic )
        || ( dir != EMPTY && !OrderTypeMatchDir( dir ) )
        || !StringMatch( comment, OrderComment() )
    ) {
        return false;
    }
    return true;
}
