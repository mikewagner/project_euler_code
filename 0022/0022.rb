#!/usr/bin/env ruby

ALPHA = ('A'..'Z').to_a

names = IO.read('names.txt')
names = names.gsub(/"/, '').split(',')
names = names.sort

s = 0
names.each_with_index do |n,i|
  s += n.split('').inject(0) { |r,l| r += ( ALPHA.index(l) + 1 ); r } * ( i + 1 )
end

puts s
