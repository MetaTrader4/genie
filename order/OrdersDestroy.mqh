// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Destory Orders which Matching the Specified Conditions

#include "OrderDestroy.mqh"

int OrdersDestroy( const int &tickets[] ) {
    int size = ArraySize( tickets );
    int cnt = 0;
    for ( int i = 0; i < size; i++ ) {
        if ( OrderDestroy( tickets[i] ) )
            cnt++;
    }
    return cnt;
}
