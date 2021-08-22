#include <stdio.h>
#include <stdlib.h>
#include "variable.c"


int main(void){


    printf("Enter a number: ");

    scanf("%d", &a);

    if(a%2 == 0){

        printf("%d is even.\n", a);
    }

    else{
        printf("%d is odd.\n", a);

    }
    return 0;

}
