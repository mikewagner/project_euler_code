#!/usr/bin/env ruby

result = []
(1..9876).each do |i|
  (1..9876).each do |j|
    s = i * j
    p = (s.to_s + i.to_s + j.to_s).split('').map(&:to_i).sort.join('')
    result << s if p == '123456789'
  end
end

puts result.uniq.inject(0, &:+)

