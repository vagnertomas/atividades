#include <stdio.h>
 
#define PESO_A 2
#define PESO_B 3
#define PESO_C 5

int main() {

    double a = 0.0, b = 0.0, c = 0.0;
    double media = 0.0;
    
    scanf("%lf\n%lf\n%lf",&a,&b,&c);
    media = ((a*PESO_A)+(b*PESO_B)+(c*PESO_C))/(PESO_A+PESO_B+PESO_C);
    printf("MEDIA = %.1lf\n",media);
 
return 0;}