#include "yarcsv.h"

VALUE rb_mYarcsv;

void
Init_yarcsv(void)
{
  rb_mYarcsv = rb_define_module("Yarcsv");
}
