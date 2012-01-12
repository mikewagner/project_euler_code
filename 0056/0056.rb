#!/usr/bin/env ruby

class Array
  def sum
    self.reduce(&:+)
  end
end

class Integer
  def sum_of_digits
    self.to_s.split(//).map(&:to_i).sum
  end
end


result = 0
1.upto(100) do |a|
  1.upto(100) do |b|
    sum = (a ** b).sum_of_digits
    result = sum if sum > result
  end
end

p result
