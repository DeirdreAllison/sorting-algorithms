require 'spec_helper'
require 'sort'
require 'benchmark'

describe Sorting do
  it 'should return a sorted array' do
    Sorting.new.insertion_sort([3, 7, 23, 1]).must_equal [1, 3, 7, 23]
  end

  it 'is benchmarked' do
    puts 'Best'
    puts Benchmark.measure { Sorting.new.insertion_sort((1..10_000).to_a) }
    puts 'Worst'
    puts Benchmark.measure { Sorting.new.insertion_sort(10_000.downto(1).to_a) }
    puts 'Random'
    puts Benchmark.measure { Sorting.new.insertion_sort((1..10_000).to_a.shuffle) }
  end
end
