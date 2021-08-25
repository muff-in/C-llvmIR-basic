set projectName=testllvm

clang %projectName%.c -S   
clang %projectName%.c -Ofast -S -emit-llvm -o %projectName%.ll  

clang %projectName%.ll -o %projectName%.exe 

%projectName%.exe 