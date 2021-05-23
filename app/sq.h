#ifndef SQ_H
#define SQ_H

typedef struct _solves {
    double x1;
    double x2;
    int count;
} solves;

solves solve_equation (double a, double b, double c);

#endif // SQ_H
