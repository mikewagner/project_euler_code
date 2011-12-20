#!/usr/bin/env ruby

p = 0

100.upto(999) do |x|
  999.downto(100) do |y|
    n = x * y
    p = n if n.to_s == n.to_s.reverse and n > p
  end
end


puts p
