#!/usr/bin/env ruby


c = []
(2..9_999_999).each do |i|
  sum = i.to_s.split('').map(&:to_i).inject(0) { |r,d| r += d ** 5 }
  c << i if i == sum
end

puts c.inject(0, &:+)



