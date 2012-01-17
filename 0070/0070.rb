#!/usr/bin/env ruby

require 'prime'

class Integer

  def phi
    result = self
    primes = self.prime_division.map { |a| a.first }
    primes.each do |prime|
      result = result * (1 - (1/prime.to_f))
    end
    result.to_i
  end

  def to_a
    self.to_s.split(//)
  end

end


permutes = []
(1...10_000_000).each do |i|
  permutes << i if i.to_a.sort == i.phi.to_a.sort
end

p permutes.min_by { |p| p.to_f / p.phi }
