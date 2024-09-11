#include <stdio.h>

int soma(int a, int b);

int main() {

    int A = 0, B = 0, R = 0;

    scanf("%d\n%d",&A,&B);

    R = soma(A,B);

    printf("X = %d\n",R);

    return 0; }

int soma(int a, int b)

{
    int resultado = 0;

    resultado = a + b;

    return(resultado);
}
