
#include <stdio.h>

int multip(int a, int b, int c);

int main() {

    int a = 0,b = 0,prod = 0;
    scanf("%d\n%d",&a,&b);
    prod = multip(a, b, prod);
    printf("PROD = %d\n",prod);

    return 0;
}

int multip(int a, int b, int c)

{
    int prod = 0;
    prod = a*b;

    return(prod);
}
