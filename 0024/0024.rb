#!/usr/bin/env ruby


a = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

count = 0
a.permutation.each do |p|
  count += 1
  if count == 1000000
    puts p.join('')
    break
  end
end
