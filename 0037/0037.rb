#!/usr/bin/env ruby

require 'prime'

def truncatable_to_primes?(num)
  s = num.to_s
  (1..s.length-1).each do |i|
    return false unless s[0,i].to_i.prime?
    return false unless s[i,s.length].to_i.prime?
  end
  true
end



results = []
Prime.each(1000000).each do |p|
  next if [2,3,5,7].include? p
  results << p if truncatable_to_primes?(p)
end

p results.inject(0, &:+)

