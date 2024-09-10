#include <stdio.h>

int dif(int a, int b, int c, int d, int e);

int main() {

    int a = 0, b = 0, c = 0, d = 0,diferenca = 0;
    scanf("%d\n%d\n%d\n%d",&a,&b,&c,&d);
    diferenca = dif(a, b, c, d, diferenca);
    printf("DIFERENCA = %d\n",diferenca);

    return 0;
}

int dif(int a, int b, int c, int d, int e)

{
    int diferenca = 0;
    diferenca = ((a*b)-(c*d));

    return(diferenca);
}
