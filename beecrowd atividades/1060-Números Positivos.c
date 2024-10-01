#include <stdio.h>

int main(){

   double V [6];
   int P = 0;

   for(int i = 0; i < 6; i++){
   scanf("%lf\n", &V[i]);

     if(V[i] > 0){
      P++;
    }
  }

    printf("%d valores positivos\n", P);

    return 0;
}
