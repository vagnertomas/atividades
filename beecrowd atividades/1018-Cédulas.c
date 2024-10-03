#include <stdio.h>

int main() {

    int N100 = 0, N50 = 0, N20 = 0, N10 = 0;
    int N5 = 0, N2 = 0, N1 = 0, valor = 0;

    scanf("%d", &valor);

    N100 = valor / 100;
    valor -= N100*100;
    N50 = (valor % 100) / 50;
    valor -= N50*50;
    N20 = (valor % 50) / 20;
    valor -= N20*20;
    N10 = (valor % 20) / 10;
    valor -= N10*10;
    N5 = (valor % 10) / 5;
    valor -= N5*5;
    N2 = (valor % 5) / 2;
    valor -= N2*2;
    N1 = (valor % 2) / 1;


    printf("%d nota(s) de R$ 100,00\n", N100);
    printf("%d nota(s) de R$ 50,00\n", N50);
    printf("%d nota(s) de R$ 20,00\n", N20);
    printf("%d nota(s) de R$ 10,00\n", N10);
    printf("%d nota(s) de R$ 5,00\n", N5);
    printf("%d nota(s) de R$ 2,00\n", N2);
    printf("%d nota(s) de R$ 1,00\n", N1);

    return 0;
}
