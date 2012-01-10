#!/usr/bin/env ruby

ALPHA = ('A'..'Z').to_a

words = IO.read('words.txt')
words = words.gsub(/"/, '').split(',')
words = words.sort

triangles = Fiber.new do  
  x, y = 1, 1
  loop do  
    x = ((y.to_f / 2) * ( y + 1 )).to_i
    Fiber.yield x
    y += 1
  end 
end

t = []
100.times { t << triangles.resume }


def sum_of_letters(word)
  word.upcase.split('').inject(0) { |r,l| r += ALPHA.index(l) + 1 }
end

count = 0
words.each do |word|
  count += 1 if t.include? sum_of_letters(word)
end

puts count

