#include <stdio.h>
 
int main() {
 
    double PI = 3.14159;
    double raio = 0;
    double area= 0;
    scanf("%lf", &raio);
    area = PI * (raio * raio);
    printf("A=%.4lf\n", area);
 
    return 0; }