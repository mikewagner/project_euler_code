#!/usr/bin/env ruby


class Fixnum
  def to_a
    self.to_s.split(//)
  end

  def factorial
    self.downto(1).inject(1, &:*)
  end

end



result = 0
1.upto(100) do |n|
  1.upto(n) do |r|
    result += 1 if (n.factorial / (r.factorial * (n-r).factorial)) > 1_000_000
  end
end

p result

