#!/usr/bin/env ruby

# Integer is the parent object for Fixnum & Bignum
class Integer

  def palindrome?
    self.to_s == self.to_s.reverse
  end

  def reverse
    self.to_s.reverse.to_i
  end

end


count = 0
1.upto(10000) do |i|
  j = i
  count += 1 unless 50.times.collect {  j + j.reverse; j = j + j.reverse }.any? { |d| d.palindrome? }
end

p count
