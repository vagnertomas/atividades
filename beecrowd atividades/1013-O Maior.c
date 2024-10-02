#include <stdio.h>
#include<stdlib.h>

int main() {

    int v1 = 0, v2 = 0, v3 = 0;
    int maiorAB,maiorV3;

    scanf ("%d %d %d", &v1, &v2, &v3);

    maiorAB = (v1+v2+abs(v1-v2))/2;
    maiorV3 = (maiorAB+v3+abs(maiorAB-v3))/2;

    printf("%d eh o maior\n", maiorV3);

    return 0;
}
