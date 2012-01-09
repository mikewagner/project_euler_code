#!/usr/bin/env ruby

fib = Fiber.new do 
  x, y = 0, 1
  loop do 
    x,y = y,x+y
    Fiber.yield y
  end
end


term = 1
loop do
  num = fib.resume
  term += 1
  break if num.to_s.length == 1000
end


puts term
