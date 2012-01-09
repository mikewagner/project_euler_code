#!/usr/bin/env ruby

def divisors(n)
  d = []
  (1..n).each do |i|
    d << i if n % i == 0 and n != i
  end
  d
end

def sum_of_divisors(n)
  divisors(n).inject(0, &:+)
end

abundants = []
(2..28123).each do |i|
  abundants << i if sum_of_divisors(i) > i
end


results = []
abundants.each_with_index do |a,i|
  (i...abundants.length).each do |j|

    x = a + abundants[i]
    results << a
    break if a > 28123

  end
end

p results

