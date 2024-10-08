#include <stdio.h>

int main() {

    int V[10];
    int pares = 0;

    for(int i = 0; i < 10; i++) {
        scanf("%d", &V[i]);
    }
    for (int i = 0; i < 10; i++)

        if (V[i] % 2 == 0) {
            pares++;
        }

    printf("%d numeros pares\n", pares);


return 0;
}
