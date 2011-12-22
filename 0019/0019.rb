#!/usr/bin/env ruby

require 'date'

s = DateTime.new( 1901, 1, 1)
e = DateTime.new( 2000, 12 , 31 )

puts (s..e).each.inject(0) { |r,d| r += 1 if d.day == 1 and d.sunday?; r }
