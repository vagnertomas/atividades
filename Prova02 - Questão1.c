#include <stdio.h>

int vetordenado (int *V);
int numerospares (int *V);
int numerosimpares (int *V);
int somadospares (int *V);
int somadosimpares (int *V);
int numerosprimos (int *V);

int main() {

    int V[10];

    printf("Digite 10 numeros: \n");

    for(int i = 0; i < 10; i++){
    scanf("%d", &V[i]);
    }

    printf("\nVetor ordenado: ");
    vetordenado (V);

    printf("\n\nOs numeros pares sao: ");
    numerospares (V);

    printf("\n\nOs numeros impares sao: ");
    numerosimpares (V);

    printf("\n\nA soma dos numeros pares e: ");
    somadospares (V);

    printf("\n\nA soma dos numeros impares e: ");
    somadosimpares (V);

    printf("\n\nOs numeros primos sao: ");
    numerosprimos (V);

return 0;
}

int vetordenado (int *V){

    int aux = 0;

    for (int i = 0; i < 10; i++){
       for (int a = i + 1; a < 10; a++){
          if (V[i] > V[a]){
             aux = V[i];
             V[i] = V[a];
             V[a] = aux;
          }
       }
    }
    for (int i = 0; i < 10; i++){
         printf("%d ", V[i]);}
}

int numerospares (int *V){

    for(int i = 0; i < 10; i++)
      if(V[i] % 2 == 0){
      printf("%d ", V[i]);
    }

}

int numerosimpares (int *V){

    for(int i = 0; i < 10; i++)
      if(V[i] % 2 != 0){
      printf("%d ", V[i]);
    }

}

int somadospares (int *V){

    int soma1 = 0;

    for(int i = 0; i < 10; i++)
      if(V[i] % 2 == 0){
        soma1 += V[i];
    }
      printf("%d ", soma1);
}

int somadosimpares (int *V){

    int soma2 = 0;

    for(int i = 0; i < 10; i++)
      if(V[i] % 2 != 0){
        soma2 += V[i];
    }
      printf("%d ", soma2);
}

int numerosprimos (int *V){

    for (int i = 0; i < 10; i++){

    int b = 0;

    for (int a = 1; a <= V[i]; a++){
        if (V[i] % a == 0){
             b++;
        }
    }

    if (b == 2){
      printf("%d ", V[i]);
    }

   }
}
