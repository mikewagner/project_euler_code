#!/usr/bin/env ruby
t    = 1000
sqrt = Math.sqrt(t).abs
1.upto(1000) do |a|
  1.upto(1000) do |b|
    ab = (a**2 + b**2)
    c  = Math.sqrt(ab)
    next unless c**2 == a**2 + b**2
    if a < b and b < c
      if (a + b + c) == 1000
        puts a*b*c
      end
    end
  end
end
