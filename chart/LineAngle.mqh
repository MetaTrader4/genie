// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Two points line form an angle with the horizontal line
// price2, time2 are more near to the current 

double LineAngle( double price1, datetime time1, double price2, datetime time2 ) {
    int x0, y0, x1, y1;
    ChartTimePriceToXY( 0, 0, time2, price2, x0, y0 );
    ChartTimePriceToXY( 0, 0, time1, price1, x1, y1 );
    double a = x0 - x1;
    double b = -1 * ( y0 - y1 );
    double tan_value = b / a;
    double rad = MathArctan( tan_value );
    double degree = NormalizeDouble( rad * 180 / 3.14159, 2 );
    
    return degree;
}
