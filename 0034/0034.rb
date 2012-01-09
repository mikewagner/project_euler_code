#!/usr/bin/env ruby

def sum_of_factorials(num)
  (1..num).inject(1, &:*)
end

results = []
(11..100000).each do |i|
  s = i.to_s.split('').map(&:to_i).inject(0) { |r,d| r += sum_of_factorials(d) }
  results << i if i == s
end

puts results.inject(0, &:+)
