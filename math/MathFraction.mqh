// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Get fractional part of a number.
// Need to normalize in order to avoid garage value, EMPTY_VALUE(2147483647).

double MathFraction( double value, int digits = 10 ) {
    return NormalizeDouble( value - MathFloor( value ), digits );
}
