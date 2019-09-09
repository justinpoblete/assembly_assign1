#include <stdio.h>

extern "C" double hello_world();

int main(){

  double return_code = 99.99;

  printf("%s", "Welcome to Open source Assembly Programming \n");
  return_code = hello_world();
  printf("%s%1.18lf%s\n","The main function received this number: ",return_code,".\nMain will now return 0 to the operating system.\nBye");

  return 0;

}
