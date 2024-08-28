#include <stdio.h>

double soma(double a, double b);
double subtracao(double a, double b);
double multiplicacao(double a, double b);
double divisao(double a, double b);
double potenciacao(double ba, int exp);

int main() {

    int escolha;
    double A = 0, B = 0, R = 0.0;
	int E = 0;

    printf("Escolha uma operacao:\n");
    printf("0. Sair\n");
    printf("1. Soma\n");
    printf("2. Subtracao\n");
    printf("3. Multiplicacao\n");
    printf("4. Divisao\n");
    printf("5. Potenciacao\n");
    printf("6. Raiz Quadrada\n");
    printf("7. Fatorial\n");
    printf("8. MDC\n");
    printf("9. MMC\n");
    printf("10. Equacao de Segundo Grau\n");

    scanf("%d",&escolha);

    if(escolha == 1){
        printf("informe os numeros que deseja somar\n");
        scanf("%lf\n%lf", &A, &B);
        R = soma(A,B);
        printf("o valor da soma e %.5lf",R);
    } else if (escolha == 2) {
        printf("informe os numeros que deseja subtrair\n");
        scanf("%lf\n%lf", &A, &B);
        R = subtracao(A,B);
        printf("o valor da subtracao e %.5lf",R);
    } else if (escolha == 3) {
        printf("informe os numeros que deseja multiplicar\n");
        scanf("%lf\n%lf", &A, &B);
        R = multiplicacao(A,B);
        printf("o valor da multiplicacao e %.5lf",R);
    } else if (escolha == 4) {
        printf("informe os numeros que deseja dvidir\n");
        scanf("%lf\n%lf", &A, &B);
        R = divisao(A,B);
        printf("o valor da divisao e %.5lf",R);
    } else if (escolha == 5) {
        printf("informe a base\n");
        scanf("%lf", &A);
        printf("informe o expoente\n");
        scanf("%d", &E);
        R = potenciacao(A,E);
        printf("o valor da potenciacao e %.5lf",R);
    }

    return 0;
}

double soma(double a, double b){
    double R;
    R = a+b;

    return(R);
}

double subtracao(double a, double b){
    double R;
    R = a-b;

    return(R);
}

double multiplicacao(double a, double b){
    double R;
    R = a*b;

    return(R);
}

double divisao(double a, double b){
    double R;
    R = a/b;

    return(R);
}

double potenciacao(double ba, int exp){
    double N = 1.0;

    for(int i = 0; i < exp; i++)
    {
        N = N*ba;
    }

    return(N);
}
