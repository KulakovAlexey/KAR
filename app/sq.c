#include "sq.h"
#include <math.h>

solves solve_equation (double a, double b, double c)
{
    solves result;
    result.x1 = 0;
    result.x2 = 0;
    result.count = 0;

    double d = b*b - 4*a*c;
    if (d < 0) return result;

    if (d == 0) result.count = 1;
    else result.count = 2;

    result.x1 = (-b - sqrt(d))/(2*a);
    result.x2 = (-b + sqrt(d))/(2*a);

    return result;
}
