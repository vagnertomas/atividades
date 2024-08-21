#include <stdio.h>
 
int main() {

    double V = 0.0;
    double R = 0.0;
    double PI = 3.14159;
    
    scanf("%lf\n", &R);
    
    V = ((4/3.0) * PI * (R*R*R));
    
    printf("VOLUME = %.3lf\n", V);
 
return 0;}