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

end

p (1..1000000).max_by { |i| i.to_f / i.phi }
