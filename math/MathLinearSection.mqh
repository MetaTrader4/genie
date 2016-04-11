// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Check if the value fulfill the linear section condition

#include "ENUM_LINEAR_SECTION.mqh"

// @param strict If consider boundary value
template<typename T>
bool MathLinearSection( ENUM_LINEAR_SECTION logic, T value, T left, T right, bool strict = false ) {
    if ( logic <= 0 ) return false;
    
    switch ( logic ) {
        case SECTION_LEFT:
            if ( ( !strict && value <= left )
                || value < left )
                return true;
            break;
        case SECTION_LEFT_OF_RIGHT:
            if ( ( !strict && value <= right )
                || value < right )
                return true;
            break;
        case SECTION_RIGHT:
            if ( ( !strict && value >= right )
                || value > right )
                return true;
            break;
        case SECTION_RIGHT_OF_LEFT:
            if ( ( !strict && value >= left )
                || value > left )
                return true;
        case SECTION_INNER:
            if ( ( !strict && value >= left && value <= right )
                || ( strict && value > left && value < right )
            )
                return true; 
            break;
        case SECTION_OUTER:
            if ( ( !strict && ( value <= left || value >= right ) )
                || ( strict && ( value < left || value > right ) )
            )
                return true;
            break;
    }
    return false;
}
