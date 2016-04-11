// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Safely set object pointer to a variable.

template<typename T>
void PointerSet(T* &var, T* object) {
    if ( CheckPointer( object ) || object == NULL ) {
        var = object;
    }
}
