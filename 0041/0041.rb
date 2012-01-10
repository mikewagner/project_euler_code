#!/usr/bin/env ruby

require 'prime'

n = [1, 2, 3, 4, 5, 6, 7, 8, 9]

result = 0
Prime.each(987654321) do |prime|
  s = prime.to_s.split('').uniq.sort.join
  next if s.start_with? '0'
  results = prime if  n[0,prime.to_s.length].join == s
end

p result
