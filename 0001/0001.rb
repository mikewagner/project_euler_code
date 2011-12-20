#!/usr/bin/env ruby

sum = 0
1.upto(999) do |i|
  next unless (i % 3 == 0) or (i % 5 == 0)
  sum += i
end

puts sum


