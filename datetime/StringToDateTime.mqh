// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Convert string into datetime, a wrapper for StringToTime().

datetime StringToDateTime( string text ) {
    // Produce: yyyy.mm.dd [hh:mi[:ss]]
    if ( StringLen( text ) < 10 ) {
        text = StringConcatenate( TimeToStr( TimeCurrent(), TIME_DATE ), " ", text );
    }
    
    return StringToTime( text );
}
