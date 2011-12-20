#!/usr/bin/env ruby

fib = Fiber.new do 
  x, y = 0, 1
  loop do 
    x,y = y,x+y
    Fiber.yield y
  end
end


sum = 0
loop do
  num = fib.resume
  break if num >= 4_000_000
  sum += num if num.even?
end


puts sum
