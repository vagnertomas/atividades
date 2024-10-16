#include <stdio.h>

int main(){

    int A = 0, B = 0, C = 0, D = 0;

    while(1){

    scanf("%d %d", &A, &B);

    if(A <= 0 || B <= 0)
          break;
    else{

       D = 0;

    if(A < B){

    for(C = A; C <= B; C++){
    printf("%d ",C);
       D += C;
    }
    printf("Sum=%d\n",D);
    }
    else if(A > B){
    for(C = B; C <= A; C++){
    printf("%d ",C);
       D += C;
    }
    printf("Sum=%d\n",D);
        }
      }
    }
return 0;
}
