#include <stdio.h>

double multip(int horasTrab, double valorhora);

int main() {

    int numF = 0, horasTrab = 0;
    double valorhora = 0.0, salario = 0.0;

    scanf ("%d\n%d\n%lf", &numF, &horasTrab, &valorhora);

    salario = multip(horasTrab, valorhora);

    printf("NUMBER = %d\nSALARY = U$ %.2lf\n", numF, salario);

    return 0; }

double multip(int horasTrab, double valorhora)

{
     double salario = 0.0;

     salario = horasTrab*valorhora;

     return(salario);
}
