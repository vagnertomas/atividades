#include <stdio.h>

double med(double a, double b, double c);

#define PESO_UM 3.5
#define PESO_DOIS 7.5

int main() {

    double a = 0.0, b = 0.0;
    double media = 0.0;
    scanf("%lf\n%lf",&a,&b);

    media = med(a, b, media);
    printf("MEDIA = %.5lf\n",media);

    return 0; }

double med(double a, double b, double c)

{
    double media = 0;

    media = ((a*PESO_UM)+(b*PESO_DOIS))/(PESO_UM+PESO_DOIS);

    return(media);
}
