#include <stdio.h>
    int soma_um(int a, int b);
int main() {

    int A = 0, B = 0, soma = 0;
    scanf("%d\n%d", &A, &B);

    soma = soma_um(A, B);
    printf("SOMA = %d\n", soma);

return 0;}

    int soma_um(int a, int b)

{
    int resultado = 0;
    resultado = a + b;

return(resultado);
}
