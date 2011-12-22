require 'prime'

n = 1
n += 1 while (n * (n + 1) / 2).prime_division.inject(1) { |r, d| r *= (d.last + 1) } <= 500
puts n * (n + 1) / 2
