#!/usr/bin/env ruby

require 'prime'

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


p divisors(72)
p sum_of_divisors(72)
p 72.prime_division
exit


a = []
(12..28123).each do |i|
  a << i if sum_of_divisors(i) > i
end


