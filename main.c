#include <stdio.h>
#include <stdlib.h>

int main(void){
    int a;
    int b;
    printf("Enter first number: ");
    scanf("%d", &a);
    printf("Enter second number: ");
    scanf("%d", &b);
    if(a>b){
        printf("%d is greater.\n", a);
    }
    else if(a==b){
          printf("%d is equal to %d.\n", a, b);
    }
    else{
        printf("%d is greater.\n", b);
    }
    return 0;
}
