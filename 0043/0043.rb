#!/usr/bin/env ruby

def divisible(i)
  d = 2, 3, 5, 7, 11, 13, 17
  (1..7).each do |x|
    num = i.to_s[x,3].to_i
    return false unless num % d[x-1] == 0
  end
  true
end


result = 0
[0, 1, 2, 3, 4, 5, 6, 7, 8, 9].permutation.each do |permute|
  next if permute.first == 0
  result += permute.join.to_i if divisible(permute.join.to_i)
end

p result


