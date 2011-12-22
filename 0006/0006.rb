#!/usr/bin/env ruby


x = (1..100).inject(0) { |s,i| s += i ** 2 }
y = (1..100).inject(0) { |s,i| s += i } ** 2
puts y - x
