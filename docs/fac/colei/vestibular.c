#include <stdio.h>

int main(void)
{
    int qtd_letras = 0;
    int soma = 0;
    scanf("%d", &qtd_letras);

    char palavra1[qtd_letras];
    char palavra2[qtd_letras];

    scanf("%s", &palavra1);
    scanf("%s", &palavra2);

    for(int i = 0; i < qtd_letras; i++)
    {
        if(palavra1[i] == palavra2[i])
        {
            soma += 1;
        }
    }

    printf("%d", soma);
    printf("\n");

    return 0;
}