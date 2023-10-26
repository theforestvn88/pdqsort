#include "pdqsort.h"

VALUE rb_mPdqsort;

RUBY_FUNC_EXPORTED void
Init_pdqsort(void)
{
  rb_mPdqsort = rb_define_module("Pdqsort");
}
