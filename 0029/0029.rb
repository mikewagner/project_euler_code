#!/usr/bin/env ruby

c = []
(2..100).each do |a|
  (2..100).each do |b|
    c << a ** b
  end
end

puts c.uniq.count


