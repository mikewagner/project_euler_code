#!/usr/bin/env ruby

class Fixnum
  def to_a
    self.to_s.split('')
  end
end

class Array
  def to_int
    self.join.to_i
  end
end


result = 0
1.upto(1000000) do |i|
  result = i if (1..6).map { |x| (x*i).to_a.sort }.uniq.size == 1
  break if result > 0
end

p result
