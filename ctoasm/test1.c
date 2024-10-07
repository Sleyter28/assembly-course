//
// Created by sleyter on 7/10/24.
//
#include <stdio.h>

#define SIZE 10

int main() {

  int value[SIZE];

  extern int array_sum(int*, int);

  printf("sum: %d\n", array_sum(value, SIZE));
  return 0;
}
