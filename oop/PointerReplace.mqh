// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Make the object pointer point to new object.
// @todo Is this legit?

#include "PointerDelete.mqh"

// Delete old and replace the pointer storage
// '&' passed by reference is required here
template<typename T>
void PointerReplace(T* &obj, T* obj_new) {
  if ( obj != obj_new ) {
    PointerDelete( obj );
    obj = obj_new;
  }
}
