// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Check if two Pointers are equal

template<typename T>
bool PointerEquals( T* &p1, T* &p2 ) {
    if ( !CheckPointer( p1 ) || !CheckPointer( p2 ) )
        return false;
    if ( p1 == p2 )
        return true;
    return false;
}
