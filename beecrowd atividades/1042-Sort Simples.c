#include <stdio.h>
#include <limits.h>

int main() {

    int V1 = 0, V2 = 0, V3 = 0;
    int maior = INT_MIN;
    int menor = INT_MAX;
    int meio;

    scanf("%d %d %d", &V1, &V2, &V3);

      if(maior < V1){
         maior = V1;
      }

      if(maior < V2){
         maior = V2;
      }

      if(maior < V3){
         maior = V3;
      }

      if(menor > V1){
         menor = V1;
      }

      if(menor > V2){
         menor = V2;
      }

      if(menor > V3){
         menor = V3;
      }

     meio = (V1 + V2 + V3) - (menor + maior);

     printf("%d\n%d\n%d\n\n", menor, meio, maior);
     printf("%d\n%d\n%d\n", V1, V2, V3);

    return 0;
}
