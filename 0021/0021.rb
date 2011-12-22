#!/usr/bin/env ruby

def divisiors(n)
  d = []
  (1..n).each do |i|
    d << i if n % i == 0 and n != i
  end
  d
end

def sum_of_divisors(n)
  divisiors(n).inject(0, &:+)
end

c = []
(1..10000).each do |i|
  x = sum_of_divisors(i)
  c << [i, x] if i == sum_of_divisors(x) and i != x
end

puts c.flatten.uniq.inject(0, &:+)

