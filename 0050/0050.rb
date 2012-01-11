#!/usr/bin/env ruby

require 'prime'
require 'set'

primes = Prime.each(1000000).to_a
primes_set = Set.new(primes)

results = []
(0..primes.size-1).each do |i|
  count = 1
  sum = primes[i]

  (i+1..primes.size-1).each do |j|
    sum += primes[j]
    break if sum > 1000000
    count += 1    
  
    results << [count, sum] if primes_set.include?(sum)
  end

end


p results.max_by { |r| r.first }
