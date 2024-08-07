#include <stdio.h>
 
int main() {
 
    char nome[20];
    
    double salario = 0.0, vendas = 0.0, comissao = 0.15, final_do_mes = 0.0;
    
    scanf("%s\n", nome);
    scanf("%lf\n%lf", &salario, &vendas);
    
    final_do_mes = salario+(comissao*vendas);
    
    printf("TOTAL = R$ %.2lf\n", final_do_mes);

return 0;}