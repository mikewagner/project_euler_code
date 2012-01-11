#!/usr/bin/env ruby

require 'prime'

result = []
(1..1000000).each do |i|
  
  if Prime.prime_division(i).count == 4
    result << i
    break if result.size >= 4
  else
    result = []
  end

end

p result
