#include <stdio.h>
 
int main() {
 
    double A = 0.0, B = 0.0, C = 0.0;
    double triangulo = 0.0, circulo = 0.0, trapezio = 0.0, quadrado = 0.0, retangulo = 0.0;
    double PI = 3.14159;
    
    scanf("%lf %lf %lf", &A, &B, &C);
    
    triangulo = 0.5 * A * C;
    circulo = PI * C * C;
    trapezio = 0.5 * (A + B) * C;
    quadrado = B * B;
    retangulo = A * B;
    
    printf("TRIANGULO: %.3lf\n", triangulo);
    printf("CIRCULO: %.3lf\n", circulo);
    printf("TRAPEZIO: %.3lf\n", trapezio);
    printf("QUADRADO: %.3lf\n", quadrado);
    printf("RETANGULO: %.3lf\n", retangulo);
 
return 0;}