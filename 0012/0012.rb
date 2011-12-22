#!/usr/bin/env ruby

require 'prime'


t = Fiber.new do
  x = 1
  loop do
    Fiber.yield (x * (x + 1) / 2)
    x += 1
  end
end

while x = t.resume  
  if x.prime_division.inject(1) { |r,p| r *= (p.last + 1) } >= 500
    puts x
    break
  end
end



