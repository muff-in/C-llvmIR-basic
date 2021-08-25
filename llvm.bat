set projectName=testllvm

clang %projectName%.c -S   Rem for asm file

clang %projectName%.c -Ofast -S -emit-llvm -o %projectName%.ll  Rem for ll file

clang %projectName%.ll -o %projectName%.exe Rem for exe

%projectName%.exe Rem ./xyz.exe