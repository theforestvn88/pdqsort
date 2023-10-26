#include "rice/rice.hpp"
#include <rice/stl.hpp>
#include "pdqsort.h"

using namespace Rice;

std::vector<int> sort(std::vector<int> v) {
    pdqsort(v.begin(), v.end(), std::less<int>());
    return v;
}

extern "C"

void Init_pdqsort() {
    Module m = define_module("Pdqsort");
    m.define_module_function("sort", &sort);
}
