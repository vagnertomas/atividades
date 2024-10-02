#include <stdio.h>

int main() {

    int KM = 0;
    double L = 0.0;
    double km_l = 0.0;

    scanf("%d\n%lf", &KM, &L);

    km_l = KM / L;

    printf("%.3lf km/l\n", km_l);

    return 0;
}
