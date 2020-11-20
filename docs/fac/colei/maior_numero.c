#include <stdio.h>

int main(int argc, char const *argv[])
{
    int num;
    int qtd = 0;
    int temp = 0;

    printf("Digite qtd\n");
    scanf("%d", &qtd);

    printf("Digite os números\n");
    scanf("%d", &num);
    qtd = qtd - 1;

    while(qtd > 0)
    {
        scanf("%d", &temp);
        if(temp > num)
        {
            num = temp;
        };
        qtd -= 1;
    }
        printf("num = %d\n", num);

    return 0;
}
