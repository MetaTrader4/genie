// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Overload for iBarShift().

int iBarShift( datetime time, bool exact = false ) {
    return iBarShift( _Symbol, _Period, time, exact );
}
