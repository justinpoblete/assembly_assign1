#include <stdio.h>

extern "C" int sum_product();

int main(){

  int return_code = 99;

  printf("%s", "Welcome to Open source Assembly Programming \n");
  return_code = sum_product();
  printf("%s%d%s\n","The main function received this number: ",return_code,".\nMain will now return 0 to the operating system.\nBye");

  return 0;

}
