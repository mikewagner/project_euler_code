#!/usr/bin/env ruby

# 1_002_001

x = 1
y = 2
corners = []

while x <= 1_002_001
  4.times do
    corners << x if x <= 1_002_001 
    x += y
  end
  y += 2
end

puts corners.inject(0, &:+)


