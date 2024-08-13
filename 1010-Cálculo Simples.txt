#include <stdio.h>
 
int main() {
 
    int codP1 = 0, numP1 = 0, codP2 = 0, numP2 = 0;
    double valUniP1 = 0.0, valUniP2 = 0.0, total = 0.0;
    
    scanf("%d\n%d\n%lf", &codP1, &numP1, &valUniP1);
    scanf("%d\n%d\n%lf", &codP2, &numP2, &valUniP2);
    
    total = (numP1 * valUniP1) + (numP2 * valUniP2);
    
    printf("VALOR A PAGAR: R$ %.2f\n",total);
    
return 0;}