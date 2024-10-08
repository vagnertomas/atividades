#include <stdio.h>

int main() {

    int V[10];
    int pares = 0, impares = 0, np = 0;
    int soma1 = 0, soma2 = 0;

    for(int i = 0; i < 10; i++) {
        scanf("%d", &V[i]);
    }
    for (int i = 0; i < 10; i++)

        if (V[i] % 2 == 0) {
            pares++;
        }else {
            impares++;
        }

    printf("pares: %d\n", pares);
    printf("impares: %d\n", impares);

return 0;
}


