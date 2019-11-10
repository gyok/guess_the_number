#include "rsnd.h"
#include <stdlib.h>
#include <ctime>

Rsnd::Rsnd(QObject* ip_parent) : QObject(ip_parent) {}

int Rsnd::dhaw(const int i_range)
{
  srand(time(nullptr));
  return rand() % i_range + 1;
}
