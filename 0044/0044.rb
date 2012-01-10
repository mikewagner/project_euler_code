#!/usr/bin/env ruby

fib = Fiber.new do 
  x, y = 1, 1
  loop do 
    x =  (y * ( 3 * y - 1)) / 2
    Fiber.yield x
    y += 1
  end
end

pentagonals = []
2500.times do 
  pentagonals << fib.resume
end

n = pentagonals.dup
found = false
while not found
  i = n.shift
  n.each do |j|
    p [i, j] if (pentagonals.include? (i + j)) and (pentagonals.include? (j - i))
  end
  found = true if n.empty?
end

