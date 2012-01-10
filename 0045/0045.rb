#!/usr/bin/env ruby


triangles = Fiber.new do  
  x, y = 1, 1
  loop do  
    x = ((y.to_f / 2) * ( y + 1 )).to_i
    Fiber.yield x
    y += 1
  end 
end

pentagonals = Fiber.new do  
  x, y = 1, 1
  loop do  
    x = (y * ( 3 * y - 1 ) / 2)
    Fiber.yield x
    y += 1
  end 
end

hexagonals = Fiber.new do  
  x, y = 1, 1
  loop do  
    x = (y * ( 2 * y - 1 ))
    Fiber.yield x
    y += 1
  end 
end

t, p, h = [], [], []
100000.times do
  t << triangles.resume
  p << pentagonals.resume
  h << hexagonals.resume
end

p t & p & h
