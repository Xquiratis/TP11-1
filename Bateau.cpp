#include "Bateau.hpp"

int factorielle(int a) {
  if (a == 0) {
    return 1;
  }
  else {
    return a*factorielle(a-1);
  }
}


