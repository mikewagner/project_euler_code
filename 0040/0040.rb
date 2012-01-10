#!/usr/bin/env ruby


s = ''
1.upto(1000000) do |i|
  s << i.to_s
end

result = 1
[1, 10, 100, 1000, 10000, 100000, 1000000].each do |i|
  result *= s[i-1,1].to_i
end

puts result
