#!/usr/bin/env ruby

require 'prime'

class Fixnum
  def to_a
    self.to_s.split('')
  end
end


class Array
  def to_i
    self.join.to_i
  end
end

results = []
Prime.each(9999) do |i|
  group = []
  permutations = i.to_a.permutation.to_a.map { |x| x.to_i }.uniq
  (i..permutations.max).step(3330).each do |x|
    group << x if x.prime? and permutations.include? x
  end
  results << group if group.count == 3
end

p results

