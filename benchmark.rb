require "benchmark"
require_relative "lib/pdqsort"

Benchmark.bm do |b|
    arr1 = (1..1000000).to_a.shuffle
    arr2 = (1..1000000).to_a.shuffle

    b.report("std   sort") do
        arr1.sort
    end 

    b.report("pdq   sort") do
        arr2.pdqsort
    end 
end

#      user    system      total        real
# std  sort  0.174943   0.010331    0.185274 (  0.185274)
# pdq  sort  0.034689   0.009315    0.044004 (  0.044042)
#