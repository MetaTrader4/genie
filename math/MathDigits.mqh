// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Digits number after decimal point.
// @issue Garbage at the end.

#include "MathFraction.mqh"

int MathDigits( double value, int digits = 10 ) {
    double fraction = MathFraction( value, digits );
    if ( fraction == 0 )
        return 0;
        
    int i;
    for ( i = 0; i < EMPTY_VALUE; i++ ) {
        fraction *= 10;
        if ( fraction == 0 )
            break;
        else
            fraction = MathFraction( fraction, digits );
    }
    
    return i;
}