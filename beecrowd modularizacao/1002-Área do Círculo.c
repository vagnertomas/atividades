#include <stdio.h>

double multip(double x, double y, double z);

int main() {

    double PI = 3.14159;
    double raio = 0;
    double area = 0;

    scanf("%lf", &raio);

    area = multip(PI, raio, area);

    printf("A=%.4lf\n", area);

    return 0; }

double multip(double x, double y, double z)

{
    double area = 0.0;

    area = x * (y * y);

     return(area);
}
