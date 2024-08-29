#include <stdio.h>

double soma(double a, double b);
double subtracao(double a, double b);
double multiplicacao(double a, double b);
double divisao(double a, double b);
double potenciacao(double ba, int exp);

int flag = 0;

int main() {

    int escolha;
    double A = 0.0, B = 0.0, R = 0.0;
	int E = 0;

    do {
    printf("Escolha uma das operacoes abaixo:\n");
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
    printf("10. Equacao de Segundo Grau\n\n");

    scanf("%d",&escolha);

    if(escolha == 1){
        printf("sua escolha foi soma\n");
        printf("informe os numeros que deseja somar\n");
        scanf("%lf\n%lf", &A, &B);
        R = soma(A,B);
        printf("o valor da soma e %.5lf\n\n",R);
    } else if (escolha == 2) {
        printf("sua escolha foi subtracao\n");
        printf("informe os numeros que deseja subtrair\n");
        scanf("%lf\n%lf", &A, &B);
        R = subtracao(A,B);
        printf("o valor da subtracao e %.5lf\n\n",R);
    } else if (escolha == 3) {
        printf("sua escolha foi multiplicacao\n");
        printf("informe os numeros que deseja multiplicar\n");
        scanf("%lf\n%lf", &A, &B);
        R = multiplicacao(A,B);
        printf("o valor da multiplicacao e %.5lf\n\n",R);
    } else if (escolha == 4) {
        printf("sua escolha foi divisao\n");
        printf("informe os numeros que deseja dvidir\n");
        scanf("%lf\n%lf", &A, &B);
        R = divisao(A,B);
          if(flag == 1)
          {
            printf("o valor da divisao e %.5lf\n\n",R);
          }
          else
          {

          printf("Nao e possivel dividir um numero por zero\n\n");
          }
    } else if (escolha == 5) {
        printf("sua escolha foi potenciacao\n");
        printf("informe a base\n");
        scanf("%lf", &A);
        printf("informe o expoente\n");
        scanf("%d", &E);
        R = potenciacao(A,E);
        printf("o valor da potenciacao e %.5lf\n\n",R);
    }

    } while(escolha != 0);

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

    if (b != 0)
    {
        R = a/b;
        flag = 1;
        return(R);
    }
    else
    {
        flag = 0;
        return(0);
    }

}

double potenciacao(double ba, int exp){
    double N = 1.0;

    for(int i = 0; i < exp; i++)
    {
        N = N*ba;
    }

    return(N);
}
