#include <stdio.h>

int main() {

    int H = 0, V = 0;
    double L = 0.0, dist = 0.0;

    scanf("%d\n%d", &H, &V);

    dist = H * V;
    L = dist / 12.00;

    printf("%.3lf\n", L);

    return 0;
}
