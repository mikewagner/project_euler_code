#!/usr/bin/env ruby

require 'set'

three_sevenths = Rational(3,7)
fraction       = Rational(1,1000000)

(1..1_000_000).each do |d|
  (1..(d-1)).each do |n|
    new_fraction   = Rational(n,d)
    fraction  = new_fraction if new_fraction > fraction && new_fraction < three_sevenths
  end
end

p fraction
